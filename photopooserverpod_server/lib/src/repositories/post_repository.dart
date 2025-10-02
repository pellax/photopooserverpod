import 'package:serverpod/serverpod.dart';
import '../generated/post.dart';
import '../generated/privacy_enum.dart';

/// Abstract repository interface for Post data access
/// 
/// Follows Interface Segregation Principle (ISP) - contains only necessary methods
/// Follows Dependency Inversion Principle (DIP) - defines abstraction for data access
abstract class PostRepository {
  /// Creates a new post in the database
  Future<Post> create(Session session, Post post);

  /// Updates an existing post
  Future<Post> update(Session session, Post post);

  /// Finds a post by its ID
  Future<Post?> findById(Session session, int id);

  /// Finds all posts by a specific user
  Future<List<Post>> findByUser(Session session, int userId);

  /// Finds public posts with pagination
  Future<List<Post>> findPublicPosts(Session session, {int limit = 50, int offset = 0});

  /// Finds posts by privacy level
  Future<List<Post>> findByPrivacy(Session session, PrivacyEnum privacy);

  /// Deletes a post by ID
  Future<void> delete(Session session, int id);

  /// Gets total count of posts by user
  Future<int> countByUser(Session session, int userId);

  /// Gets posts created within a date range
  Future<List<Post>> findByDateRange(
    Session session,
    DateTime startDate,
    DateTime endDate,
  );
}

/// Database implementation of PostRepository
/// 
/// Follows Single Responsibility Principle (SRP) - only handles database operations
/// Follows Liskov Substitution Principle (LSP) - can be substituted for any PostRepository
class DatabasePostRepository implements PostRepository {
  const DatabasePostRepository();

  @override
  Future<Post> create(Session session, Post post) async {
    try {
      return await Post.db.insertRow(session, post);
    } catch (e) {
      throw DatabaseException('Failed to create post: $e');
    }
  }

  @override
  Future<Post> update(Session session, Post post) async {
    try {
      if (post.id == null) {
        throw ArgumentError('Post ID cannot be null for update operation');
      }
      
      await Post.db.updateRow(session, post);
      return post;
    } catch (e) {
      throw DatabaseException('Failed to update post with ID ${post.id}: $e');
    }
  }

  @override
  Future<Post?> findById(Session session, int id) async {
    try {
      return await Post.db.findById(session, id);
    } catch (e) {
      throw DatabaseException('Failed to find post with ID $id: $e');
    }
  }

  @override
  Future<List<Post>> findByUser(Session session, int userId) async {
    try {
      return await Post.db.find(
        session,
        where: (t) => t.userId.equals(userId),
        orderBy: (t) => t.time,
        orderDescending: true,
      );
    } catch (e) {
      throw DatabaseException('Failed to find posts for user $userId: $e');
    }
  }

  @override
  Future<List<Post>> findPublicPosts(Session session, {int limit = 50, int offset = 0}) async {
    try {
      return await Post.db.find(
        session,
        where: (t) => t.privacy.equals(PrivacyEnum.EVERYONE),
        orderBy: (t) => t.time,
        orderDescending: true,
        limit: limit,
        offset: offset,
      );
    } catch (e) {
      throw DatabaseException('Failed to find public posts: $e');
    }
  }

  @override
  Future<List<Post>> findByPrivacy(Session session, PrivacyEnum privacy) async {
    try {
      return await Post.db.find(
        session,
        where: (t) => t.privacy.equals(privacy),
        orderBy: (t) => t.time,
        orderDescending: true,
      );
    } catch (e) {
      throw DatabaseException('Failed to find posts with privacy $privacy: $e');
    }
  }

  @override
  Future<void> delete(Session session, int id) async {
    try {
      await Post.db.deleteWhere(
        session,
        where: (t) => t.id.equals(id),
      );
    } catch (e) {
      throw DatabaseException('Failed to delete post with ID $id: $e');
    }
  }

  @override
  Future<int> countByUser(Session session, int userId) async {
    try {
      final posts = await Post.db.find(
        session,
        where: (t) => t.userId.equals(userId),
      );
      return posts.length;
    } catch (e) {
      throw DatabaseException('Failed to count posts for user $userId: $e');
    }
  }

