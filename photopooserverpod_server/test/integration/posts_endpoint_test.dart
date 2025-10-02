import 'package:test/test.dart';
import 'package:photopooserverpod_server/src/generated/post.dart';

// Import the generated test helper file
import 'test_tools/serverpod_test_tools.dart';
import '../test_helpers/post_test_helpers.dart';

void main() {
  withServerpod('Given Posts endpoint', (sessionBuilder, endpoints) {
    group('Creating posts', () {
      test('when creating a valid post then post should be stored successfully',
          () async {
        // Arrange
        final testPost = PostTestFactory.createSamplePost(
          message: 'This post was created using TDD methodology',
        );

        // Act
        await endpoints.posts.createPost(sessionBuilder, testPost);

        // Assert
        final allPosts = await endpoints.posts.getAllPosts(sessionBuilder);
        expect(allPosts, isNotEmpty);
        expect(
          allPosts.any((p) => p.message == 'This post was created using TDD methodology'),
          isTrue,
          reason: 'Created post should be found in all posts',
        );
      });
    });

    group('Retrieving posts', () {
      test('when getting posts by user then only that user posts are returned',
          () async {
        // Arrange
        final user1Post = PostTestFactory.createPostBySpecificUser(1, 'User 1 Post message');
        final user2Post = PostTestFactory.createPostBySpecificUser(2, 'User 2 Post message');
        
        await endpoints.posts.createPost(sessionBuilder, user1Post);
        await endpoints.posts.createPost(sessionBuilder, user2Post);

        // Act
        final user1Posts = await endpoints.posts.getPostsByUser(sessionBuilder, 1);
        
        // Assert
        expect(user1Posts, hasLength(1));
        expect(user1Posts.first.message, equals('User 1 Post message'));
        expect(user1Posts.first.userId, equals(1));
      });
    });

    group('Updating posts - TDD Implementation', () {
      test('when updating an existing post then post content should be modified',
          () async {
        // Arrange - RED PHASE: This test will FAIL initially
        final originalPost = PostTestFactory.createSamplePost(
          message: 'Original message content',
        );
        
        // Create the post first
        await endpoints.posts.createPost(sessionBuilder, originalPost);
        final allPosts = await endpoints.posts.getAllPosts(sessionBuilder);
        final createdPost = allPosts.first;

        // Prepare updated post data
        final updatedPost = Post(
          id: createdPost.id,
          userId: createdPost.userId,
          time: createdPost.time,
          message: 'Updated message content via TDD',
          privacy: createdPost.privacy,
        );

        // Act - This method doesn't exist yet (RED phase)
        await endpoints.posts.updatePost(sessionBuilder, updatedPost);

        // Assert
        final postsAfterUpdate = await endpoints.posts.getAllPosts(sessionBuilder);
        final updatedPostFromDb = postsAfterUpdate.firstWhere(
          (p) => p.id == createdPost.id,
        );

        expect(updatedPostFromDb.message, equals('Updated message content via TDD'));
        expect(updatedPostFromDb.id, equals(createdPost.id));
        expect(updatedPostFromDb.userId, equals(createdPost.userId));
      });

      test('when updating a non-existent post then should throw an error',
          () async {
        // Arrange
        final nonExistentPost = PostTestFactory.createSamplePost(
          id: 999, // This ID shouldn't exist
          message: 'Non-existent post message',
        );

        // Act & Assert - Should throw an exception
        expect(
          () => endpoints.posts.updatePost(sessionBuilder, nonExistentPost),
          throwsA(isA<Exception>()),
          reason: 'Updating non-existent post should throw an exception',
        );
      });
    });

    group('Deleting posts', () {
      test('when deleting an existing post then post should be removed',
          () async {
        // Arrange
        final testPost = PostTestFactory.createSamplePost(
          message: 'This post will be deleted',
        );
        
        await endpoints.posts.createPost(sessionBuilder, testPost);
        final allPostsBefore = await endpoints.posts.getAllPosts(sessionBuilder);
        final createdPost = allPostsBefore.first;

        // Act
        await endpoints.posts.deletePost(sessionBuilder, createdPost);

        // Assert
        final allPostsAfter = await endpoints.posts.getAllPosts(sessionBuilder);
        expect(
          allPostsAfter.any((p) => p.id == createdPost.id),
          isFalse,
          reason: 'Deleted post should not exist in database',
        );
      });
    });
  });
}