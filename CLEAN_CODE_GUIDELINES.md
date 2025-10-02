# Clean Code & Software Engineering Guidelines

This document outlines clean coding practices, architectural principles, and software engineering guidelines for the photopooserverpod project.

## Core Principles

### SOLID Principles

#### 1. Single Responsibility Principle (SRP)
**"A class should have one, and only one, reason to change."**

❌ **Bad Example:**
```dart
class UserEndpoint extends Endpoint {
  // Violates SRP - handles HTTP, business logic, data validation, and email
  Future<User> createUser(Session session, String email, String password) async {
    // Email validation
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      throw Exception('Invalid email format');
    }
    
    // Password hashing
    final hashedPassword = hashPassword(password);
    
    // Database operations
    final user = User(email: email, passwrord: hashedPassword, ...);
    await User.db.insertRow(session, user);
    
    // Send welcome email
    await EmailService.sendWelcomeEmail(email);
    
    return user;
  }
  
  String hashPassword(String password) { /* ... */ }
}
```

✅ **Good Example:**
```dart
// Each class has a single responsibility
class UserEndpoint extends Endpoint {
  final UserService _userService;
  
  UserEndpoint(this._userService);

  Future<User> createUser(Session session, CreateUserRequest request) async {
    return await _userService.createUser(session, request);
  }
}

class UserService {
  final UserRepository _userRepository;
  final EmailService _emailService;
  final ValidationService _validationService;
  
  UserService(this._userRepository, this._emailService, this._validationService);

  Future<User> createUser(Session session, CreateUserRequest request) async {
    _validationService.validateEmail(request.email);
    _validationService.validatePassword(request.password);
    
    final user = await _userRepository.create(session, request);
    await _emailService.sendWelcomeEmail(user.email);
    
    return user;
  }
}
```

#### 2. Open/Closed Principle (OCP)
**"Software entities should be open for extension, but closed for modification."**

✅ **Good Example:**
```dart
// Abstract base for notification strategies
abstract class NotificationStrategy {
  Future<void> send(String message, String recipient);
}

class EmailNotificationStrategy implements NotificationStrategy {
  @override
  Future<void> send(String message, String recipient) async {
    // Email implementation
  }
}

class SMSNotificationStrategy implements NotificationStrategy {
  @override
  Future<void> send(String message, String recipient) async {
    // SMS implementation
  }
}

class PushNotificationStrategy implements NotificationStrategy {
  @override
  Future<void> send(String message, String recipient) async {
    // Push notification implementation
  }
}

class NotificationService {
  final List<NotificationStrategy> _strategies;
  
  NotificationService(this._strategies);
  
  Future<void> notifyUser(String message, String recipient) async {
    for (final strategy in _strategies) {
      await strategy.send(message, recipient);
    }
  }
}
```

#### 3. Liskov Substitution Principle (LSP)
**"Derived classes must be substitutable for their base classes."**

✅ **Good Example:**
```dart
abstract class PostRepository {
  Future<List<Post>> findByUser(Session session, int userId);
  Future<Post> create(Session session, Post post);
  Future<void> delete(Session session, int postId);
}

class DatabasePostRepository implements PostRepository {
  @override
  Future<List<Post>> findByUser(Session session, int userId) async {
    return await Post.db.find(session, where: (t) => t.userId.equals(userId));
  }
  
  @override
  Future<Post> create(Session session, Post post) async {
    return await Post.db.insertRow(session, post);
  }
  
  @override
  Future<void> delete(Session session, int postId) async {
    await Post.db.deleteWhere(session, where: (t) => t.id.equals(postId));
  }
}

class CachedPostRepository implements PostRepository {
  final PostRepository _repository;
  final CacheService _cache;
  
  CachedPostRepository(this._repository, this._cache);
  
  @override
  Future<List<Post>> findByUser(Session session, int userId) async {
    final cacheKey = 'posts_user_$userId';
    return await _cache.getOrSet(cacheKey, () => _repository.findByUser(session, userId));
  }
  
  // Other methods follow the same contract
}
```

#### 4. Interface Segregation Principle (ISP)
**"Clients should not be forced to depend upon interfaces they do not use."**

❌ **Bad Example:**
```dart
abstract class UserOperations {
  Future<User> create(Session session, User user);
  Future<User> update(Session session, User user);
  Future<void> delete(Session session, int userId);
  Future<List<User>> findAll(Session session);
  Future<void> sendEmail(String email, String subject, String body);
  Future<void> generateReport(Session session);
  Future<void> backupData(Session session);
}
```

