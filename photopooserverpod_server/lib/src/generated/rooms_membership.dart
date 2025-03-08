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
import 'user.dart' as _i2;
import 'room.dart' as _i3;

abstract class RoomsMembership
    implements _i1.TableRow, _i1.ProtocolSerialization {
  RoomsMembership._({
    this.id,
    required this.userId,
    this.user,
    required this.roomId,
    this.room,
  });

  factory RoomsMembership({
    int? id,
    required int userId,
    _i2.User? user,
    required int roomId,
    _i3.Room? room,
  }) = _RoomsMembershipImpl;

  factory RoomsMembership.fromJson(Map<String, dynamic> jsonSerialization) {
    return RoomsMembership(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
      roomId: jsonSerialization['roomId'] as int,
      room: jsonSerialization['room'] == null
          ? null
          : _i3.Room.fromJson(
              (jsonSerialization['room'] as Map<String, dynamic>)),
    );
  }

  static final t = RoomsMembershipTable();

  static const db = RoomsMembershipRepository._();

  @override
  int? id;

  int userId;

  _i2.User? user;

  int roomId;

  _i3.Room? room;

  @override
  _i1.Table get table => t;

  /// Returns a shallow copy of this [RoomsMembership]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  RoomsMembership copyWith({
    int? id,
    int? userId,
    _i2.User? user,
    int? roomId,
    _i3.Room? room,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'roomId': roomId,
      if (room != null) 'room': room?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
      'roomId': roomId,
      if (room != null) 'room': room?.toJsonForProtocol(),
    };
  }

  static RoomsMembershipInclude include({
    _i2.UserInclude? user,
    _i3.RoomInclude? room,
  }) {
    return RoomsMembershipInclude._(
      user: user,
      room: room,
    );
  }

  static RoomsMembershipIncludeList includeList({
    _i1.WhereExpressionBuilder<RoomsMembershipTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RoomsMembershipTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RoomsMembershipTable>? orderByList,
    RoomsMembershipInclude? include,
  }) {
    return RoomsMembershipIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RoomsMembership.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RoomsMembership.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RoomsMembershipImpl extends RoomsMembership {
  _RoomsMembershipImpl({
    int? id,
    required int userId,
    _i2.User? user,
    required int roomId,
    _i3.Room? room,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          roomId: roomId,
          room: room,
        );

  /// Returns a shallow copy of this [RoomsMembership]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  RoomsMembership copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    int? roomId,
    Object? room = _Undefined,
  }) {
    return RoomsMembership(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
      roomId: roomId ?? this.roomId,
      room: room is _i3.Room? ? room : this.room?.copyWith(),
    );
  }
}

class RoomsMembershipTable extends _i1.Table {
  RoomsMembershipTable({super.tableRelation})
      : super(tableName: 'rooms_membership') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    roomId = _i1.ColumnInt(
      'roomId',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  late final _i1.ColumnInt roomId;

  _i3.RoomTable? _room;

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: RoomsMembership.t.userId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i3.RoomTable get room {
    if (_room != null) return _room!;
    _room = _i1.createRelationTable(
      relationFieldName: 'room',
      field: RoomsMembership.t.roomId,
      foreignField: _i3.Room.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.RoomTable(tableRelation: foreignTableRelation),
    );
    return _room!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        roomId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'room') {
      return room;
    }
    return null;
  }
}

class RoomsMembershipInclude extends _i1.IncludeObject {
  RoomsMembershipInclude._({
    _i2.UserInclude? user,
    _i3.RoomInclude? room,
  }) {
    _user = user;
    _room = room;
  }

  _i2.UserInclude? _user;

  _i3.RoomInclude? _room;

  @override
  Map<String, _i1.Include?> get includes => {
        'user': _user,
        'room': _room,
      };

  @override
  _i1.Table get table => RoomsMembership.t;
}

