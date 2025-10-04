import '../exceptions/post_exceptions.dart';
import '../models/requests/create_post_request.dart';
import '../models/requests/update_post_request.dart';

/// Service for validating post data and business rules
class ValidationService {
  const ValidationService();

  /// Validates post content
  Future<void> validatePostContent(String message) async {
    if (message.trim().isEmpty) {
      throw ValidationException('Post message cannot be empty');
    }

    if (message.length > 500) {
      throw ValidationException('Post message cannot exceed 500 characters');
    }
  }

  /// Validates privacy setting
  Future<void> validatePrivacySetting(String privacy) async {
    const validSettings = ['EVERYONE', 'FRIENDS', 'FRIENDS_OF_FRIENDS'];
    if (!validSettings.contains(privacy)) {
      throw ValidationException('Invalid privacy setting: $privacy');
    }
  }

  /// Validates a create post request
  void validateCreateRequest(CreatePostRequest request) {
    if (request.message.trim().isEmpty) {
      throw ValidationException('Post message cannot be empty');
    }

    if (request.message.length > 500) {
      throw ValidationException('Post message cannot exceed 500 characters');
    }
  }

  /// Validates an update post request
  void validateUpdateRequest(UpdatePostRequest request) {
    if (request.message.trim().isEmpty) {
      throw ValidationException('Post message cannot be empty');
    }

    if (request.message.length > 500) {
      throw ValidationException('Post message cannot exceed 500 characters');
    }
  }

  /// Validates if user can access a post
  bool canUserAccessPost(int userId, int postUserId, String privacy) {
    // Simple validation - can be extended with friendship checks
    if (postUserId == userId) return true;
    if (privacy == 'EVERYONE') return true;
    return false; // For now, non-public posts are only accessible to owner
  }
}