✅ **Good Example:**
```dart
abstract class UserRepository {
  Future<User> create(Session session, User user);
  Future<User> update(Session session, User user);
  Future<void> delete(Session session, int userId);
  Future<List<User>> findAll(Session session);
}

abstract class EmailService {
  Future<void> sendEmail(String email, String subject, String body);
}

abstract class ReportService {
  Future<void> generateUserReport(Session session);
}

abstract class BackupService {
  Future<void> backupUsers(Session session);
}
```

#### 5. Dependency Inversion Principle (DIP)
**"Depend on abstractions, not on concretions."**

✅ **Good Example:**
```dart
// High-level module depends on abstractions
class PostService {
  final PostRepository _postRepository;
  final ValidationService _validationService;
  final NotificationService _notificationService;
  
  PostService(this._postRepository, this._validationService, this._notificationService);
  
  Future<Post> createPost(Session session, CreatePostRequest request) async {
    _validationService.validatePostContent(request.message);
    
    final post = Post(
      userId: request.userId,
      message: request.message,
      time: DateTime.now(),
      privacy: request.privacy,
    );
    
    final createdPost = await _postRepository.create(session, post);
    await _notificationService.notifyFollowers(createdPost);
    
    return createdPost;
  }
}
```

### KISS Principle (Keep It Simple, Stupid)

**"Most systems work best if they are kept simple rather than made complicated."**

❌ **Complex Example:**
```dart
class PostProcessor {
  Future<ProcessedPost> processAndTransformWithAdvancedAnalyticsAndCaching(
    Post post,
    Map<String, dynamic> transformationConfig,
    List<String> analyticsMetrics,
    CacheConfiguration cacheConfig,
  ) async {
    // 50+ lines of complex logic
    final processor = ProcessorFactory.createAdvancedProcessor(
      transformationConfig['type'] as String,
    );
    
    final analytics = AnalyticsEngine.withMetrics(analyticsMetrics)
      .configure(transformationConfig['analytics'] as Map<String, dynamic>)
      .enableCaching(cacheConfig);
      
    // More complex logic...
    return ProcessedPost(/* complex result */);
  }
}
```

✅ **Simple Example:**
```dart
class PostProcessor {
  Future<Post> process(Post post) async {
    final cleanedMessage = _cleanMessage(post.message);
    final enrichedPost = _addMetadata(post.copyWith(message: cleanedMessage));
    return enrichedPost;
  }
  
  String _cleanMessage(String message) {
    return message.trim().replaceAll(RegExp(r'\s+'), ' ');
  }
  
  Post _addMetadata(Post post) {
    // Simple metadata addition
    return post; // or return enhanced version
  }
}
```

### DRY Principle (Don't Repeat Yourself)

**"Every piece of knowledge must have a single, unambiguous, authoritative representation within a system."**

❌ **Repetitive Example:**
```dart
class PostEndpoint extends Endpoint {
  Future<List<Post>> getPublicPosts(Session session) async {
    if (!await _isUserAuthenticated(session)) {
      throw Exception('User not authenticated');
    }
    if (!await _hasPermission(session, 'read_posts')) {
      throw Exception('Insufficient permissions');
    }
    return await Post.db.find(session, where: (t) => t.privacy.equals(PrivacyEnum.EVERYONE));
  }
  
  Future<List<Post>> getFriendsPosts(Session session) async {
    if (!await _isUserAuthenticated(session)) {
      throw Exception('User not authenticated');
    }
    if (!await _hasPermission(session, 'read_posts')) {
      throw Exception('Insufficient permissions');
    }
    return await Post.db.find(session, where: (t) => t.privacy.equals(PrivacyEnum.FRIENDS));
  }
}
```

✅ **DRY Example:**
```dart
class PostEndpoint extends Endpoint {
  Future<List<Post>> getPublicPosts(Session session) async {
    await _validateUserAccess(session, 'read_posts');
    return await Post.db.find(session, where: (t) => t.privacy.equals(PrivacyEnum.EVERYONE));
  }
  
  Future<List<Post>> getFriendsPosts(Session session) async {
    await _validateUserAccess(session, 'read_posts');
    return await Post.db.find(session, where: (t) => t.privacy.equals(PrivacyEnum.FRIENDS));
  }
  
  Future<void> _validateUserAccess(Session session, String permission) async {
    if (!await _isUserAuthenticated(session)) {
      throw Exception('User not authenticated');
    }
    if (!await _hasPermission(session, permission)) {
      throw Exception('Insufficient permissions');
    }
  }
}
```