class RoomsMembershipIncludeList extends _i1.IncludeList {
  RoomsMembershipIncludeList._({
    _i1.WhereExpressionBuilder<RoomsMembershipTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RoomsMembership.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => RoomsMembership.t;
}

class RoomsMembershipRepository {
  const RoomsMembershipRepository._();

  final attachRow = const RoomsMembershipAttachRowRepository._();

  /// Returns a list of [RoomsMembership]s matching the given query parameters.
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
  Future<List<RoomsMembership>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RoomsMembershipTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RoomsMembershipTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RoomsMembershipTable>? orderByList,
    _i1.Transaction? transaction,
    RoomsMembershipInclude? include,
  }) async {
    return session.db.find<RoomsMembership>(
      where: where?.call(RoomsMembership.t),
      orderBy: orderBy?.call(RoomsMembership.t),
      orderByList: orderByList?.call(RoomsMembership.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [RoomsMembership] matching the given query parameters.
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
  Future<RoomsMembership?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RoomsMembershipTable>? where,
    int? offset,
    _i1.OrderByBuilder<RoomsMembershipTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RoomsMembershipTable>? orderByList,
    _i1.Transaction? transaction,
    RoomsMembershipInclude? include,
  }) async {
    return session.db.findFirstRow<RoomsMembership>(
      where: where?.call(RoomsMembership.t),
      orderBy: orderBy?.call(RoomsMembership.t),
      orderByList: orderByList?.call(RoomsMembership.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [RoomsMembership] by its [id] or null if no such row exists.
  Future<RoomsMembership?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    RoomsMembershipInclude? include,
  }) async {
    return session.db.findById<RoomsMembership>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [RoomsMembership]s in the list and returns the inserted rows.
  ///
  /// The returned [RoomsMembership]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<RoomsMembership>> insert(
    _i1.Session session,
    List<RoomsMembership> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<RoomsMembership>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [RoomsMembership] and returns the inserted row.
  ///
  /// The returned [RoomsMembership] will have its `id` field set.
  Future<RoomsMembership> insertRow(
    _i1.Session session,
    RoomsMembership row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<RoomsMembership>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [RoomsMembership]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<RoomsMembership>> update(
    _i1.Session session,
    List<RoomsMembership> rows, {
    _i1.ColumnSelections<RoomsMembershipTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<RoomsMembership>(
      rows,
      columns: columns?.call(RoomsMembership.t),
      transaction: transaction,
    );
  }

  /// Updates a single [RoomsMembership]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<RoomsMembership> updateRow(
    _i1.Session session,
    RoomsMembership row, {
    _i1.ColumnSelections<RoomsMembershipTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<RoomsMembership>(
      row,
      columns: columns?.call(RoomsMembership.t),
      transaction: transaction,
    );
  }

  /// Deletes all [RoomsMembership]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<RoomsMembership>> delete(
    _i1.Session session,
    List<RoomsMembership> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RoomsMembership>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [RoomsMembership].
  Future<RoomsMembership> deleteRow(
    _i1.Session session,
    RoomsMembership row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<RoomsMembership>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<RoomsMembership>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RoomsMembershipTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<RoomsMembership>(
      where: where(RoomsMembership.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RoomsMembershipTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RoomsMembership>(
      where: where?.call(RoomsMembership.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class RoomsMembershipAttachRowRepository {
  const RoomsMembershipAttachRowRepository._();

  /// Creates a relation between the given [RoomsMembership] and [User]
  /// by setting the [RoomsMembership]'s foreign key `userId` to refer to the [User].
  Future<void> user(
    _i1.Session session,
    RoomsMembership roomsMembership,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (roomsMembership.id == null) {
      throw ArgumentError.notNull('roomsMembership.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $roomsMembership = roomsMembership.copyWith(userId: user.id);
    await session.db.updateRow<RoomsMembership>(
      $roomsMembership,
      columns: [RoomsMembership.t.userId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [RoomsMembership] and [Room]
  /// by setting the [RoomsMembership]'s foreign key `roomId` to refer to the [Room].
  Future<void> room(
    _i1.Session session,
    RoomsMembership roomsMembership,
    _i3.Room room, {
    _i1.Transaction? transaction,
  }) async {
    if (roomsMembership.id == null) {
      throw ArgumentError.notNull('roomsMembership.id');
    }
    if (room.id == null) {
      throw ArgumentError.notNull('room.id');
    }

    var $roomsMembership = roomsMembership.copyWith(roomId: room.id);
    await session.db.updateRow<RoomsMembership>(
      $roomsMembership,
      columns: [RoomsMembership.t.roomId],
      transaction: transaction,
    );
  }
}
