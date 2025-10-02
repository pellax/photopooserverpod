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
<<<<<<< HEAD
=======
import 'privacy_enum.dart' as _i3;
>>>>>>> 57c8224b224950818b9ce43c8ea947fb7c86eff1

abstract class Post implements _i1.SerializableModel {
  Post._({
    this.id,
    required this.userId,
    this.user,
    required this.time,
    this.shitid,
    required this.message,
<<<<<<< HEAD
=======
    required this.privacy,
>>>>>>> 57c8224b224950818b9ce43c8ea947fb7c86eff1
  });

  factory Post({
    int? id,
    required int userId,
    _i2.User? user,
    required DateTime time,
    int? shitid,
    required String message,
<<<<<<< HEAD
=======
    required _i3.PrivacyEnum privacy,
>>>>>>> 57c8224b224950818b9ce43c8ea947fb7c86eff1
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
<<<<<<< HEAD
=======
      privacy:
          _i3.PrivacyEnum.fromJson((jsonSerialization['privacy'] as String)),
>>>>>>> 57c8224b224950818b9ce43c8ea947fb7c86eff1
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

<<<<<<< HEAD
=======
  _i3.PrivacyEnum privacy;

>>>>>>> 57c8224b224950818b9ce43c8ea947fb7c86eff1
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
<<<<<<< HEAD
=======
    _i3.PrivacyEnum? privacy,
>>>>>>> 57c8224b224950818b9ce43c8ea947fb7c86eff1
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
<<<<<<< HEAD
=======
      'privacy': privacy.toJson(),
>>>>>>> 57c8224b224950818b9ce43c8ea947fb7c86eff1
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
<<<<<<< HEAD
=======
    required _i3.PrivacyEnum privacy,
>>>>>>> 57c8224b224950818b9ce43c8ea947fb7c86eff1
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          time: time,
          shitid: shitid,
          message: message,
<<<<<<< HEAD
=======
          privacy: privacy,
>>>>>>> 57c8224b224950818b9ce43c8ea947fb7c86eff1
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
<<<<<<< HEAD
=======
    _i3.PrivacyEnum? privacy,
>>>>>>> 57c8224b224950818b9ce43c8ea947fb7c86eff1
  }) {
    return Post(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      time: time ?? this.time,
      shitid: shitid is int? ? shitid : this.shitid,
      message: message ?? this.message,
<<<<<<< HEAD
=======
      privacy: privacy ?? this.privacy,
>>>>>>> 57c8224b224950818b9ce43c8ea947fb7c86eff1
    );
  }
}
