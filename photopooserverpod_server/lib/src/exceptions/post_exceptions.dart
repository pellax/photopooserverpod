/// Base exception for post-related errors
/// 
/// Follows principles:
/// - Inheritance hierarchy for exception types
/// - Immutable design
/// - Clear, descriptive naming
/// - Proper error context
abstract class PostException implements Exception {
  final String message;
  final int? postId;
  final int? userId;

  const PostException(this.message, {this.postId, this.userId});

  @override
  String toString() => 'PostException: $message';
}

/// Thrown when a post is not found
/// 
/// Follows Single Responsibility Principle - specific to "not found" scenarios
class PostNotFoundException extends PostException {
  const PostNotFoundException(int postId)
      : super('Post with ID $postId was not found', postId: postId);

  @override
  String toString() => 'PostNotFoundException: ${super.message}';
}

/// Thrown when user lacks permission to perform an operation on a post
/// 
/// Provides clear context about what was attempted and by whom
class PostPermissionDeniedException extends PostException {
  final String operation;

  const PostPermissionDeniedException(int postId, int userId, [this.operation = 'access'])
      : super('User $userId does not have permission to $operation post $postId',
            postId: postId, userId: userId);

  @override
  String toString() => 'PostPermissionDeniedException: ${super.message}';
}

/// Thrown when post content validation fails
/// 
/// Includes specific validation error details
class PostValidationException extends PostException {
  final String field;
  final dynamic value;
  final String rule;

  const PostValidationException(
    String message,
    this.field,
    this.value,
    this.rule,
  ) : super(message);

  /// Factory constructors for common validation scenarios
  factory PostValidationException.emptyMessage() {
    return const PostValidationException(
      'Post message cannot be empty',
      'message',
      '',
      'required',
    );
  }

  factory PostValidationException.messageTooLong(String message, int maxLength) {
    return PostValidationException(
      'Post message exceeds maximum length of $maxLength characters',
      'message',
      message,
      'max_length',
    );
  }

  factory PostValidationException.invalidPrivacy(String privacy) {
    return PostValidationException(
      'Invalid privacy setting: $privacy',
      'privacy',
      privacy,
      'enum_value',
    );
  }

  factory PostValidationException.invalidUserId(int userId) {
    return PostValidationException(
      'Invalid user ID: $userId',
      'userId',
      userId,
      'positive_integer',
    );
  }

  @override
  String toString() => 'PostValidationException: $message (field: $field, rule: $rule)';
}

/// Thrown when a database operation on a post fails
/// 
/// Wraps underlying database errors with post-specific context
class PostDatabaseException extends PostException {
  final String operation;
  final Exception? cause;

  const PostDatabaseException(
    String message,
    this.operation, {
    this.cause,
    int? postId,
    int? userId,
  }) : super(message, postId: postId, userId: userId);

  /// Factory constructors for common database scenarios
  factory PostDatabaseException.createFailed(Exception cause) {
    return PostDatabaseException(
      'Failed to create post in database',
      'create',
      cause: cause,
    );
  }

  factory PostDatabaseException.updateFailed(int postId, Exception cause) {
    return PostDatabaseException(
      'Failed to update post in database',
      'update',
      cause: cause,
      postId: postId,
    );
  }

  factory PostDatabaseException.deleteFailed(int postId, Exception cause) {
    return PostDatabaseException(
      'Failed to delete post from database',
      'delete',
      cause: cause,
      postId: postId,
    );
  }

  factory PostDatabaseException.queryFailed(String query, Exception cause) {
    return PostDatabaseException(
      'Database query failed: $query',
      'query',
      cause: cause,
    );
  }

  @override
  String toString() {
    final causeMessage = cause != null ? ' (caused by: $cause)' : '';
    return 'PostDatabaseException: $message$causeMessage';
  }
}

/// Thrown when a post operation times out
/// 
/// Useful for operations that have time constraints
class PostTimeoutException extends PostException {
  final Duration timeout;
  final String operation;

  const PostTimeoutException(
    String message,
    this.timeout,
    this.operation, {
    int? postId,
    int? userId,
  }) : super(message, postId: postId, userId: userId);

  factory PostTimeoutException.createTimeout(Duration timeout) {
    return PostTimeoutException(
      'Post creation timed out after ${timeout.inSeconds} seconds',
      timeout,
      'create',
    );
  }

  factory PostTimeoutException.updateTimeout(int postId, Duration timeout) {
    return PostTimeoutException(
      'Post update timed out after ${timeout.inSeconds} seconds',
      timeout,
      'update',
      postId: postId,
    );
  }

  @override
  String toString() => 'PostTimeoutException: $message (timeout: ${timeout.inSeconds}s, operation: $operation)';
}

/// Thrown when rate limiting is exceeded for post operations
/// 
/// Helps prevent spam and abuse
class PostRateLimitException extends PostException {
  final Duration retryAfter;
  final int maxAttempts;
  final int currentAttempts;

  const PostRateLimitException(
    String message,
    this.retryAfter,
    this.maxAttempts,
    this.currentAttempts, {
    int? userId,
  }) : super(message, userId: userId);

  factory PostRateLimitException.tooManyPosts(
    int userId,
    int maxAttempts,
    int currentAttempts,
    Duration retryAfter,
  ) {
    return PostRateLimitException(
      'Too many posts created. Try again after ${retryAfter.inMinutes} minutes.',
      retryAfter,
      maxAttempts,
      currentAttempts,
      userId: userId,
    );
  }

  @override
  String toString() => 'PostRateLimitException: $message (retry after: ${retryAfter.inMinutes} minutes)';
}

/// Utility class for creating consistent error responses
/// 
/// Follows Factory pattern for error creation
class PostErrorFactory {
  /// Creates a standardized error response map
  static Map<String, dynamic> createErrorResponse(PostException exception) {
    return {
      'error': exception.runtimeType.toString(),
      'message': exception.message,
      'timestamp': DateTime.now().toIso8601String(),
      if (exception.postId != null) 'postId': exception.postId,
      if (exception.userId != null) 'userId': exception.userId,
      if (exception is PostValidationException) ...{
        'field': exception.field,
        'rule': exception.rule,
        'value': exception.value,
      },
      if (exception is PostTimeoutException) ...{
        'timeout': exception.timeout.inSeconds,
        'operation': exception.operation,
      },
      if (exception is PostRateLimitException) ...{
        'retryAfter': exception.retryAfter.inSeconds,
        'maxAttempts': exception.maxAttempts,
        'currentAttempts': exception.currentAttempts,
      },
    };
  }

  /// Creates a user-friendly error message
  static String createUserMessage(PostException exception) {
    if (exception is PostNotFoundException) {
      return 'The requested post could not be found.';
    }
    if (exception is PostPermissionDeniedException) {
      return 'You do not have permission to perform this action.';
    }
    if (exception is PostValidationException) {
      return 'Please check your input and try again.';
    }
    if (exception is PostRateLimitException) {
      return 'You are posting too frequently. Please wait a moment and try again.';
    }
    
    return 'An error occurred while processing your request.';
  }
}