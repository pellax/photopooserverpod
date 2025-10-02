import 'package:serverpod/server.dart';
import '../generated/protocol.dart';
import '../services/post_service.dart';
import '../models/requests/create_post_request.dart';
import '../models/requests/update_post_request.dart';
import '../exceptions/post_exceptions.dart';

/// Posts API endpoint following clean architecture principles
/// 
/// Responsibilities:
/// - Handle HTTP requests and responses
/// - Input validation and deserialization
/// - Authentication and authorization
/// - Delegate business logic to service layer
/// - Handle and format errors appropriately
/// 
/// Follows SOLID principles:
/// - SRP: Only handles HTTP concerns
/// - DIP: Depends on PostService abstraction
class PostsEndpoint extends Endpoint {
  final PostService _postService;
  
  /// Constructor with dependency injection
  /// 
  /// In a real implementation, this would be injected by a DI container
  PostsEndpoint(this._postService);

  /// Creates a new post
  /// 
  /// Demonstrates clean architecture:
  /// - Validates input at endpoint level
  /// - Converts HTTP request to domain request object
  /// - Delegates business logic to service layer
  /// - Handles errors appropriately
  Future<Post> createPost(
    Session session,
    Map<String, dynamic> requestData,
  ) async {
    try {
      // Input validation and deserialization
      final createRequest = _validateAndParseCreateRequest(requestData);
      
      // Authentication check (simplified)
      final authenticatedUserId = await _getAuthenticatedUserId(session);
      if (createRequest.userId != authenticatedUserId) {
        throw PostPermissionDeniedException(
          0, // No post ID yet
          createRequest.userId,
          'create',
        );
      }
      
      // Delegate to service layer
      return await _postService.createPost(session, createRequest);
    } on PostException {
      rethrow; // Re-throw domain exceptions
    } catch (e) {
      // Log unexpected errors (in real implementation)
      throw Exception('Failed to create post: $e');
    }
  }

  /// Updates an existing post
  /// 
  /// Demonstrates proper error handling and authorization
  Future<Post> updatePost(
    Session session,
    Map<String, dynamic> requestData,
  ) async {
    try {
      final updateRequest = _validateAndParseUpdateRequest(requestData);
      
      // Authentication check
      final authenticatedUserId = await _getAuthenticatedUserId(session);
      if (updateRequest.userId != authenticatedUserId) {
        throw PostPermissionDeniedException(
          updateRequest.postId,
          updateRequest.userId,
          'update',
        );
      }
      
      return await _postService.updatePost(session, updateRequest);
    } on PostException {
      rethrow;
    } catch (e) {
      throw Exception('Failed to update post: $e');
    }
  }

  /// Gets posts by user with proper privacy filtering
  /// 
  /// Demonstrates business logic delegation
  Future<List<Post>> getPostsByUser(
    Session session,
    int userId,
  ) async {
    try {
      final requestingUserId = await _getAuthenticatedUserIdOptional(session);
      
      return await _postService.getPostsByUser(
        session,
        userId,
        requestingUserId: requestingUserId,
      );
    } catch (e) {
      throw Exception('Failed to get posts for user $userId: $e');
    }
  }

  /// Gets all public posts with pagination
  /// 
  /// Demonstrates KISS principle - simple, clear implementation
  Future<List<Post>> getPublicPosts(
    Session session, {
    int limit = 50,
    int offset = 0,
  }) async {
    try {
      return await _postService.getPublicPosts(
        session,
        limit: limit,
        offset: offset,
      );
    } catch (e) {
      throw Exception('Failed to get public posts: $e');
    }
  }

  /// Deletes a post with proper authorization
  Future<void> deletePost(Session session, int postId) async {
    try {
      final authenticatedUserId = await _getAuthenticatedUserId(session);
      
      await _postService.deletePost(session, postId, authenticatedUserId);
    } on PostException {
      rethrow;
    } catch (e) {
      throw Exception('Failed to delete post $postId: $e');
    }
  }

  /// Legacy method - kept for backward compatibility
  /// 
  /// Note: This violates clean architecture principles
  /// Should be refactored to use the service layer
  @Deprecated('Use getPublicPosts instead')
  Future<List<Post>> getAllPosts(Session session) async {
    return await getPublicPosts(session);
  }

  /// Private helper methods for input validation
  /// 
  /// Follows DRY principle - single place for validation logic
  CreatePostRequest _validateAndParseCreateRequest(
    Map<String, dynamic> data,
  ) {
    // Input validation
    if (!data.containsKey('userId') || data['userId'] is! int) {
      throw PostValidationException.invalidUserId(
        data['userId'] as int? ?? -1,
      );
    }
    
    if (!data.containsKey('message') || data['message'] is! String) {
      throw PostValidationException.emptyMessage();
    }
    
    final message = data['message'] as String;
    if (message.trim().isEmpty) {
      throw PostValidationException.emptyMessage();
    }
    
    if (message.length > 280) {
      throw PostValidationException.messageTooLong(message, 280);
    }
    
    // Parse privacy setting
    final privacyStr = data['privacy'] as String? ?? 'EVERYONE';
    PrivacyEnum privacy;
    try {
      privacy = PrivacyEnum.values.firstWhere(
        (e) => e.name == privacyStr,
      );
    } catch (e) {
      throw PostValidationException.invalidPrivacy(privacyStr);
    }
    
    return CreatePostRequest(
      userId: data['userId'] as int,
      message: message,
      privacy: privacy,
    );
  }

  UpdatePostRequest _validateAndParseUpdateRequest(
    Map<String, dynamic> data,
  ) {
    // Similar validation logic for update requests
    if (!data.containsKey('postId') || data['postId'] is! int) {
      throw PostValidationException(
        'Invalid post ID',
        'postId',
        data['postId'],
        'required_integer',
      );
    }
    
    if (!data.containsKey('userId') || data['userId'] is! int) {
      throw PostValidationException.invalidUserId(
        data['userId'] as int? ?? -1,
      );
    }
    
    if (!data.containsKey('message') || data['message'] is! String) {
      throw PostValidationException.emptyMessage();
    }
    
    final message = data['message'] as String;
    if (message.trim().isEmpty) {
      throw PostValidationException.emptyMessage();
    }
    
    if (message.length > 280) {
      throw PostValidationException.messageTooLong(message, 280);
    }
    
    return UpdatePostRequest(
      postId: data['postId'] as int,
      userId: data['userId'] as int,
      message: message,
    );
  }

  /// Authentication helper methods
  /// 
  /// In a real implementation, these would use proper authentication
  Future<int> _getAuthenticatedUserId(Session session) async {
    // Simplified authentication - would use actual auth in production
    // This is a placeholder that would integrate with Serverpod Auth
    
    // For now, return a mock user ID
    // In real implementation: 
    // final authInfo = await session.auth.authenticatedUser;
    // return authInfo.userId;
    
    return 1; // Mock authenticated user ID
  }

  Future<int?> _getAuthenticatedUserIdOptional(Session session) async {
    try {
      return await _getAuthenticatedUserId(session);
    } catch (e) {
      return null; // User not authenticated
    }
  }
}
