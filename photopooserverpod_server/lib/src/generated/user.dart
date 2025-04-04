/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
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
abstract class User implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = UserTable();

  static const db = UserRepository._();

  @override
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

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'username': username,
      'passwrord': passwrord,
      'email': email,
      'phone': phone,
      'age': age,
      'diet': diet.toJson(),
      if (rooms != null)
        'rooms': rooms?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (dmto != null)
        'dmto': dmto?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (dmfrom != null)
        'dmfrom': dmfrom?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (shitlist != null)
        'shitlist': shitlist?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'lookId': lookId,
      if (look != null) 'look': look?.toJsonForProtocol(),
      if (friends != null)
        'friends': friends?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (friendsBy != null)
        'friendsBy':
            friendsBy?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (blocked != null)
        'blocked': blocked?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (blockedBy != null)
        'blockedBy':
            blockedBy?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (messages != null)
        'messages': messages?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (requests != null)
        'requests': requests?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (requestsBy != null)
        'requestsBy':
            requestsBy?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static UserInclude include({
    _i3.RoomsMembershipIncludeList? rooms,
    _i4.DirectMessageIncludeList? dmto,
    _i4.DirectMessageIncludeList? dmfrom,
    _i5.PostIncludeList? shitlist,
    _i6.LookInclude? look,
    _i7.FriendsIncludeList? friends,
    _i7.FriendsIncludeList? friendsBy,
    _i8.BlockedIncludeList? blocked,
    _i8.BlockedIncludeList? blockedBy,
    _i9.MessageIncludeList? messages,
    _i10.FriendShipRequestIncludeList? requests,
    _i10.FriendShipRequestIncludeList? requestsBy,
  }) {
    return UserInclude._(
      rooms: rooms,
      dmto: dmto,
      dmfrom: dmfrom,
      shitlist: shitlist,
      look: look,
      friends: friends,
      friendsBy: friendsBy,
      blocked: blocked,
      blockedBy: blockedBy,
      messages: messages,
      requests: requests,
      requestsBy: requestsBy,
    );
  }

  static UserIncludeList includeList({
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    UserInclude? include,
  }) {
    return UserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(User.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(User.t),
      include: include,
    );
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

class UserTable extends _i1.Table {
  UserTable({super.tableRelation}) : super(tableName: 'user') {
    username = _i1.ColumnString(
      'username',
      this,
    );
    passwrord = _i1.ColumnString(
      'passwrord',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    phone = _i1.ColumnString(
      'phone',
      this,
    );
    age = _i1.ColumnInt(
      'age',
      this,
    );
    diet = _i1.ColumnEnum(
      'diet',
      this,
      _i1.EnumSerialization.byName,
    );
    lookId = _i1.ColumnInt(
      'lookId',
      this,
    );
  }

  /// The contents of the user
  late final _i1.ColumnString username;

  late final _i1.ColumnString passwrord;

  late final _i1.ColumnString email;

  late final _i1.ColumnString phone;

  late final _i1.ColumnInt age;

  late final _i1.ColumnEnum<_i2.DietTypeEnum> diet;

  _i3.RoomsMembershipTable? ___rooms;

  _i1.ManyRelation<_i3.RoomsMembershipTable>? _rooms;

  _i4.DirectMessageTable? ___dmto;

  _i1.ManyRelation<_i4.DirectMessageTable>? _dmto;

  _i4.DirectMessageTable? ___dmfrom;

  _i1.ManyRelation<_i4.DirectMessageTable>? _dmfrom;

  _i5.PostTable? ___shitlist;

  _i1.ManyRelation<_i5.PostTable>? _shitlist;

  late final _i1.ColumnInt lookId;

  _i6.LookTable? _look;

  _i7.FriendsTable? ___friends;

  _i1.ManyRelation<_i7.FriendsTable>? _friends;

  _i7.FriendsTable? ___friendsBy;

  _i1.ManyRelation<_i7.FriendsTable>? _friendsBy;

  _i8.BlockedTable? ___blocked;

  _i1.ManyRelation<_i8.BlockedTable>? _blocked;

  _i8.BlockedTable? ___blockedBy;

  _i1.ManyRelation<_i8.BlockedTable>? _blockedBy;

  _i9.MessageTable? ___messages;

  _i1.ManyRelation<_i9.MessageTable>? _messages;

  _i10.FriendShipRequestTable? ___requests;

  _i1.ManyRelation<_i10.FriendShipRequestTable>? _requests;

  _i10.FriendShipRequestTable? ___requestsBy;

  _i1.ManyRelation<_i10.FriendShipRequestTable>? _requestsBy;

  _i3.RoomsMembershipTable get __rooms {
    if (___rooms != null) return ___rooms!;
    ___rooms = _i1.createRelationTable(
      relationFieldName: '__rooms',
      field: User.t.id,
      foreignField: _i3.RoomsMembership.t.userId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.RoomsMembershipTable(tableRelation: foreignTableRelation),
    );
    return ___rooms!;
  }

  _i4.DirectMessageTable get __dmto {
    if (___dmto != null) return ___dmto!;
    ___dmto = _i1.createRelationTable(
      relationFieldName: '__dmto',
      field: User.t.id,
      foreignField: _i4.DirectMessage.t.senderId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.DirectMessageTable(tableRelation: foreignTableRelation),
    );
    return ___dmto!;
  }

  _i4.DirectMessageTable get __dmfrom {
    if (___dmfrom != null) return ___dmfrom!;
    ___dmfrom = _i1.createRelationTable(
      relationFieldName: '__dmfrom',
      field: User.t.id,
      foreignField: _i4.DirectMessage.t.receiverId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.DirectMessageTable(tableRelation: foreignTableRelation),
    );
    return ___dmfrom!;
  }

  _i5.PostTable get __shitlist {
    if (___shitlist != null) return ___shitlist!;
    ___shitlist = _i1.createRelationTable(
      relationFieldName: '__shitlist',
      field: User.t.id,
      foreignField: _i5.Post.t.$_userShitlistUserId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i5.PostTable(tableRelation: foreignTableRelation),
    );
    return ___shitlist!;
  }

  _i6.LookTable get look {
    if (_look != null) return _look!;
    _look = _i1.createRelationTable(
      relationFieldName: 'look',
      field: User.t.lookId,
      foreignField: _i6.Look.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i6.LookTable(tableRelation: foreignTableRelation),
    );
    return _look!;
  }

  _i7.FriendsTable get __friends {
    if (___friends != null) return ___friends!;
    ___friends = _i1.createRelationTable(
      relationFieldName: '__friends',
      field: User.t.id,
      foreignField: _i7.Friends.t.friendsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i7.FriendsTable(tableRelation: foreignTableRelation),
    );
    return ___friends!;
  }

  _i7.FriendsTable get __friendsBy {
    if (___friendsBy != null) return ___friendsBy!;
    ___friendsBy = _i1.createRelationTable(
      relationFieldName: '__friendsBy',
      field: User.t.id,
      foreignField: _i7.Friends.t.friendsById,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i7.FriendsTable(tableRelation: foreignTableRelation),
    );
    return ___friendsBy!;
  }

  _i8.BlockedTable get __blocked {
    if (___blocked != null) return ___blocked!;
    ___blocked = _i1.createRelationTable(
      relationFieldName: '__blocked',
      field: User.t.id,
      foreignField: _i8.Blocked.t.blockedId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i8.BlockedTable(tableRelation: foreignTableRelation),
    );
    return ___blocked!;
  }

  _i8.BlockedTable get __blockedBy {
    if (___blockedBy != null) return ___blockedBy!;
    ___blockedBy = _i1.createRelationTable(
      relationFieldName: '__blockedBy',
      field: User.t.id,
      foreignField: _i8.Blocked.t.blockedById,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i8.BlockedTable(tableRelation: foreignTableRelation),
    );
    return ___blockedBy!;
  }

  _i9.MessageTable get __messages {
    if (___messages != null) return ___messages!;
    ___messages = _i1.createRelationTable(
      relationFieldName: '__messages',
      field: User.t.id,
      foreignField: _i9.Message.t.ownerId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i9.MessageTable(tableRelation: foreignTableRelation),
    );
    return ___messages!;
  }

  _i10.FriendShipRequestTable get __requests {
    if (___requests != null) return ___requests!;
    ___requests = _i1.createRelationTable(
      relationFieldName: '__requests',
      field: User.t.id,
      foreignField: _i10.FriendShipRequest.t.friendId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i10.FriendShipRequestTable(tableRelation: foreignTableRelation),
    );
    return ___requests!;
  }

  _i10.FriendShipRequestTable get __requestsBy {
    if (___requestsBy != null) return ___requestsBy!;
    ___requestsBy = _i1.createRelationTable(
      relationFieldName: '__requestsBy',
      field: User.t.id,
      foreignField: _i10.FriendShipRequest.t.friendbyId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i10.FriendShipRequestTable(tableRelation: foreignTableRelation),
    );
    return ___requestsBy!;
  }

  _i1.ManyRelation<_i3.RoomsMembershipTable> get rooms {
    if (_rooms != null) return _rooms!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'rooms',
      field: User.t.id,
      foreignField: _i3.RoomsMembership.t.userId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.RoomsMembershipTable(tableRelation: foreignTableRelation),
    );
    _rooms = _i1.ManyRelation<_i3.RoomsMembershipTable>(
      tableWithRelations: relationTable,
      table: _i3.RoomsMembershipTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _rooms!;
  }

  _i1.ManyRelation<_i4.DirectMessageTable> get dmto {
    if (_dmto != null) return _dmto!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'dmto',
      field: User.t.id,
      foreignField: _i4.DirectMessage.t.senderId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.DirectMessageTable(tableRelation: foreignTableRelation),
    );
    _dmto = _i1.ManyRelation<_i4.DirectMessageTable>(
      tableWithRelations: relationTable,
      table: _i4.DirectMessageTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _dmto!;
  }

  _i1.ManyRelation<_i4.DirectMessageTable> get dmfrom {
    if (_dmfrom != null) return _dmfrom!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'dmfrom',
      field: User.t.id,
      foreignField: _i4.DirectMessage.t.receiverId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.DirectMessageTable(tableRelation: foreignTableRelation),
    );
    _dmfrom = _i1.ManyRelation<_i4.DirectMessageTable>(
      tableWithRelations: relationTable,
      table: _i4.DirectMessageTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _dmfrom!;
  }

  _i1.ManyRelation<_i5.PostTable> get shitlist {
    if (_shitlist != null) return _shitlist!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'shitlist',
      field: User.t.id,
      foreignField: _i5.Post.t.$_userShitlistUserId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i5.PostTable(tableRelation: foreignTableRelation),
    );
    _shitlist = _i1.ManyRelation<_i5.PostTable>(
      tableWithRelations: relationTable,
      table: _i5.PostTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _shitlist!;
  }

  _i1.ManyRelation<_i7.FriendsTable> get friends {
    if (_friends != null) return _friends!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'friends',
      field: User.t.id,
      foreignField: _i7.Friends.t.friendsId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i7.FriendsTable(tableRelation: foreignTableRelation),
    );
    _friends = _i1.ManyRelation<_i7.FriendsTable>(
      tableWithRelations: relationTable,
      table: _i7.FriendsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _friends!;
  }

  _i1.ManyRelation<_i7.FriendsTable> get friendsBy {
    if (_friendsBy != null) return _friendsBy!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'friendsBy',
      field: User.t.id,
      foreignField: _i7.Friends.t.friendsById,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i7.FriendsTable(tableRelation: foreignTableRelation),
    );
    _friendsBy = _i1.ManyRelation<_i7.FriendsTable>(
      tableWithRelations: relationTable,
      table: _i7.FriendsTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _friendsBy!;
  }

  _i1.ManyRelation<_i8.BlockedTable> get blocked {
    if (_blocked != null) return _blocked!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'blocked',
      field: User.t.id,
      foreignField: _i8.Blocked.t.blockedId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i8.BlockedTable(tableRelation: foreignTableRelation),
    );
    _blocked = _i1.ManyRelation<_i8.BlockedTable>(
      tableWithRelations: relationTable,
      table: _i8.BlockedTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _blocked!;
  }

  _i1.ManyRelation<_i8.BlockedTable> get blockedBy {
    if (_blockedBy != null) return _blockedBy!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'blockedBy',
      field: User.t.id,
      foreignField: _i8.Blocked.t.blockedById,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i8.BlockedTable(tableRelation: foreignTableRelation),
    );
    _blockedBy = _i1.ManyRelation<_i8.BlockedTable>(
      tableWithRelations: relationTable,
      table: _i8.BlockedTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _blockedBy!;
  }

  _i1.ManyRelation<_i9.MessageTable> get messages {
    if (_messages != null) return _messages!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'messages',
      field: User.t.id,
      foreignField: _i9.Message.t.ownerId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i9.MessageTable(tableRelation: foreignTableRelation),
    );
    _messages = _i1.ManyRelation<_i9.MessageTable>(
      tableWithRelations: relationTable,
      table: _i9.MessageTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _messages!;
  }

  _i1.ManyRelation<_i10.FriendShipRequestTable> get requests {
    if (_requests != null) return _requests!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'requests',
      field: User.t.id,
      foreignField: _i10.FriendShipRequest.t.friendId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i10.FriendShipRequestTable(tableRelation: foreignTableRelation),
    );
    _requests = _i1.ManyRelation<_i10.FriendShipRequestTable>(
      tableWithRelations: relationTable,
      table: _i10.FriendShipRequestTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _requests!;
  }

  _i1.ManyRelation<_i10.FriendShipRequestTable> get requestsBy {
    if (_requestsBy != null) return _requestsBy!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'requestsBy',
      field: User.t.id,
      foreignField: _i10.FriendShipRequest.t.friendbyId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i10.FriendShipRequestTable(tableRelation: foreignTableRelation),
    );
    _requestsBy = _i1.ManyRelation<_i10.FriendShipRequestTable>(
      tableWithRelations: relationTable,
      table: _i10.FriendShipRequestTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _requestsBy!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        username,
        passwrord,
        email,
        phone,
        age,
        diet,
        lookId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'rooms') {
      return __rooms;
    }
    if (relationField == 'dmto') {
      return __dmto;
    }
    if (relationField == 'dmfrom') {
      return __dmfrom;
    }
    if (relationField == 'shitlist') {
      return __shitlist;
    }
    if (relationField == 'look') {
      return look;
    }
    if (relationField == 'friends') {
      return __friends;
    }
    if (relationField == 'friendsBy') {
      return __friendsBy;
    }
    if (relationField == 'blocked') {
      return __blocked;
    }
    if (relationField == 'blockedBy') {
      return __blockedBy;
    }
    if (relationField == 'messages') {
      return __messages;
    }
    if (relationField == 'requests') {
      return __requests;
    }
    if (relationField == 'requestsBy') {
      return __requestsBy;
    }
    return null;
  }
}

class UserInclude extends _i1.IncludeObject {
  UserInclude._({
    _i3.RoomsMembershipIncludeList? rooms,
    _i4.DirectMessageIncludeList? dmto,
    _i4.DirectMessageIncludeList? dmfrom,
    _i5.PostIncludeList? shitlist,
    _i6.LookInclude? look,
    _i7.FriendsIncludeList? friends,
    _i7.FriendsIncludeList? friendsBy,
    _i8.BlockedIncludeList? blocked,
    _i8.BlockedIncludeList? blockedBy,
    _i9.MessageIncludeList? messages,
    _i10.FriendShipRequestIncludeList? requests,
    _i10.FriendShipRequestIncludeList? requestsBy,
  }) {
    _rooms = rooms;
    _dmto = dmto;
    _dmfrom = dmfrom;
    _shitlist = shitlist;
    _look = look;
    _friends = friends;
    _friendsBy = friendsBy;
    _blocked = blocked;
    _blockedBy = blockedBy;
    _messages = messages;
    _requests = requests;
    _requestsBy = requestsBy;
  }

  _i3.RoomsMembershipIncludeList? _rooms;

  _i4.DirectMessageIncludeList? _dmto;

  _i4.DirectMessageIncludeList? _dmfrom;

  _i5.PostIncludeList? _shitlist;

  _i6.LookInclude? _look;

  _i7.FriendsIncludeList? _friends;

  _i7.FriendsIncludeList? _friendsBy;

  _i8.BlockedIncludeList? _blocked;

  _i8.BlockedIncludeList? _blockedBy;

  _i9.MessageIncludeList? _messages;

  _i10.FriendShipRequestIncludeList? _requests;

  _i10.FriendShipRequestIncludeList? _requestsBy;

  @override
  Map<String, _i1.Include?> get includes => {
        'rooms': _rooms,
        'dmto': _dmto,
        'dmfrom': _dmfrom,
        'shitlist': _shitlist,
        'look': _look,
        'friends': _friends,
        'friendsBy': _friendsBy,
        'blocked': _blocked,
        'blockedBy': _blockedBy,
        'messages': _messages,
        'requests': _requests,
        'requestsBy': _requestsBy,
      };

  @override
  _i1.Table get table => User.t;
}

class UserIncludeList extends _i1.IncludeList {
  UserIncludeList._({
    _i1.WhereExpressionBuilder<UserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(User.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => User.t;
}

class UserRepository {
  const UserRepository._();

  final attach = const UserAttachRepository._();

  final attachRow = const UserAttachRowRepository._();

  final detach = const UserDetachRepository._();

  final detachRow = const UserDetachRowRepository._();

  /// Returns a list of [User]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<User>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.db.find<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [User] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<User?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.db.findFirstRow<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [User] by its [id] or null if no such row exists.
  Future<User?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return session.db.findById<User>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [User]s in the list and returns the inserted rows.
  ///
  /// The returned [User]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<User>> insert(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<User>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [User] and returns the inserted row.
  ///
  /// The returned [User] will have its `id` field set.
  Future<User> insertRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<User>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [User]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<User>> update(
    _i1.Session session,
    List<User> rows, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<User>(
      rows,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  /// Updates a single [User]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<User> updateRow(
    _i1.Session session,
    User row, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<User>(
      row,
      columns: columns?.call(User.t),
      transaction: transaction,
    );
  }

  /// Deletes all [User]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<User>> delete(
    _i1.Session session,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<User>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [User].
  Future<User> deleteRow(
    _i1.Session session,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<User>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<User>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<User>(
      where: where(User.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<User>(
      where: where?.call(User.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class UserAttachRepository {
  const UserAttachRepository._();

  /// Creates a relation between this [User] and the given [RoomsMembership]s
  /// by setting each [RoomsMembership]'s foreign key `userId` to refer to this [User].
  Future<void> rooms(
    _i1.Session session,
    User user,
    List<_i3.RoomsMembership> roomsMembership, {
    _i1.Transaction? transaction,
  }) async {
    if (roomsMembership.any((e) => e.id == null)) {
      throw ArgumentError.notNull('roomsMembership.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $roomsMembership =
        roomsMembership.map((e) => e.copyWith(userId: user.id)).toList();
    await session.db.update<_i3.RoomsMembership>(
      $roomsMembership,
      columns: [_i3.RoomsMembership.t.userId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [DirectMessage]s
  /// by setting each [DirectMessage]'s foreign key `senderId` to refer to this [User].
  Future<void> dmto(
    _i1.Session session,
    User user,
    List<_i4.DirectMessage> directMessage, {
    _i1.Transaction? transaction,
  }) async {
    if (directMessage.any((e) => e.id == null)) {
      throw ArgumentError.notNull('directMessage.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $directMessage =
        directMessage.map((e) => e.copyWith(senderId: user.id)).toList();
    await session.db.update<_i4.DirectMessage>(
      $directMessage,
      columns: [_i4.DirectMessage.t.senderId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [DirectMessage]s
  /// by setting each [DirectMessage]'s foreign key `receiverId` to refer to this [User].
  Future<void> dmfrom(
    _i1.Session session,
    User user,
    List<_i4.DirectMessage> directMessage, {
    _i1.Transaction? transaction,
  }) async {
    if (directMessage.any((e) => e.id == null)) {
      throw ArgumentError.notNull('directMessage.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $directMessage =
        directMessage.map((e) => e.copyWith(receiverId: user.id)).toList();
    await session.db.update<_i4.DirectMessage>(
      $directMessage,
      columns: [_i4.DirectMessage.t.receiverId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [Post]s
  /// by setting each [Post]'s foreign key `_userShitlistUserId` to refer to this [User].
  Future<void> shitlist(
    _i1.Session session,
    User user,
    List<_i5.Post> post, {
    _i1.Transaction? transaction,
  }) async {
    if (post.any((e) => e.id == null)) {
      throw ArgumentError.notNull('post.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $post = post
        .map((e) => _i5.PostImplicit(
              e,
              $_userShitlistUserId: user.id,
            ))
        .toList();
    await session.db.update<_i5.Post>(
      $post,
      columns: [_i5.Post.t.$_userShitlistUserId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [Friends]s
  /// by setting each [Friends]'s foreign key `friendsId` to refer to this [User].
  Future<void> friends(
    _i1.Session session,
    User user,
    List<_i7.Friends> friends, {
    _i1.Transaction? transaction,
  }) async {
    if (friends.any((e) => e.id == null)) {
      throw ArgumentError.notNull('friends.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $friends = friends.map((e) => e.copyWith(friendsId: user.id)).toList();
    await session.db.update<_i7.Friends>(
      $friends,
      columns: [_i7.Friends.t.friendsId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [Friends]s
  /// by setting each [Friends]'s foreign key `friendsById` to refer to this [User].
  Future<void> friendsBy(
    _i1.Session session,
    User user,
    List<_i7.Friends> friends, {
    _i1.Transaction? transaction,
  }) async {
    if (friends.any((e) => e.id == null)) {
      throw ArgumentError.notNull('friends.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $friends =
        friends.map((e) => e.copyWith(friendsById: user.id)).toList();
    await session.db.update<_i7.Friends>(
      $friends,
      columns: [_i7.Friends.t.friendsById],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [Blocked]s
  /// by setting each [Blocked]'s foreign key `blockedId` to refer to this [User].
  Future<void> blocked(
    _i1.Session session,
    User user,
    List<_i8.Blocked> blocked, {
    _i1.Transaction? transaction,
  }) async {
    if (blocked.any((e) => e.id == null)) {
      throw ArgumentError.notNull('blocked.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $blocked = blocked.map((e) => e.copyWith(blockedId: user.id)).toList();
    await session.db.update<_i8.Blocked>(
      $blocked,
      columns: [_i8.Blocked.t.blockedId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [Blocked]s
  /// by setting each [Blocked]'s foreign key `blockedById` to refer to this [User].
  Future<void> blockedBy(
    _i1.Session session,
    User user,
    List<_i8.Blocked> blocked, {
    _i1.Transaction? transaction,
  }) async {
    if (blocked.any((e) => e.id == null)) {
      throw ArgumentError.notNull('blocked.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $blocked =
        blocked.map((e) => e.copyWith(blockedById: user.id)).toList();
    await session.db.update<_i8.Blocked>(
      $blocked,
      columns: [_i8.Blocked.t.blockedById],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [Message]s
  /// by setting each [Message]'s foreign key `ownerId` to refer to this [User].
  Future<void> messages(
    _i1.Session session,
    User user,
    List<_i9.Message> message, {
    _i1.Transaction? transaction,
  }) async {
    if (message.any((e) => e.id == null)) {
      throw ArgumentError.notNull('message.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $message = message.map((e) => e.copyWith(ownerId: user.id)).toList();
    await session.db.update<_i9.Message>(
      $message,
      columns: [_i9.Message.t.ownerId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [FriendShipRequest]s
  /// by setting each [FriendShipRequest]'s foreign key `friendId` to refer to this [User].
  Future<void> requests(
    _i1.Session session,
    User user,
    List<_i10.FriendShipRequest> friendShipRequest, {
    _i1.Transaction? transaction,
  }) async {
    if (friendShipRequest.any((e) => e.id == null)) {
      throw ArgumentError.notNull('friendShipRequest.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $friendShipRequest =
        friendShipRequest.map((e) => e.copyWith(friendId: user.id)).toList();
    await session.db.update<_i10.FriendShipRequest>(
      $friendShipRequest,
      columns: [_i10.FriendShipRequest.t.friendId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [FriendShipRequest]s
  /// by setting each [FriendShipRequest]'s foreign key `friendbyId` to refer to this [User].
  Future<void> requestsBy(
    _i1.Session session,
    User user,
    List<_i10.FriendShipRequest> friendShipRequest, {
    _i1.Transaction? transaction,
  }) async {
    if (friendShipRequest.any((e) => e.id == null)) {
      throw ArgumentError.notNull('friendShipRequest.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $friendShipRequest =
        friendShipRequest.map((e) => e.copyWith(friendbyId: user.id)).toList();
    await session.db.update<_i10.FriendShipRequest>(
      $friendShipRequest,
      columns: [_i10.FriendShipRequest.t.friendbyId],
      transaction: transaction,
    );
  }
}

class UserAttachRowRepository {
  const UserAttachRowRepository._();

  /// Creates a relation between the given [User] and [Look]
  /// by setting the [User]'s foreign key `lookId` to refer to the [Look].
  Future<void> look(
    _i1.Session session,
    User user,
    _i6.Look look, {
    _i1.Transaction? transaction,
  }) async {
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }

    var $user = user.copyWith(lookId: look.id);
    await session.db.updateRow<User>(
      $user,
      columns: [User.t.lookId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [RoomsMembership]
  /// by setting the [RoomsMembership]'s foreign key `userId` to refer to this [User].
  Future<void> rooms(
    _i1.Session session,
    User user,
    _i3.RoomsMembership roomsMembership, {
    _i1.Transaction? transaction,
  }) async {
    if (roomsMembership.id == null) {
      throw ArgumentError.notNull('roomsMembership.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $roomsMembership = roomsMembership.copyWith(userId: user.id);
    await session.db.updateRow<_i3.RoomsMembership>(
      $roomsMembership,
      columns: [_i3.RoomsMembership.t.userId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [DirectMessage]
  /// by setting the [DirectMessage]'s foreign key `senderId` to refer to this [User].
  Future<void> dmto(
    _i1.Session session,
    User user,
    _i4.DirectMessage directMessage, {
    _i1.Transaction? transaction,
  }) async {
    if (directMessage.id == null) {
      throw ArgumentError.notNull('directMessage.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $directMessage = directMessage.copyWith(senderId: user.id);
    await session.db.updateRow<_i4.DirectMessage>(
      $directMessage,
      columns: [_i4.DirectMessage.t.senderId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [DirectMessage]
  /// by setting the [DirectMessage]'s foreign key `receiverId` to refer to this [User].
  Future<void> dmfrom(
    _i1.Session session,
    User user,
    _i4.DirectMessage directMessage, {
    _i1.Transaction? transaction,
  }) async {
    if (directMessage.id == null) {
      throw ArgumentError.notNull('directMessage.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $directMessage = directMessage.copyWith(receiverId: user.id);
    await session.db.updateRow<_i4.DirectMessage>(
      $directMessage,
      columns: [_i4.DirectMessage.t.receiverId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [Post]
  /// by setting the [Post]'s foreign key `_userShitlistUserId` to refer to this [User].
  Future<void> shitlist(
    _i1.Session session,
    User user,
    _i5.Post post, {
    _i1.Transaction? transaction,
  }) async {
    if (post.id == null) {
      throw ArgumentError.notNull('post.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $post = _i5.PostImplicit(
      post,
      $_userShitlistUserId: user.id,
    );
    await session.db.updateRow<_i5.Post>(
      $post,
      columns: [_i5.Post.t.$_userShitlistUserId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [Friends]
  /// by setting the [Friends]'s foreign key `friendsId` to refer to this [User].
  Future<void> friends(
    _i1.Session session,
    User user,
    _i7.Friends friends, {
    _i1.Transaction? transaction,
  }) async {
    if (friends.id == null) {
      throw ArgumentError.notNull('friends.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $friends = friends.copyWith(friendsId: user.id);
    await session.db.updateRow<_i7.Friends>(
      $friends,
      columns: [_i7.Friends.t.friendsId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [Friends]
  /// by setting the [Friends]'s foreign key `friendsById` to refer to this [User].
  Future<void> friendsBy(
    _i1.Session session,
    User user,
    _i7.Friends friends, {
    _i1.Transaction? transaction,
  }) async {
    if (friends.id == null) {
      throw ArgumentError.notNull('friends.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $friends = friends.copyWith(friendsById: user.id);
    await session.db.updateRow<_i7.Friends>(
      $friends,
      columns: [_i7.Friends.t.friendsById],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [Blocked]
  /// by setting the [Blocked]'s foreign key `blockedId` to refer to this [User].
  Future<void> blocked(
    _i1.Session session,
    User user,
    _i8.Blocked blocked, {
    _i1.Transaction? transaction,
  }) async {
    if (blocked.id == null) {
      throw ArgumentError.notNull('blocked.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $blocked = blocked.copyWith(blockedId: user.id);
    await session.db.updateRow<_i8.Blocked>(
      $blocked,
      columns: [_i8.Blocked.t.blockedId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [Blocked]
  /// by setting the [Blocked]'s foreign key `blockedById` to refer to this [User].
  Future<void> blockedBy(
    _i1.Session session,
    User user,
    _i8.Blocked blocked, {
    _i1.Transaction? transaction,
  }) async {
    if (blocked.id == null) {
      throw ArgumentError.notNull('blocked.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $blocked = blocked.copyWith(blockedById: user.id);
    await session.db.updateRow<_i8.Blocked>(
      $blocked,
      columns: [_i8.Blocked.t.blockedById],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [Message]
  /// by setting the [Message]'s foreign key `ownerId` to refer to this [User].
  Future<void> messages(
    _i1.Session session,
    User user,
    _i9.Message message, {
    _i1.Transaction? transaction,
  }) async {
    if (message.id == null) {
      throw ArgumentError.notNull('message.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $message = message.copyWith(ownerId: user.id);
    await session.db.updateRow<_i9.Message>(
      $message,
      columns: [_i9.Message.t.ownerId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [FriendShipRequest]
  /// by setting the [FriendShipRequest]'s foreign key `friendId` to refer to this [User].
  Future<void> requests(
    _i1.Session session,
    User user,
    _i10.FriendShipRequest friendShipRequest, {
    _i1.Transaction? transaction,
  }) async {
    if (friendShipRequest.id == null) {
      throw ArgumentError.notNull('friendShipRequest.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $friendShipRequest = friendShipRequest.copyWith(friendId: user.id);
    await session.db.updateRow<_i10.FriendShipRequest>(
      $friendShipRequest,
      columns: [_i10.FriendShipRequest.t.friendId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [User] and the given [FriendShipRequest]
  /// by setting the [FriendShipRequest]'s foreign key `friendbyId` to refer to this [User].
  Future<void> requestsBy(
    _i1.Session session,
    User user,
    _i10.FriendShipRequest friendShipRequest, {
    _i1.Transaction? transaction,
  }) async {
    if (friendShipRequest.id == null) {
      throw ArgumentError.notNull('friendShipRequest.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $friendShipRequest = friendShipRequest.copyWith(friendbyId: user.id);
    await session.db.updateRow<_i10.FriendShipRequest>(
      $friendShipRequest,
      columns: [_i10.FriendShipRequest.t.friendbyId],
      transaction: transaction,
    );
  }
}

class UserDetachRepository {
  const UserDetachRepository._();

  /// Detaches the relation between this [User] and the given [Post]
  /// by setting the [Post]'s foreign key `_userShitlistUserId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> shitlist(
    _i1.Session session,
    List<_i5.Post> post, {
    _i1.Transaction? transaction,
  }) async {
    if (post.any((e) => e.id == null)) {
      throw ArgumentError.notNull('post.id');
    }

    var $post = post
        .map((e) => _i5.PostImplicit(
              e,
              $_userShitlistUserId: null,
            ))
        .toList();
    await session.db.update<_i5.Post>(
      $post,
      columns: [_i5.Post.t.$_userShitlistUserId],
      transaction: transaction,
    );
  }
}

class UserDetachRowRepository {
  const UserDetachRowRepository._();

  /// Detaches the relation between this [User] and the given [Post]
  /// by setting the [Post]'s foreign key `_userShitlistUserId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> shitlist(
    _i1.Session session,
    _i5.Post post, {
    _i1.Transaction? transaction,
  }) async {
    if (post.id == null) {
      throw ArgumentError.notNull('post.id');
    }

    var $post = _i5.PostImplicit(
      post,
      $_userShitlistUserId: null,
    );
    await session.db.updateRow<_i5.Post>(
      $post,
      columns: [_i5.Post.t.$_userShitlistUserId],
      transaction: transaction,
    );
  }
}
