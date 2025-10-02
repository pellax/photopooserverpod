import 'package:photopooserverpod_server/src/generated/post.dart';
import 'package:photopooserverpod_server/src/generated/user.dart';
import 'package:photopooserverpod_server/src/generated/privacy_enum.dart';
import 'package:photopooserverpod_server/src/generated/dietType_enum.dart';

/// Test data factory for creating Post objects in tests
class PostTestFactory {
  static Post createSamplePost({
    int? id,
    int? userId,
    String? message,
    DateTime? time,
    PrivacyEnum? privacy,
  }) {
    return Post(
      id: id,
      userId: userId ?? 1,
      time: time ?? DateTime.now(),
      message: message ?? 'This is a sample post message for testing.',
      privacy: privacy ?? PrivacyEnum.EVERYONE,
    );
  }

  static List<Post> createMultiplePosts({
    int count = 3,
    int? userId,
  }) {
    return List.generate(
      count,
      (index) => createSamplePost(
        id: index + 1,
        userId: userId ?? 1,
        message: 'Post message ${index + 1}',
        time: DateTime.now().subtract(Duration(hours: index)),
      ),
    );
  }

  static Post createPostWithLongMessage({int? userId}) {
    return createSamplePost(
      userId: userId,
      message: 'This is a very long post message. ' * 50, // Simulate long content
    );
  }

  static Post createPostBySpecificUser(int userId, String message) {
    return createSamplePost(
      userId: userId,
      message: message,
    );
  }
}

/// Test data factory for creating User objects in tests
class UserTestFactory {
  static User createSampleUser({
    int? id,
    String? username,
    String? password,
    String? email,
    String? phone,
    int? age,
    DietTypeEnum? diet,
    int? lookId,
  }) {
    return User(
      id: id,
      username: username ?? 'testuser',
      passwrord: password ?? 'testpassword123',
      email: email ?? 'test@example.com',
      phone: phone ?? '+1234567890',
      age: age ?? 25,
      diet: diet ?? DietTypeEnum.omnivore,
      lookId: lookId ?? 1,
    );
  }

  static List<User> createMultipleUsers({int count = 3}) {
    return List.generate(
      count,
      (index) => createSampleUser(
        id: index + 1,
        username: 'user${index + 1}',
        email: 'user${index + 1}@example.com',
        phone: '+123456789${index + 1}',
        age: 20 + index,
        lookId: index + 1,
      ),
    );
  }
}
