# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Project Overview

photopooserverpod is a Serverpod-based application with three main components:
- `photopooserverpod_server/` - Backend server using Serverpod framework
- `photopooserverpod_client/` - Generated client code for communicating with the server
- `photopooserverpod_flutter/` - Flutter frontend application

This project uses Serverpod 2.4.0, which provides type-safe communication between Flutter and Dart backend through generated code.

## Development Setup & Commands

### Database & Infrastructure
```bash
# Start PostgreSQL and Redis for development
cd photopooserverpod_server
docker compose up --build --detach

# Start test database services
docker compose up postgres_test redis_test --detach

# Stop all services when done
docker compose stop
```

### Server Development
```bash
# Start the Serverpod server (development mode)
cd photopooserverpod_server
dart bin/main.dart

# Generate server and client code after modifying endpoints or protocol
serverpod generate

# Run server tests
dart test

# Run only unit tests
dart test test/unit/

# Run only integration tests
dart test test/integration/ --tags=integration

# Install dependencies
dart pub get

# Check for linting issues
dart analyze
```

### Flutter App Development
```bash
# Run the Flutter app (ensure server is running first)
cd photopooserverpod_flutter
flutter run

# Install Flutter dependencies
flutter pub get

# Run Flutter tests
flutter test

# Build for production
flutter build apk    # Android
flutter build ios    # iOS
```

### Client Package
```bash
# The client package is mostly auto-generated
cd photopooserverpod_client
dart pub get
```

## Architecture Overview

### Serverpod Architecture
- **Entry Point**: `photopooserverpod_server/bin/main.dart` calls `run()` from `server.dart`
- **Server Configuration**: `photopooserverpod_server/lib/server.dart` sets up the Serverpod instance with authentication, routing, and endpoints
- **Endpoints**: Located in `photopooserverpod_server/lib/src/endpoints/` - these define the API methods accessible from clients
- **Generated Code**: Protocol and endpoint definitions are auto-generated in `lib/src/generated/`

### Current Endpoints
Based on the protocol.yaml, the server includes endpoints for:
- `posts` - Post creation, deletion, and retrieval operations
- `users` - User management operations  
- `friends` - Friendship management
- `friendshipRequest` - Friend request handling
- `rooms` - Room/chat functionality
- `example` - Demo endpoint for basic server communication

### Client-Server Communication
- The Flutter app connects to the server via the generated client (`photopooserverpod_client`)
- Type-safe communication is provided through Serverpod's code generation
- The client connects to `http://localhost:8080/` by default

### Database Configuration
- **Development**: PostgreSQL on port 8090, Redis on port 8091
- **Testing**: Separate PostgreSQL on port 9090, Redis on port 9091
- Database credentials are specified in `docker-compose.yaml`

## Key Development Notes

### Code Generation
After modifying any `.dart` files in the `lib/src/endpoints/` directory or protocol definitions, you must run:
```bash
serverpod generate
```
This updates both server and client code to reflect API changes.

### Authentication
The server includes Serverpod Auth (`serverpod_auth_server`) which provides built-in authentication capabilities.

### Testing Strategy
- Unit tests in `test/unit/` for testing individual components
- Integration tests in `test/integration/` that test full server functionality
- Use `dart_test.yaml` configuration for test tagging

### Docker Deployment
The server includes a production-ready Dockerfile that:
- Compiles the Dart server to a native executable
- Uses Alpine Linux for minimal image size
- Exposes ports 8080, 8081, 8082
- Supports environment-based configuration

### Development Workflow
1. Start infrastructure: `docker compose up --build --detach`
2. Start server: `dart bin/main.dart` 
3. Run Flutter app: `flutter run`
4. Make changes to endpoints in `lib/src/endpoints/`
5. Run `serverpod generate` to update generated code
6. Test changes and restart server if needed

## Test-Driven Development (TDD)

This project follows TDD methodology using the Red-Green-Refactor cycle.

### TDD Commands

