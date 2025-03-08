/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dietType_enum.dart' as _i2;

/// Holds a user of photopoo
abstract class User implements _i1.SerializableModel {
  User._({
    this.id,
    required this.username,
    required this.passwrord,
    required this.email,
    required this.phone,
    required this.age,
    required this.diet,
  });

  factory User({
    int? id,
    required String username,
    required String passwrord,
    required String email,
    required String phone,
    required int age,
    required _i2.DietTypeEnum diet,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      username: jsonSerialization['username'] as String,
      passwrord: jsonSerialization['passwrord'] as String,
      email: jsonSerialization['email'] as String,
      phone: jsonSerialization['phone'] as String,
      age: jsonSerialization['age'] as int,
      diet: _i2.DietTypeEnum.fromJson((jsonSerialization['diet'] as String)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The contents of the user
  String username;

  String passwrord;

  String email;

  String phone;

  int age;

  _i2.DietTypeEnum diet;

  /// Returns a shallow copy of this [User]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  User copyWith({
    int? id,
    String? username,
    String? passwrord,
    String? email,
    String? phone,
    int? age,
    _i2.DietTypeEnum? diet,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'username': username,
      'passwrord': passwrord,
      'email': email,
      'phone': phone,
      'age': age,
      'diet': diet.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required String username,
    required String passwrord,
    required String email,
    required String phone,
    required int age,
    required _i2.DietTypeEnum diet,
  }) : super._(
          id: id,
          username: username,
          passwrord: passwrord,
          email: email,
          phone: phone,
          age: age,
          diet: diet,
        );

  /// Returns a shallow copy of this [User]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  User copyWith({
    Object? id = _Undefined,
    String? username,
    String? passwrord,
    String? email,
    String? phone,
    int? age,
    _i2.DietTypeEnum? diet,
  }) {
    return User(
      id: id is int? ? id : this.id,
      username: username ?? this.username,
      passwrord: passwrord ?? this.passwrord,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      age: age ?? this.age,
      diet: diet ?? this.diet,
    );
  }
}
