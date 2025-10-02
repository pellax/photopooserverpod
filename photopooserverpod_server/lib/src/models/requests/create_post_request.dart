import '../../generated/privacy_enum.dart';

/// Data Transfer Object for creating a new post
/// 
/// Follows principles:
/// - Immutable by design (final fields)
/// - Clear, descriptive naming
/// - Single responsibility - only holds post creation data
class CreatePostRequest {
  final int userId;
  final String message;
  final PrivacyEnum privacy;

  const CreatePostRequest({
    required this.userId,
    required this.message,
    required this.privacy,
  });

  /// Creates a copy with updated fields
  /// 
  /// Follows immutable design patterns
  CreatePostRequest copyWith({
    int? userId,
    String? message,
    PrivacyEnum? privacy,
  }) {
    return CreatePostRequest(
      userId: userId ?? this.userId,
      message: message ?? this.message,
      privacy: privacy ?? this.privacy,
    );
  }

  /// Factory constructor from JSON
  /// 
  /// Follows Factory pattern for object creation
  factory CreatePostRequest.fromJson(Map<String, dynamic> json) {
    return CreatePostRequest(
      userId: json['userId'] as int,
      message: json['message'] as String,
      privacy: PrivacyEnum.values.firstWhere(
        (e) => e.name == json['privacy'],
        orElse: () => PrivacyEnum.EVERYONE,
      ),
    );
  }

  /// Converts to JSON
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'message': message,
      'privacy': privacy.name,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    
    return other is CreatePostRequest &&
        other.userId == userId &&
        other.message == message &&
        other.privacy == privacy;
  }

  @override
  int get hashCode => Object.hash(userId, message, privacy);

  @override
  String toString() {
    return 'CreatePostRequest(userId: $userId, message: $message, privacy: $privacy)';
  }
}