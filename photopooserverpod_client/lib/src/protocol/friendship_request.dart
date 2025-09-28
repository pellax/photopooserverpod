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
import 'status_enum.dart' as _i3;

abstract class FriendShipRequest implements _i1.SerializableModel {
  FriendShipRequest._({
    this.id,
    required this.friendId,
    this.friend,
    required this.friendbyId,
    this.friendby,
    this.accept,
    required this.message,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });

  factory FriendShipRequest({
    int? id,
    required int friendId,
    _i2.User? friend,
    required int friendbyId,
    _i2.User? friendby,
    bool? accept,
    required String message,
    required DateTime createdAt,
    required DateTime updatedAt,
    required _i3.StatusEnum status,
  }) = _FriendShipRequestImpl;

  factory FriendShipRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return FriendShipRequest(
      id: jsonSerialization['id'] as int?,
      friendId: jsonSerialization['friendId'] as int,
      friend: jsonSerialization['friend'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['friend'] as Map<String, dynamic>)),
      friendbyId: jsonSerialization['friendbyId'] as int,
      friendby: jsonSerialization['friendby'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['friendby'] as Map<String, dynamic>)),
      accept: jsonSerialization['accept'] as bool?,
      message: jsonSerialization['message'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      status: _i3.StatusEnum.fromJson((jsonSerialization['status'] as String)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int friendId;

  _i2.User? friend;

  int friendbyId;

  _i2.User? friendby;

  bool? accept;

  String message;

  DateTime createdAt;

  DateTime updatedAt;

  _i3.StatusEnum status;

  /// Returns a shallow copy of this [FriendShipRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  FriendShipRequest copyWith({
    int? id,
    int? friendId,
    _i2.User? friend,
    int? friendbyId,
    _i2.User? friendby,
    bool? accept,
    String? message,
    DateTime? createdAt,
    DateTime? updatedAt,
    _i3.StatusEnum? status,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'friendId': friendId,
      if (friend != null) 'friend': friend?.toJson(),
      'friendbyId': friendbyId,
      if (friendby != null) 'friendby': friendby?.toJson(),
      if (accept != null) 'accept': accept,
      'message': message,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      'status': status.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FriendShipRequestImpl extends FriendShipRequest {
  _FriendShipRequestImpl({
    int? id,
    required int friendId,
    _i2.User? friend,
    required int friendbyId,
    _i2.User? friendby,
    bool? accept,
    required String message,
    required DateTime createdAt,
    required DateTime updatedAt,
    required _i3.StatusEnum status,
  }) : super._(
          id: id,
          friendId: friendId,
          friend: friend,
          friendbyId: friendbyId,
          friendby: friendby,
          accept: accept,
          message: message,
          createdAt: createdAt,
          updatedAt: updatedAt,
          status: status,
        );

  /// Returns a shallow copy of this [FriendShipRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  FriendShipRequest copyWith({
    Object? id = _Undefined,
    int? friendId,
    Object? friend = _Undefined,
    int? friendbyId,
    Object? friendby = _Undefined,
    Object? accept = _Undefined,
    String? message,
    DateTime? createdAt,
    DateTime? updatedAt,
    _i3.StatusEnum? status,
  }) {
    return FriendShipRequest(
      id: id is int? ? id : this.id,
      friendId: friendId ?? this.friendId,
      friend: friend is _i2.User? ? friend : this.friend?.copyWith(),
      friendbyId: friendbyId ?? this.friendbyId,
      friendby: friendby is _i2.User? ? friendby : this.friendby?.copyWith(),
      accept: accept is bool? ? accept : this.accept,
      message: message ?? this.message,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
    );
  }
}