#### Running Tests
```bash
# Run all tests
dart test

# Run only unit tests
dart test test/unit/

# Run only integration tests (requires database)
dart test --tags=integration

# Run specific test by name pattern
dart test -n "test name pattern"

# Run tests with better stack traces for debugging
dart test --chain-stack-traces
```

#### TDD Workflow
```bash
# 1. Start test database services
docker compose up postgres_test redis_test --detach

# 2. Write failing test (RED phase)
# Create test in test/integration/ or test/unit/

# 3. Run test to see it fail
dart test path/to/your_test.dart

# 4. Implement minimal code to make test pass (GREEN phase)
# Add implementation in lib/src/endpoints/ or lib/src/

# 5. Regenerate code if endpoint changes
serverpod generate

# 6. Run test to see it pass
dart test path/to/your_test.dart

# 7. Refactor code while keeping tests green (REFACTOR phase)
# Clean up code, improve structure, add documentation

# 8. Run all tests to ensure no regressions
dart test --tags=integration
```

### TDD Best Practices

#### Test Structure
- **Unit Tests** (`test/unit/`): Test individual functions and utilities
- **Integration Tests** (`test/integration/`): Test endpoints with database interactions
- **Test Helpers** (`test/test_helpers/`): Reusable test data factories and utilities

#### Naming Conventions
- Use descriptive test names: `"when updating an existing post then post content should be modified"`
- Follow Given-When-Then structure in test descriptions
- Group related tests using `group()` blocks

#### Test Data Management
- Use test factories from `test/test_helpers/` to create consistent test data
- Each integration test runs in its own database transaction (automatic rollback)
- Use `PostTestFactory.createSamplePost()` for creating test posts
- Use `UserTestFactory.createSampleUser()` for creating test users

### TDD Example
See `test/integration/posts_endpoint_test.dart` for a complete TDD example implementing the `updatePost` functionality following the Red-Green-Refactor cycle.

## Clean Code & Software Engineering

This project follows industry-standard software engineering practices and design principles.

### Core Principles

#### SOLID Principles
- **Single Responsibility Principle (SRP)**: Each class has one reason to change
- **Open/Closed Principle (OCP)**: Open for extension, closed for modification
- **Liskov Substitution Principle (LSP)**: Derived classes are substitutable for base classes
- **Interface Segregation Principle (ISP)**: Clients depend only on interfaces they use
- **Dependency Inversion Principle (DIP)**: Depend on abstractions, not concretions

