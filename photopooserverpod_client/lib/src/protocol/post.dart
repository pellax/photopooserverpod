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
import 'user.dart' as _i2;
import 'privacy_enum.dart' as _i3;

abstract class Post implements _i1.SerializableModel {
  Post._({
    this.id,
    required this.userId,
    this.user,
    required this.time,
    this.shitid,
    required this.message,
    required this.privacy,
  });

  factory Post({
    int? id,
    required int userId,
    _i2.User? user,
    required DateTime time,
    int? shitid,
    required String message,
    required _i3.PrivacyEnum privacy,
  }) = _PostImpl;

  factory Post.fromJson(Map<String, dynamic> jsonSerialization) {
    return Post(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      time: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['time']),
      shitid: jsonSerialization['shitid'] as int?,
      message: jsonSerialization['message'] as String,
      privacy:
          _i3.PrivacyEnum.fromJson((jsonSerialization['privacy'] as String)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  _i2.User? user;

  DateTime time;

  int? shitid;

  String message;

  _i3.PrivacyEnum privacy;

  /// Returns a shallow copy of this [Post]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Post copyWith({
    int? id,
    int? userId,
    _i2.User? user,
    DateTime? time,
    int? shitid,
    String? message,
    _i3.PrivacyEnum? privacy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'time': time.toJson(),
      if (shitid != null) 'shitid': shitid,
      'message': message,
      'privacy': privacy.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostImpl extends Post {
  _PostImpl({
    int? id,
    required int userId,
    _i2.User? user,
    required DateTime time,
    int? shitid,
    required String message,
    required _i3.PrivacyEnum privacy,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          time: time,
          shitid: shitid,
          message: message,
          privacy: privacy,
        );

  /// Returns a shallow copy of this [Post]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Post copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    DateTime? time,
    Object? shitid = _Undefined,
    String? message,
    _i3.PrivacyEnum? privacy,
  }) {
    return Post(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      time: time ?? this.time,
      shitid: shitid is int? ? shitid : this.shitid,
      message: message ?? this.message,
      privacy: privacy ?? this.privacy,
    );
  }
}
