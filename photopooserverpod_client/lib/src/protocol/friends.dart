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

abstract class Friends implements _i1.SerializableModel {
  Friends._({
    this.id,
    required this.friendsId,
    this.friends,
    required this.friendsById,
    this.friendsBy,
  });

  factory Friends({
    int? id,
    required int friendsId,
    _i2.User? friends,
    required int friendsById,
    _i2.User? friendsBy,
  }) = _FriendsImpl;

  factory Friends.fromJson(Map<String, dynamic> jsonSerialization) {
    return Friends(
      id: jsonSerialization['id'] as int?,
      friendsId: jsonSerialization['friendsId'] as int,
      friends: jsonSerialization['friends'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['friends'] as Map<String, dynamic>)),
      friendsById: jsonSerialization['friendsById'] as int,
      friendsBy: jsonSerialization['friendsBy'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['friendsBy'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int friendsId;

  _i2.User? friends;

  int friendsById;

  _i2.User? friendsBy;

  /// Returns a shallow copy of this [Friends]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Friends copyWith({
    int? id,
    int? friendsId,
    _i2.User? friends,
    int? friendsById,
    _i2.User? friendsBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'friendsId': friendsId,
      if (friends != null) 'friends': friends?.toJson(),
      'friendsById': friendsById,
      if (friendsBy != null) 'friendsBy': friendsBy?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FriendsImpl extends Friends {
  _FriendsImpl({
    int? id,
    required int friendsId,
    _i2.User? friends,
    required int friendsById,
    _i2.User? friendsBy,
  }) : super._(
          id: id,
          friendsId: friendsId,
          friends: friends,
          friendsById: friendsById,
          friendsBy: friendsBy,
        );

  /// Returns a shallow copy of this [Friends]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Friends copyWith({
    Object? id = _Undefined,
    int? friendsId,
    Object? friends = _Undefined,
    int? friendsById,
    Object? friendsBy = _Undefined,
  }) {
    return Friends(
      id: id is int? ? id : this.id,
      friendsId: friendsId ?? this.friendsId,
      friends: friends is _i2.User? ? friends : this.friends?.copyWith(),
      friendsById: friendsById ?? this.friendsById,
      friendsBy:
          friendsBy is _i2.User? ? friendsBy : this.friendsBy?.copyWith(),
    );
  }
}