  @override
  Future<List<Post>> findByDateRange(
    Session session,
    DateTime startDate,
    DateTime endDate,
  ) async {
    try {
      return await Post.db.find(
        session,
        where: (t) => t.time.between(startDate, endDate),
        orderBy: (t) => t.time,
        orderDescending: true,
      );
    } catch (e) {
      throw DatabaseException('Failed to find posts in date range: $e');
    }
  }
}

/// Cached implementation of PostRepository
/// 
/// Follows Decorator Pattern - adds caching behavior to existing repository
/// Demonstrates Open/Closed Principle (OCP) - extends functionality without modifying base class
class CachedPostRepository implements PostRepository {
  final PostRepository _repository;
  final CacheService _cache;
  final Duration _cacheDuration;

  const CachedPostRepository(
    this._repository,
    this._cache, {
    this.cacheDuration = const Duration(minutes: 15),
  });

  @override
  Future<Post> create(Session session, Post post) async {
    final result = await _repository.create(session, post);
    
    // Invalidate related caches
    await _invalidateUserCache(result.userId);
    await _cache.delete('public_posts');
    
    return result;
  }

  @override
  Future<Post> update(Session session, Post post) async {
    final result = await _repository.update(session, post);
    
    // Update cache and invalidate related caches
    await _cache.set('post_${post.id}', result, duration: _cacheDuration);
    await _invalidateUserCache(result.userId);
    
    return result;
  }

  @override
  Future<Post?> findById(Session session, int id) async {
    final cacheKey = 'post_$id';
    
    // Try to get from cache first
    final cached = await _cache.get<Post>(cacheKey);
    if (cached != null) {
      return cached;
    }
    
    // Get from repository and cache the result
    final post = await _repository.findById(session, id);
    if (post != null) {
      await _cache.set(cacheKey, post, duration: _cacheDuration);
    }
    
    return post;
  }

  @override
  Future<List<Post>> findByUser(Session session, int userId) async {
    final cacheKey = 'posts_user_$userId';
    
    final cached = await _cache.get<List<Post>>(cacheKey);
    if (cached != null) {
      return cached;
    }
    
    final posts = await _repository.findByUser(session, userId);
    await _cache.set(cacheKey, posts, duration: _cacheDuration);
    
    return posts;
  }

  @override
  Future<List<Post>> findPublicPosts(Session session, {int limit = 50, int offset = 0}) async {
    final cacheKey = 'public_posts_${limit}_$offset';
    
    final cached = await _cache.get<List<Post>>(cacheKey);
    if (cached != null) {
      return cached;
    }
    
    final posts = await _repository.findPublicPosts(session, limit: limit, offset: offset);
    await _cache.set(cacheKey, posts, duration: _cacheDuration);
    
    return posts;
  }

  @override
  Future<List<Post>> findByPrivacy(Session session, PrivacyEnum privacy) async {
    // Don't cache privacy-based queries as they might be sensitive
    return await _repository.findByPrivacy(session, privacy);
  }

  @override
  Future<void> delete(Session session, int id) async {
    await _repository.delete(session, id);
    
    // Remove from cache
    await _cache.delete('post_$id');
    
    // Would need to know userId to invalidate user cache
    // In a real implementation, you'd fetch the post first to get userId
  }

  @override
  Future<int> countByUser(Session session, int userId) async {
    final cacheKey = 'post_count_user_$userId';
    
    final cached = await _cache.get<int>(cacheKey);
    if (cached != null) {
      return cached;
    }
    
    final count = await _repository.countByUser(session, userId);
    await _cache.set(cacheKey, count, duration: _cacheDuration);
    
    return count;
  }

  @override
  Future<List<Post>> findByDateRange(
    Session session,
    DateTime startDate,
    DateTime endDate,
  ) async {
    // Don't cache date range queries as they can be very specific
    return await _repository.findByDateRange(session, startDate, endDate);
  }

  /// Helper method to invalidate user-related caches
  Future<void> _invalidateUserCache(int userId) async {
    await _cache.delete('posts_user_$userId');
    await _cache.delete('post_count_user_$userId');
  }
}

/// Custom exception for database operations
class DatabaseException implements Exception {
  final String message;
  
  const DatabaseException(this.message);
  
  @override
  String toString() => 'DatabaseException: $message';
}

/// Abstract cache service interface
/// 
/// Follows Dependency Inversion Principle - allows different cache implementations
abstract class CacheService {
  Future<T?> get<T>(String key);
  Future<void> set<T>(String key, T value, {Duration? duration});
  Future<void> delete(String key);
  Future<void> clear();
}