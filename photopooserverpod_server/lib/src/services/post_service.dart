import 'package:serverpod/serverpod.dart';
import '../generated/post.dart';
import '../repositories/post_repository.dart';
import '../models/requests/create_post_request.dart';
import '../models/requests/update_post_request.dart';
import '../exceptions/post_exceptions.dart';
import '../services/validation_service.dart';
import '../services/notification_service.dart';

/// Service layer for Post business logic
/// 
/// Follows Single Responsibility Principle (SRP) - handles only post business logic
/// Follows Dependency Inversion Principle (DIP) - depends on abstractions, not concretions
class PostService {
  final PostRepository _postRepository;
  final ValidationService _validationService;
  final NotificationService _notificationService;

  const PostService(
    this._postRepository,
    this._validationService,
    this._notificationService,
  );

  /// Creates a new post with validation and notifications
  /// 
  /// Follows SOLID principles:
  /// - SRP: Only handles post creation logic
  /// - OCP: Can be extended with new validation rules without modification
  /// - DIP: Depends on abstractions (interfaces)
  Future<Post> createPost(Session session, CreatePostRequest request) async {
    // Input validation (delegated to validation service)
    await _validationService.validatePostContent(request.message);
    await _validationService.validatePrivacySetting(request.privacy);

    // Business logic: Create post entity
    final post = Post(
      userId: request.userId,
      message: request.message.trim(),
      time: DateTime.now(),
      privacy: request.privacy,
    );

    // Data persistence (delegated to repository)
    final createdPost = await _postRepository.create(session, post);

    // Side effects (delegated to notification service)
    await _notificationService.notifyNewPost(session, createdPost);

    return createdPost;
  }

  /// Updates an existing post
  /// 
  /// Demonstrates proper error handling and business rule enforcement
  Future<Post> updatePost(Session session, UpdatePostRequest request) async {
    // Validate input
    await _validationService.validatePostContent(request.message);
    
    // Check if post exists (business rule)
    final existingPost = await _postRepository.findById(session, request.postId);
    if (existingPost == null) {
      throw PostNotFoundException(request.postId);
    }

    // Business rule: Only post owner can update
    if (existingPost.userId != request.userId) {
      throw PostPermissionDeniedException(request.postId, request.userId);
    }

    // Create updated post (immutable approach)
    final updatedPost = existingPost.copyWith(
      message: request.message.trim(),
      // Keep original timestamp, don't update 'time' field
    );

    // Persist changes
    final result = await _postRepository.update(session, updatedPost);
    
    // Notify about update
    await _notificationService.notifyPostUpdated(session, result);

    return result;
  }

  /// Gets posts by user with privacy filtering
  /// 
  /// Demonstrates business logic for privacy rules
  Future<List<Post>> getPostsByUser(
    Session session,
    int userId, {
    int? requestingUserId,
  }) async {
    final posts = await _postRepository.findByUser(session, userId);
    
    // Apply privacy filtering based on requesting user
    return _filterPostsByPrivacy(posts, userId, requestingUserId);
  }

  /// Gets all public posts with pagination
  /// 
  /// Follows KISS principle - simple, clear implementation
  Future<List<Post>> getPublicPosts(
    Session session, {
    int limit = 50,
    int offset = 0,
  }) async {
    return await _postRepository.findPublicPosts(session, limit: limit, offset: offset);
  }

  /// Deletes a post with proper authorization
  Future<void> deletePost(Session session, int postId, int requestingUserId) async {
    final post = await _postRepository.findById(session, postId);
    if (post == null) {
      throw PostNotFoundException(postId);
    }

    // Business rule: Only post owner can delete
    if (post.userId != requestingUserId) {
      throw PostPermissionDeniedException(postId, requestingUserId);
    }

    await _postRepository.delete(session, postId);
    await _notificationService.notifyPostDeleted(session, post);
  }

  /// Private helper method for privacy filtering
  /// 
  /// Follows DRY principle - single place for privacy logic
  List<Post> _filterPostsByPrivacy(
    List<Post> posts,
    int profileUserId,
    int? requestingUserId,
  ) {
    return posts.where((post) {
      switch (post.privacy) {
        case PrivacyEnum.EVERYONE:
          return true;
        case PrivacyEnum.FRIENDS:
          // Only show to friends (simplified - would need friendship check)
          return requestingUserId != null && 
                 (requestingUserId == profileUserId || _areFriends(profileUserId, requestingUserId));
        case PrivacyEnum.FRIENDS_OF_FRIENDS:
          // More complex logic for friends of friends
          return requestingUserId != null && 
                 (requestingUserId == profileUserId || _areFriendsOfFriends(profileUserId, requestingUserId));
      }
    }).toList();
  }

  // Placeholder methods - would be implemented with actual friendship logic
  bool _areFriends(int userId1, int userId2) {
    // This would check friendship table
    return false; // Simplified for example
  }

  bool _areFriendsOfFriends(int userId1, int userId2) {
    // This would check friendship network
    return false; // Simplified for example
  }
}