### YAGNI Principle (You Aren't Gonna Need It)

**"Don't implement something until it is actually needed."**

❌ **Over-engineered Example:**
```dart
class PostService {
  // Premature optimization - complex caching system not yet needed
  final Map<String, CacheLayer> _multiLevelCache = {};
  final EventBus _eventBus = EventBus();
  final MetricsCollector _metrics = MetricsCollector();
  
  Future<Post> createPost(Session session, CreatePostRequest request) async {
    // Simple create operation with unnecessary complexity
    _metrics.startTimer('post_creation');
    _eventBus.emit('post_creation_started', request);
    
    final post = Post(/* ... */);
    await _cachePost(post); // Caching before even saving
    
    final result = await Post.db.insertRow(session, post);
    _eventBus.emit('post_created', result);
    _metrics.endTimer('post_creation');
    
    return result;
  }
}
```

✅ **Simple, Needed Example:**
```dart
class PostService {
  Future<Post> createPost(Session session, CreatePostRequest request) async {
    final post = Post(
      userId: request.userId,
      message: request.message,
      time: DateTime.now(),
      privacy: request.privacy,
    );
    
    return await Post.db.insertRow(session, post);
  }
}
```

## Clean Code Practices

### Naming Conventions

#### Variables and Functions
```dart
// ✅ Good: Descriptive and clear
final authenticatedUser = await _getAuthenticatedUser(session);
final postsCreatedLastWeek = await _getRecentPosts(session, 7);

// ❌ Bad: Unclear abbreviations
final au = await _getAU(session);
final p = await _getRcntP(session, 7);
```

#### Classes
```dart
// ✅ Good: Clear purpose and responsibility
class UserAuthenticationService { }
class PostValidationService { }
class EmailNotificationStrategy { }

// ❌ Bad: Vague or overly generic
class Manager { }
class Handler { }
class Processor { }
```

#### Constants
```dart
// ✅ Good: Clear and descriptive
class PostConstants {
  static const int maxMessageLength = 280;
  static const int minPasswordLength = 8;
  static const Duration sessionTimeout = Duration(hours: 24);
}

// ❌ Bad: Unclear or magic numbers in code
const int maxLen = 280; // What length?
// Using 280 directly in code without explanation
```

### Function Design

#### Small Functions
```dart
// ✅ Good: Single responsibility, easy to understand
Future<bool> isValidEmail(String email) async {
  return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
}

Future<User> createUser(Session session, CreateUserRequest request) async {
  await _validateUserRequest(request);
  final hashedPassword = await _hashPassword(request.password);
  return await _saveUser(session, request, hashedPassword);
}

// ❌ Bad: Too many responsibilities
Future<User> createUserWithValidationAndEmailAndLogging(
  Session session, 
  String email, 
  String password,
  String name
) async {
  // 50+ lines of mixed responsibilities
  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
    logger.error('Invalid email: $email');
    throw Exception('Invalid email');
  }
  
  if (password.length < 8) {
    logger.error('Password too short for user: $email');
    throw Exception('Password too short');
  }
  
  final salt = generateSalt();
  final hashedPassword = hashPassword(password, salt);
  
  final user = User(email: email, passwrord: hashedPassword, username: name, /* ... */);
  await User.db.insertRow(session, user);
  
  logger.info('User created: $email');
  await sendWelcomeEmail(email, name);
  
  return user;
}
```

#### Pure Functions (When Possible)
```dart
// ✅ Good: Pure function - same input always produces same output
String formatUserDisplayName(String firstName, String lastName) {
  return '${firstName.trim()} ${lastName.trim()}';
}

List<Post> filterPostsByPrivacy(List<Post> posts, PrivacyEnum privacy) {
  return posts.where((post) => post.privacy == privacy).toList();
}

// ❌ Impure function - depends on external state
class UserFormatter {
  late String _currentUserRole; // External state
  
  String formatUserDisplayName(String firstName, String lastName) {
    // Result depends on _currentUserRole - not pure
    if (_currentUserRole == 'admin') {
      return '[ADMIN] ${firstName.trim()} ${lastName.trim()}';
    }
    return '${firstName.trim()} ${lastName.trim()}';
  }
}
```

### Error Handling

