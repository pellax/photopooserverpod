import 'package:serverpod/server.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

import '../generated/protocol.dart';

class AuthEndpoint extends Endpoint {
  static const String jwtSecret = 'photopoo_super_secret_key_2025';

  Future<Map<String, dynamic>?> login(Session session, String username, String password) async {
    try {
      // Hash the password for comparison
      final hashedPassword = _hashPassword(password);

      // Find user by username and password
      final user = await User.db.findFirstRow(
        session,
        where: (t) => t.username.equals(username) & t.passwrord.equals(hashedPassword),
      );

      if (user == null) {
        return {
          'success': false,
          'message': 'Invalid username or password',
        };
      }

      // Generate JWT token
      final jwt = JWT({
        'userId': user.id,
        'username': user.username,
        'email': user.email,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'exp': DateTime.now().add(Duration(days: 7)).millisecondsSinceEpoch ~/ 1000,
      });

      final token = jwt.sign(SecretKey(jwtSecret));

      return {
        'success': true,
        'token': token,
        'user': {
          'id': user.id,
          'username': user.username,
          'email': user.email,
          'age': user.age,
          'diet': user.diet.name,
        },
        'message': 'Login successful',
      };
    } catch (e) {
      return {
        'success': false,
        'message': 'Login failed: ${e.toString()}',
      };
    }
  }

  Future<Map<String, dynamic>?> register(Session session, String username, String password, String email, int age, String diet) async {
    try {
      // Check if username already exists
      final existingUser = await User.db.findFirstRow(
        session,
        where: (t) => t.username.equals(username),
      );

      if (existingUser != null) {
        return {
          'success': false,
          'message': 'Username already exists',
        };
      }

      // Check if email already exists
      final existingEmail = await User.db.findFirstRow(
        session,
        where: (t) => t.email.equals(email),
      );

      if (existingEmail != null) {
        return {
          'success': false,
          'message': 'Email already registered',
        };
      }

      // Hash password
      final hashedPassword = _hashPassword(password);

      // Parse diet enum
      DietTypeEnum dietEnum;
      try {
        dietEnum = DietTypeEnum.values.firstWhere(
          (e) => e.name.toLowerCase() == diet.toLowerCase(),
        );
      } catch (e) {
        dietEnum = DietTypeEnum.omnivore; // Default to omnivore
      }

      // Create new user with a temporary lookId (we'll fix this later)
      final user = User(
        username: username,
        passwrord: hashedPassword,
        email: email,
        phone: '', // You can add phone to registration form later
        age: age,
        diet: dietEnum,
        lookId: 1, // Temporary default, we'll create a proper system later
      );

      final createdUser = await User.db.insertRow(session, user);

      // Generate JWT token for the new user
      final jwt = JWT({
        'userId': createdUser.id,
        'username': createdUser.username,
        'email': createdUser.email,
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'exp': DateTime.now().add(Duration(days: 7)).millisecondsSinceEpoch ~/ 1000,
      });

      final token = jwt.sign(SecretKey(jwtSecret));

      return {
        'success': true,
        'token': token,
        'user': {
          'id': createdUser.id,
          'username': createdUser.username,
          'email': createdUser.email,
          'age': createdUser.age,
          'diet': createdUser.diet.name,
        },
        'message': 'Registration successful',
      };

    } catch (e) {
      return {
        'success': false,
        'message': 'Registration failed: ${e.toString()}',
      };
    }
  }

  Future<Map<String, dynamic>?> validateToken(Session session, String token) async {
    try {
      final jwt = JWT.verify(token, SecretKey(jwtSecret));
      final payload = jwt.payload;

      // Check if token is expired
      final exp = payload['exp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      if (now > exp) {
        return {
          'success': false,
          'message': 'Token expired',
        };
      }

      // Get user from database to ensure they still exist
      final user = await User.db.findById(session, payload['userId']);

      if (user == null) {
        return {
          'success': false,
          'message': 'User not found',
        };
      }

      return {
        'success': true,
        'user': {
          'id': user.id,
          'username': user.username,
          'email': user.email,
          'age': user.age,
          'diet': user.diet.name,
        },
        'message': 'Token valid',
      };

    } catch (e) {
      return {
        'success': false,
        'message': 'Invalid token: ${e.toString()}',
      };
    }
  }

  String _hashPassword(String password) {
    final bytes = utf8.encode(password + 'photopoo_salt');
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}