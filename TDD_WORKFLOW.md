# Test-Driven Development (TDD) Workflow

This document explains how to implement Test-Driven Development methodology in the photopooserverpod Serverpod project.

## TDD Overview

Test-Driven Development follows the **Red-Green-Refactor** cycle:

1. **RED**: Write a failing test that describes the desired functionality
2. **GREEN**: Write the minimal code to make the test pass
3. **REFACTOR**: Improve the code while keeping tests green

## Project Setup for TDD

### Prerequisites
- Docker Desktop running
- Serverpod CLI installed
- Dart SDK installed

### Database Setup
```bash
# Start test databases (PostgreSQL + Redis)
cd photopooserverpod_server
docker compose up postgres_test redis_test --detach

# Verify containers are running
docker compose ps
```

## TDD Cycle Implementation

### Step 1: RED Phase - Write Failing Test

1. **Identify the feature** you want to implement
2. **Create a test file** in the appropriate directory:
   - Unit tests: `test/unit/`
   - Integration tests: `test/integration/`

3. **Write a failing test** that describes the expected behavior:

```dart
// Example: test/integration/posts_endpoint_test.dart
test('when updating an existing post then post content should be modified', () async {
  // Arrange
  final originalPost = PostTestFactory.createSamplePost(
    message: 'Original message content',
  );
  
  await endpoints.posts.createPost(sessionBuilder, originalPost);
  final allPosts = await endpoints.posts.getAllPosts(sessionBuilder);
  final createdPost = allPosts.first;

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
});
```

4. **Run the test** to confirm it fails:
```bash
dart test test/integration/posts_endpoint_test.dart -n "when updating an existing post"
```

Expected result: Test fails because `updatePost` method doesn't exist.

### Step 2: GREEN Phase - Make Test Pass

1. **Implement the minimal code** to make the test pass:

```dart
// lib/src/endpoints/post_endpoint.dart
Future<void> updatePost(Session session, Post post) async {
  // First, check if the post exists
  final existingPost = await Post.db.findById(session, post.id!);
  if (existingPost == null) {
    throw Exception('Post with id ${post.id} not found');
  }
  
  // Update the post
  await Post.db.updateRow(session, post);
}
```

2. **Regenerate Serverpod code** to include the new method:
```bash
serverpod generate
```

3. **Run the test** to confirm it passes:
```bash
dart test test/integration/posts_endpoint_test.dart -n "when updating an existing post"
```

### Step 3: REFACTOR Phase - Improve Code

1. **Review the implementation** for improvements:
   - Add better error handling
   - Add logging
   - Improve documentation
   - Extract reusable logic

2. **Run all tests** to ensure no regressions:
```bash
dart test --tags=integration
```

## TDD Best Practices

### Test Organization

```
test/
├── integration/          # Tests that require database/server
│   ├── posts_endpoint_test.dart
│   ├── users_endpoint_test.dart
│   └── test_tools/       # Generated test helpers
├── unit/                 # Tests for individual functions
│   ├── example_util_test.dart
│   └── post_validation_test.dart
└── test_helpers/         # Test data factories and utilities
    ├── post_test_helpers.dart
    └── user_test_helpers.dart
```

### Test Data Factories

Use test factories for consistent, reusable test data:

```dart
// test/test_helpers/post_test_helpers.dart
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
      message: message ?? 'Sample post message',
      privacy: privacy ?? PrivacyEnum.EVERYONE,
    );
  }

  static List<Post> createMultiplePosts({int count = 3}) {
    return List.generate(count, (index) => createSamplePost(
      id: index + 1,
      message: 'Post message ${index + 1}',
    ));
  }
}
```

### Test Naming Conventions

Use descriptive, behavior-focused test names:

```dart
group('Post validation', () {
  test('when message is empty then should throw validation error', () {
    // Test implementation
  });
  
  test('when message exceeds limit then should truncate content', () {
    // Test implementation
  });
});
```

### Given-When-Then Structure

Structure your tests clearly:

```dart
test('when creating post with valid data then post should be stored', () async {
  // Arrange (Given)
  final testPost = PostTestFactory.createSamplePost(
    message: 'Test message',
  );

  // Act (When)
  await endpoints.posts.createPost(sessionBuilder, testPost);

  // Assert (Then)
  final allPosts = await endpoints.posts.getAllPosts(sessionBuilder);
  expect(allPosts, hasLength(1));
  expect(allPosts.first.message, equals('Test message'));
});
```

## Common TDD Commands

### Running Tests
```bash
# All tests
dart test

# Only unit tests
dart test test/unit/

# Only integration tests
dart test --tags=integration

# Specific test file
dart test test/integration/posts_endpoint_test.dart

# Tests matching a pattern
dart test -n "when updating"

# With detailed stack traces
dart test --chain-stack-traces
```

### Development Flow
```bash
# 1. Start test infrastructure
docker compose up postgres_test redis_test --detach

# 2. Write failing test and run it
dart test test/integration/my_new_feature_test.dart

# 3. Implement feature
# Edit files in lib/src/endpoints/

# 4. Regenerate if needed
serverpod generate

# 5. Run test to see it pass
dart test test/integration/my_new_feature_test.dart

# 6. Run all tests to check for regressions
dart test --tags=integration

# 7. Clean up test infrastructure
docker compose stop
```

## Database Considerations

### Test Database Isolation
- Each integration test runs in its own transaction
- Database is automatically rolled back after each test
- No test pollution between test cases

### Test Data Management
- Use test factories for consistent data creation
- Avoid hardcoded IDs in tests
- Create minimal test data needed for each test

### Migration Handling
- Tests automatically apply migrations
- Database schema must match your models
- Update protocol definitions when changing data structures

## Example: Complete TDD Implementation

See the `updatePost` functionality in `test/integration/posts_endpoint_test.dart` and `lib/src/endpoints/post_endpoint.dart` for a complete example of:

1. **RED**: Writing failing test for non-existent functionality
2. **GREEN**: Implementing minimal code to pass the test
3. **REFACTOR**: Improving error handling and adding edge case tests

This example demonstrates the full TDD cycle in a Serverpod context.