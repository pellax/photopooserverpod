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
import 'rooms_membership.dart' as _i3;
import 'direct_message.dart' as _i4;
import 'post.dart' as _i5;
import 'look.dart' as _i6;
import 'friends.dart' as _i7;
import 'blocked.dart' as _i8;
import 'message.dart' as _i9;
import 'friendship_request.dart' as _i10;

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
    this.rooms,
    this.dmto,
    this.dmfrom,
    this.shitlist,
    required this.lookId,
    this.look,
    this.friends,
    this.friendsBy,
    this.blocked,
    this.blockedBy,
    this.messages,
    this.requests,
    this.requestsBy,
  });

  factory User({
    int? id,
    required String username,
    required String passwrord,
    required String email,
    required String phone,
    required int age,
    required _i2.DietTypeEnum diet,
    List<_i3.RoomsMembership>? rooms,
    List<_i4.DirectMessage>? dmto,
    List<_i4.DirectMessage>? dmfrom,
    List<_i5.Post>? shitlist,
    required int lookId,
    _i6.Look? look,
    List<_i7.Friends>? friends,
    List<_i7.Friends>? friendsBy,
    List<_i8.Blocked>? blocked,
    List<_i8.Blocked>? blockedBy,
    List<_i9.Message>? messages,
    List<_i10.FriendShipRequest>? requests,
    List<_i10.FriendShipRequest>? requestsBy,
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
      rooms: (jsonSerialization['rooms'] as List?)
          ?.map(
              (e) => _i3.RoomsMembership.fromJson((e as Map<String, dynamic>)))
          .toList(),
      dmto: (jsonSerialization['dmto'] as List?)
          ?.map((e) => _i4.DirectMessage.fromJson((e as Map<String, dynamic>)))
          .toList(),
      dmfrom: (jsonSerialization['dmfrom'] as List?)
          ?.map((e) => _i4.DirectMessage.fromJson((e as Map<String, dynamic>)))
          .toList(),
      shitlist: (jsonSerialization['shitlist'] as List?)
          ?.map((e) => _i5.Post.fromJson((e as Map<String, dynamic>)))
          .toList(),
      lookId: jsonSerialization['lookId'] as int,
      look: jsonSerialization['look'] == null
          ? null
          : _i6.Look.fromJson(
              (jsonSerialization['look'] as Map<String, dynamic>)),
      friends: (jsonSerialization['friends'] as List?)
          ?.map((e) => _i7.Friends.fromJson((e as Map<String, dynamic>)))
          .toList(),
      friendsBy: (jsonSerialization['friendsBy'] as List?)
          ?.map((e) => _i7.Friends.fromJson((e as Map<String, dynamic>)))
          .toList(),
      blocked: (jsonSerialization['blocked'] as List?)
          ?.map((e) => _i8.Blocked.fromJson((e as Map<String, dynamic>)))
          .toList(),
      blockedBy: (jsonSerialization['blockedBy'] as List?)
          ?.map((e) => _i8.Blocked.fromJson((e as Map<String, dynamic>)))
          .toList(),
      messages: (jsonSerialization['messages'] as List?)
          ?.map((e) => _i9.Message.fromJson((e as Map<String, dynamic>)))
          .toList(),
      requests: (jsonSerialization['requests'] as List?)
          ?.map((e) =>
              _i10.FriendShipRequest.fromJson((e as Map<String, dynamic>)))
          .toList(),
      requestsBy: (jsonSerialization['requestsBy'] as List?)
          ?.map((e) =>
              _i10.FriendShipRequest.fromJson((e as Map<String, dynamic>)))
          .toList(),
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

  List<_i3.RoomsMembership>? rooms;

  List<_i4.DirectMessage>? dmto;

  List<_i4.DirectMessage>? dmfrom;

  List<_i5.Post>? shitlist;

  int lookId;

  _i6.Look? look;

  List<_i7.Friends>? friends;

  List<_i7.Friends>? friendsBy;

  List<_i8.Blocked>? blocked;

  List<_i8.Blocked>? blockedBy;

  List<_i9.Message>? messages;

  List<_i10.FriendShipRequest>? requests;

  List<_i10.FriendShipRequest>? requestsBy;

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
    List<_i3.RoomsMembership>? rooms,
    List<_i4.DirectMessage>? dmto,
    List<_i4.DirectMessage>? dmfrom,
    List<_i5.Post>? shitlist,
    int? lookId,
    _i6.Look? look,
    List<_i7.Friends>? friends,
    List<_i7.Friends>? friendsBy,
    List<_i8.Blocked>? blocked,
    List<_i8.Blocked>? blockedBy,
    List<_i9.Message>? messages,
    List<_i10.FriendShipRequest>? requests,
    List<_i10.FriendShipRequest>? requestsBy,
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
      if (rooms != null) 'rooms': rooms?.toJson(valueToJson: (v) => v.toJson()),
      if (dmto != null) 'dmto': dmto?.toJson(valueToJson: (v) => v.toJson()),
      if (dmfrom != null)
        'dmfrom': dmfrom?.toJson(valueToJson: (v) => v.toJson()),
      if (shitlist != null)
        'shitlist': shitlist?.toJson(valueToJson: (v) => v.toJson()),
      'lookId': lookId,
      if (look != null) 'look': look?.toJson(),
      if (friends != null)
        'friends': friends?.toJson(valueToJson: (v) => v.toJson()),
      if (friendsBy != null)
        'friendsBy': friendsBy?.toJson(valueToJson: (v) => v.toJson()),
      if (blocked != null)
        'blocked': blocked?.toJson(valueToJson: (v) => v.toJson()),
      if (blockedBy != null)
        'blockedBy': blockedBy?.toJson(valueToJson: (v) => v.toJson()),
      if (messages != null)
        'messages': messages?.toJson(valueToJson: (v) => v.toJson()),
      if (requests != null)
        'requests': requests?.toJson(valueToJson: (v) => v.toJson()),
      if (requestsBy != null)
        'requestsBy': requestsBy?.toJson(valueToJson: (v) => v.toJson()),
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
    List<_i3.RoomsMembership>? rooms,
    List<_i4.DirectMessage>? dmto,
    List<_i4.DirectMessage>? dmfrom,
    List<_i5.Post>? shitlist,
    required int lookId,
    _i6.Look? look,
    List<_i7.Friends>? friends,
    List<_i7.Friends>? friendsBy,
    List<_i8.Blocked>? blocked,
    List<_i8.Blocked>? blockedBy,
    List<_i9.Message>? messages,
    List<_i10.FriendShipRequest>? requests,
    List<_i10.FriendShipRequest>? requestsBy,
  }) : super._(
          id: id,
          username: username,
          passwrord: passwrord,
          email: email,
          phone: phone,
          age: age,
          diet: diet,
          rooms: rooms,
          dmto: dmto,
          dmfrom: dmfrom,
          shitlist: shitlist,
          lookId: lookId,
          look: look,
          friends: friends,
          friendsBy: friendsBy,
          blocked: blocked,
          blockedBy: blockedBy,
          messages: messages,
          requests: requests,
          requestsBy: requestsBy,
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
    Object? rooms = _Undefined,
    Object? dmto = _Undefined,
    Object? dmfrom = _Undefined,
    Object? shitlist = _Undefined,
    int? lookId,
    Object? look = _Undefined,
    Object? friends = _Undefined,
    Object? friendsBy = _Undefined,
    Object? blocked = _Undefined,
    Object? blockedBy = _Undefined,
    Object? messages = _Undefined,
    Object? requests = _Undefined,
    Object? requestsBy = _Undefined,
  }) {
    return User(
      id: id is int? ? id : this.id,
      username: username ?? this.username,
      passwrord: passwrord ?? this.passwrord,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      age: age ?? this.age,
      diet: diet ?? this.diet,
      rooms: rooms is List<_i3.RoomsMembership>?
          ? rooms
          : this.rooms?.map((e0) => e0.copyWith()).toList(),
      dmto: dmto is List<_i4.DirectMessage>?
          ? dmto
          : this.dmto?.map((e0) => e0.copyWith()).toList(),
      dmfrom: dmfrom is List<_i4.DirectMessage>?
          ? dmfrom
          : this.dmfrom?.map((e0) => e0.copyWith()).toList(),
      shitlist: shitlist is List<_i5.Post>?
          ? shitlist
          : this.shitlist?.map((e0) => e0.copyWith()).toList(),
      lookId: lookId ?? this.lookId,
      look: look is _i6.Look? ? look : this.look?.copyWith(),
      friends: friends is List<_i7.Friends>?
          ? friends
          : this.friends?.map((e0) => e0.copyWith()).toList(),
      friendsBy: friendsBy is List<_i7.Friends>?
          ? friendsBy
          : this.friendsBy?.map((e0) => e0.copyWith()).toList(),
      blocked: blocked is List<_i8.Blocked>?
          ? blocked
          : this.blocked?.map((e0) => e0.copyWith()).toList(),
      blockedBy: blockedBy is List<_i8.Blocked>?
          ? blockedBy
          : this.blockedBy?.map((e0) => e0.copyWith()).toList(),
      messages: messages is List<_i9.Message>?
          ? messages
          : this.messages?.map((e0) => e0.copyWith()).toList(),
      requests: requests is List<_i10.FriendShipRequest>?
          ? requests
          : this.requests?.map((e0) => e0.copyWith()).toList(),
      requestsBy: requestsBy is List<_i10.FriendShipRequest>?
          ? requestsBy
          : this.requestsBy?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
