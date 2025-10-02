import '../../generated/privacy_enum.dart';

/// Data Transfer Object for updating an existing post
/// 
/// Follows principles:
/// - Immutable by design
/// - Contains only updateable fields
/// - Includes both postId and userId for security validation
class UpdatePostRequest {
  final int postId;
  final int userId; // For authorization - only post owner can update
  final String message;
  final PrivacyEnum? privacy; // Optional - may not want to change privacy

  const UpdatePostRequest({
    required this.postId,
    required this.userId,
    required this.message,
    this.privacy,
  });

  /// Creates a copy with updated fields
  UpdatePostRequest copyWith({
    int? postId,
    int? userId,
    String? message,
    PrivacyEnum? privacy,
  }) {
    return UpdatePostRequest(
      postId: postId ?? this.postId,
      userId: userId ?? this.userId,
      message: message ?? this.message,
      privacy: privacy ?? this.privacy,
    );
  }

  /// Factory constructor from JSON
  factory UpdatePostRequest.fromJson(Map<String, dynamic> json) {
    return UpdatePostRequest(
      postId: json['postId'] as int,
      userId: json['userId'] as int,
      message: json['message'] as String,
      privacy: json['privacy'] != null
          ? PrivacyEnum.values.firstWhere((e) => e.name == json['privacy'])
          : null,
    );
  }

  /// Converts to JSON
  Map<String, dynamic> toJson() {
    return {
      'postId': postId,
      'userId': userId,
      'message': message,
      if (privacy != null) 'privacy': privacy!.name,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UpdatePostRequest &&
        other.postId == postId &&
        other.userId == userId &&
        other.message == message &&
        other.privacy == privacy;
  }

  @override
  int get hashCode => Object.hash(postId, userId, message, privacy);

  @override
  String toString() {
    return 'UpdatePostRequest(postId: $postId, userId: $userId, message: $message, privacy: $privacy)';
  }
}