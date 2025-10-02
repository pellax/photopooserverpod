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