#### Custom Exceptions
```dart
// ✅ Good: Specific, meaningful exceptions
class UserValidationException implements Exception {
  final String message;
  final String field;
  
  const UserValidationException(this.message, this.field);
  
  @override
  String toString() => 'UserValidationException: $message (field: $field)';
}

class PostNotFoundException implements Exception {
  final int postId;
  
  const PostNotFoundException(this.postId);
  
  @override
  String toString() => 'PostNotFoundException: Post with ID $postId not found';
}

// Usage
Future<void> validateUser(CreateUserRequest request) async {
  if (request.email.isEmpty) {
    throw UserValidationException('Email cannot be empty', 'email');
  }
  
  if (request.password.length < 8) {
    throw UserValidationException('Password must be at least 8 characters', 'password');
  }
}
```

#### Result Pattern (Alternative to Exceptions)
```dart
class Result<T> {
  final T? _value;
  final String? _error;
  
  const Result.success(T value) : _value = value, _error = null;
  const Result.failure(String error) : _value = null, _error = error;
  
  bool get isSuccess => _error == null;
  bool get isFailure => _error != null;
  
  T get value {
    if (_error != null) throw StateError('Accessed value on failure result');
    return _value!;
  }
  
  String get error {
    if (_error == null) throw StateError('Accessed error on success result');
    return _error!;
  }
}

// Usage
Future<Result<User>> createUser(Session session, CreateUserRequest request) async {
  try {
    final validationResult = await _validateUserRequest(request);
    if (validationResult.isFailure) {
      return Result.failure(validationResult.error);
    }
    
    final user = await _saveUser(session, request);
    return Result.success(user);
  } catch (e) {
    return Result.failure('Failed to create user: $e');
  }
}
```

## Comments and Documentation

### Good Comments
```dart
/// Calculates the reading time estimate for a post based on average reading speed
/// Uses the standard assumption of 200 words per minute for adult readers
/// 
/// [message] The post content to analyze
/// Returns estimated reading time in minutes, minimum 1 minute
int calculateReadingTime(String message) {
  const wordsPerMinute = 200;
  final wordCount = message.split(RegExp(r'\s+')).length;
  final minutes = (wordCount / wordsPerMinute).ceil();
  return math.max(1, minutes); // Minimum 1 minute
}

/// Regex pattern for validating email addresses according to RFC 5322 standard
/// Note: This is a simplified version - full RFC compliance would be much more complex
static final RegExp _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
```

### Bad Comments
```dart
// ❌ Bad: Obvious comments
int userId = 1; // Set userId to 1
return user; // Return the user

// ❌ Bad: Outdated comments
// TODO: Fix this bug (from 2019)
// This function returns posts (but now returns users)

// ❌ Bad: Commented out code
Future<List<Post>> getPosts() async {
  // final posts = await oldMethod();
  // return posts.where((p) => p.isActive);
  return await Post.db.find(session);
}
```

## Code Organization and Structure

### Layered Architecture
```
lib/
├── src/
│   ├── endpoints/           # API layer
│   │   ├── post_endpoint.dart
│   │   └── user_endpoint.dart
│   ├── services/           # Business logic layer
│   │   ├── post_service.dart
│   │   ├── user_service.dart
│   │   └── notification_service.dart
│   ├── repositories/       # Data access layer
│   │   ├── post_repository.dart
│   │   └── user_repository.dart
│   ├── models/            # Domain models
│   │   ├── domain/
│   │   └── requests/
│   ├── utils/             # Utilities and helpers
│   ├── exceptions/        # Custom exceptions
│   └── generated/         # Generated code
```

### Dependency Injection Setup
```dart
// lib/src/dependency_injection.dart
class ServiceContainer {
  static final _instance = ServiceContainer._internal();
  factory ServiceContainer() => _instance;
  ServiceContainer._internal();
  
  final Map<Type, dynamic> _services = {};
  
  void registerSingleton<T>(T service) {
    _services[T] = service;
  }
  
  void registerFactory<T>(T Function() factory) {
    _services[T] = factory;
  }
  
  T get<T>() {
    final service = _services[T];
    if (service == null) {
      throw Exception('Service of type $T not registered');
    }
    
    if (service is T Function()) {
      return service();
    }
    
    return service as T;
  }
}

// Usage in server.dart
void setupDependencies() {
  final container = ServiceContainer();
  
  // Register repositories
  container.registerSingleton<PostRepository>(DatabasePostRepository());
  container.registerSingleton<UserRepository>(DatabaseUserRepository());
  
  // Register services
  container.registerSingleton<PostService>(
    PostService(container.get<PostRepository>())
  );
  
  // Register endpoints
  container.registerFactory<PostEndpoint>(
    () => PostEndpoint(container.get<PostService>())
  );
}
```

This comprehensive guide ensures your code follows industry best practices while remaining practical and applicable to your Serverpod project.