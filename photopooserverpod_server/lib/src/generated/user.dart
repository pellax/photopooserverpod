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
    };
  }

  static UserInclude include({
    _i3.RoomsMembershipIncludeList? rooms,
    _i4.DirectMessageIncludeList? dmto,
    _i4.DirectMessageIncludeList? dmfrom,
    _i5.PostIncludeList? shitlist,
  }) {
    return UserInclude._(
      rooms: rooms,
      dmto: dmto,
      dmfrom: dmfrom,
      shitlist: shitlist,
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

  @override
  List<_i1.Column> get columns => [
        id,
        username,
        passwrord,
        email,
        phone,
        age,
        diet,
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
    return null;
  }
}

class UserInclude extends _i1.IncludeObject {
  UserInclude._({
    _i3.RoomsMembershipIncludeList? rooms,
    _i4.DirectMessageIncludeList? dmto,
    _i4.DirectMessageIncludeList? dmfrom,
    _i5.PostIncludeList? shitlist,
  }) {
    _rooms = rooms;
    _dmto = dmto;
    _dmfrom = dmfrom;
    _shitlist = shitlist;
  }

  _i3.RoomsMembershipIncludeList? _rooms;

  _i4.DirectMessageIncludeList? _dmto;

  _i4.DirectMessageIncludeList? _dmfrom;

  _i5.PostIncludeList? _shitlist;

  @override
  Map<String, _i1.Include?> get includes => {
        'rooms': _rooms,
        'dmto': _dmto,
        'dmfrom': _dmfrom,
        'shitlist': _shitlist,
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
}

class UserAttachRowRepository {
  const UserAttachRowRepository._();

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