#### Additional Principles
- **KISS (Keep It Simple, Stupid)**: Prefer simple solutions over complex ones
- **DRY (Don't Repeat Yourself)**: Single source of truth for every piece of knowledge
- **YAGNI (You Aren't Gonna Need It)**: Don't implement features until needed

### Architecture Overview

#### Layered Architecture
```
lib/src/
├── endpoints/          # API/Presentation Layer
│   └── post_endpoint.dart
├── services/          # Business Logic Layer
│   ├── post_service.dart
│   ├── validation_service.dart
│   └── notification_service.dart
├── repositories/      # Data Access Layer
│   └── post_repository.dart
├── models/           # Data Models
│   ├── requests/
│   └── domain/
├── exceptions/       # Custom Exceptions
│   └── post_exceptions.dart
└── utils/           # Utilities and Helpers
```

#### Separation of Concerns
- **Endpoints**: Handle HTTP requests/responses, input validation, authentication
- **Services**: Contain business logic, orchestrate operations between layers
- **Repositories**: Abstract data access, handle database operations
- **Models**: Define data structures and transfer objects
- **Exceptions**: Provide specific, meaningful error handling

### Design Patterns Implementation

#### Repository Pattern
```bash
# Abstract repository interface
lib/src/repositories/post_repository.dart

# Concrete implementations
- DatabasePostRepository  # Database operations
- CachedPostRepository    # Adds caching layer
```

#### Strategy Pattern
```bash
# Notification strategies
- EmailNotificationStrategy
- SMSNotificationStrategy
- PushNotificationStrategy
```

#### Factory Pattern
```bash
# Exception factory
PostErrorFactory.createErrorResponse()

# Request object factories
CreatePostRequest.fromJson()
```

#### Dependency Injection
```bash
# Service registration and resolution
lib/src/dependency_injection.dart
```

### Code Quality Standards

#### Naming Conventions
- **Classes**: PascalCase, descriptive purpose (`PostService`, `UserRepository`)
- **Functions**: camelCase, verb-noun format (`createPost`, `validateUser`)
- **Variables**: camelCase, descriptive (`authenticatedUser`, `validatedRequest`)
- **Constants**: UPPER_SNAKE_CASE (`MAX_POST_LENGTH`, `DEFAULT_TIMEOUT`)

#### Function Design
- Keep functions small (preferably < 20 lines)
- Single responsibility per function
- Pure functions when possible
- Clear input/output contracts

#### Error Handling
- Custom exception hierarchy for different error types
- Meaningful error messages with context
- Consistent error response format
- Fail-fast principle

### Code Quality Commands

#### Static Analysis
```bash
# Run Dart analyzer
dart analyze

# Format code consistently
dart format .

# Check for potential issues
dart fix --dry-run

# Apply suggested fixes
dart fix --apply
```

#### Code Metrics
```bash
# Check code complexity (if using metrics package)
dart run dart_code_metrics:metrics analyze lib/

# Generate code coverage
dart test --coverage=coverage
genhtml coverage/lcov.info -o coverage/html
```

### Development Guidelines

#### Before Writing Code
1. **Understand Requirements**: What problem are we solving?
2. **Design First**: Think about interfaces and data flow
3. **Write Tests**: TDD - write failing tests first
4. **Keep It Simple**: Start with the simplest solution

#### During Development
1. **Follow SOLID**: Each class should have a single, clear purpose
2. **Minimize Dependencies**: Depend on abstractions, not implementations
3. **Handle Errors Properly**: Use specific exceptions with meaningful messages
4. **Write Self-Documenting Code**: Code should be readable without comments

#### Code Review Checklist
- [ ] Follows SOLID principles
- [ ] Functions are small and focused
- [ ] Error handling is comprehensive
- [ ] Tests cover happy path and edge cases
- [ ] No code duplication (DRY)
- [ ] Dependencies are injected, not hardcoded
- [ ] Naming is clear and consistent
- [ ] Documentation is up-to-date

### Refactoring Guidelines

#### When to Refactor
- Code violates SOLID principles
- Functions are too long or complex
- Code is duplicated in multiple places
- Adding new features becomes difficult
- Tests are hard to write or maintain

#### Refactoring Process
1. **Ensure Tests Pass**: Green state before refactoring
2. **Small Steps**: Make incremental changes
3. **Run Tests Frequently**: Ensure nothing breaks
4. **Improve Design**: Apply design patterns and principles
5. **Clean Up**: Remove dead code and comments

### Performance Considerations

#### Optimization Strategy
1. **Measure First**: Use profiling tools to identify bottlenecks
2. **Database Queries**: Optimize N+1 problems, add indexes
3. **Caching**: Implement caching for frequently accessed data
4. **Async Operations**: Use proper async/await patterns
5. **Memory Management**: Avoid memory leaks in long-running operations

#### Caching Implementation
```bash
# Repository with caching layer
CachedPostRepository wraps DatabasePostRepository

# Cache invalidation strategies
- Time-based expiration
- Event-based invalidation
- Manual cache clearing
```

### Security Best Practices

#### Input Validation
- Validate all inputs at service layer
- Use specific validation exceptions
- Sanitize user-provided content
- Implement rate limiting

#### Authorization
- Check permissions at service layer
- Use principle of least privilege
- Implement proper error messages (don't leak info)
- Log security events

### Documentation Standards

See `CLEAN_CODE_GUIDELINES.md` for comprehensive examples of:
- SOLID principle implementations
- Clean code practices
- Design pattern examples
- Error handling strategies
- Architecture guidelines
