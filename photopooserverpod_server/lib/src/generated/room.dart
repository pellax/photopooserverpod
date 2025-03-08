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
import 'rooms_membership.dart' as _i2;

abstract class Room implements _i1.TableRow, _i1.ProtocolSerialization {
  Room._({
    this.id,
    required this.name,
    required this.description,
    required this.city,
    this.users,
  });

  factory Room({
    int? id,
    required String name,
    required String description,
    required String city,
    List<_i2.RoomsMembership>? users,
  }) = _RoomImpl;

  factory Room.fromJson(Map<String, dynamic> jsonSerialization) {
    return Room(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String,
      city: jsonSerialization['city'] as String,
      users: (jsonSerialization['users'] as List?)
          ?.map(
              (e) => _i2.RoomsMembership.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = RoomTable();

  static const db = RoomRepository._();

  @override
  int? id;

  String name;

  String description;

  String city;

  List<_i2.RoomsMembership>? users;

  @override
  _i1.Table get table => t;

  /// Returns a shallow copy of this [Room]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Room copyWith({
    int? id,
    String? name,
    String? description,
    String? city,
    List<_i2.RoomsMembership>? users,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'city': city,
      if (users != null) 'users': users?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'city': city,
      if (users != null)
        'users': users?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static RoomInclude include({_i2.RoomsMembershipIncludeList? users}) {
    return RoomInclude._(users: users);
  }

  static RoomIncludeList includeList({
    _i1.WhereExpressionBuilder<RoomTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RoomTable>? orderByList,
    RoomInclude? include,
  }) {
    return RoomIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Room.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Room.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RoomImpl extends Room {
  _RoomImpl({
    int? id,
    required String name,
    required String description,
    required String city,
    List<_i2.RoomsMembership>? users,
  }) : super._(
          id: id,
          name: name,
          description: description,
          city: city,
          users: users,
        );

  /// Returns a shallow copy of this [Room]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Room copyWith({
    Object? id = _Undefined,
    String? name,
    String? description,
    String? city,
    Object? users = _Undefined,
  }) {
    return Room(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      city: city ?? this.city,
      users: users is List<_i2.RoomsMembership>?
          ? users
          : this.users?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class RoomTable extends _i1.Table {
  RoomTable({super.tableRelation}) : super(tableName: 'room') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    city = _i1.ColumnString(
      'city',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnString city;

  _i2.RoomsMembershipTable? ___users;

  _i1.ManyRelation<_i2.RoomsMembershipTable>? _users;

  _i2.RoomsMembershipTable get __users {
    if (___users != null) return ___users!;
    ___users = _i1.createRelationTable(
      relationFieldName: '__users',
      field: Room.t.id,
      foreignField: _i2.RoomsMembership.t.roomId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.RoomsMembershipTable(tableRelation: foreignTableRelation),
    );
    return ___users!;
  }

  _i1.ManyRelation<_i2.RoomsMembershipTable> get users {
    if (_users != null) return _users!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'users',
      field: Room.t.id,
      foreignField: _i2.RoomsMembership.t.roomId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.RoomsMembershipTable(tableRelation: foreignTableRelation),
    );
    _users = _i1.ManyRelation<_i2.RoomsMembershipTable>(
      tableWithRelations: relationTable,
      table: _i2.RoomsMembershipTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _users!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        description,
        city,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'users') {
      return __users;
    }
    return null;
  }
}

class RoomInclude extends _i1.IncludeObject {
  RoomInclude._({_i2.RoomsMembershipIncludeList? users}) {
    _users = users;
  }

  _i2.RoomsMembershipIncludeList? _users;

  @override
  Map<String, _i1.Include?> get includes => {'users': _users};

  @override
  _i1.Table get table => Room.t;
}

class RoomIncludeList extends _i1.IncludeList {
  RoomIncludeList._({
    _i1.WhereExpressionBuilder<RoomTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Room.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Room.t;
}

class RoomRepository {
  const RoomRepository._();

  final attach = const RoomAttachRepository._();

  final attachRow = const RoomAttachRowRepository._();

  final detach = const RoomDetachRepository._();

  final detachRow = const RoomDetachRowRepository._();

  /// Returns a list of [Room]s matching the given query parameters.
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
  Future<List<Room>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RoomTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RoomTable>? orderByList,
    _i1.Transaction? transaction,
    RoomInclude? include,
  }) async {
    return session.db.find<Room>(
      where: where?.call(Room.t),
      orderBy: orderBy?.call(Room.t),
      orderByList: orderByList?.call(Room.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Room] matching the given query parameters.
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
  Future<Room?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RoomTable>? where,
    int? offset,
    _i1.OrderByBuilder<RoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RoomTable>? orderByList,
    _i1.Transaction? transaction,
    RoomInclude? include,
  }) async {
    return session.db.findFirstRow<Room>(
      where: where?.call(Room.t),
      orderBy: orderBy?.call(Room.t),
      orderByList: orderByList?.call(Room.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Room] by its [id] or null if no such row exists.
  Future<Room?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    RoomInclude? include,
  }) async {
    return session.db.findById<Room>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Room]s in the list and returns the inserted rows.
  ///
  /// The returned [Room]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Room>> insert(
    _i1.Session session,
    List<Room> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Room>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Room] and returns the inserted row.
  ///
  /// The returned [Room] will have its `id` field set.
  Future<Room> insertRow(
    _i1.Session session,
    Room row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Room>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Room]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Room>> update(
    _i1.Session session,
    List<Room> rows, {
    _i1.ColumnSelections<RoomTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Room>(
      rows,
      columns: columns?.call(Room.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Room]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Room> updateRow(
    _i1.Session session,
    Room row, {
    _i1.ColumnSelections<RoomTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Room>(
      row,
      columns: columns?.call(Room.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Room]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Room>> delete(
    _i1.Session session,
    List<Room> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Room>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Room].
  Future<Room> deleteRow(
    _i1.Session session,
    Room row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Room>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Room>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RoomTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Room>(
      where: where(Room.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RoomTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Room>(
      where: where?.call(Room.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class RoomAttachRepository {
  const RoomAttachRepository._();

  /// Creates a relation between this [Room] and the given [RoomsMembership]s
  /// by setting each [RoomsMembership]'s foreign key `roomId` to refer to this [Room].
  Future<void> users(
    _i1.Session session,
    Room room,
    List<_i2.RoomsMembership> roomsMembership, {
    _i1.Transaction? transaction,
  }) async {
    if (roomsMembership.any((e) => e.id == null)) {
      throw ArgumentError.notNull('roomsMembership.id');
    }
    if (room.id == null) {
      throw ArgumentError.notNull('room.id');
    }

    var $roomsMembership =
        roomsMembership.map((e) => e.copyWith(roomId: room.id)).toList();
    await session.db.update<_i2.RoomsMembership>(
      $roomsMembership,
      columns: [_i2.RoomsMembership.t.roomId],
      transaction: transaction,
    );
  }
}

class RoomAttachRowRepository {
  const RoomAttachRowRepository._();

  /// Creates a relation between this [Room] and the given [RoomsMembership]
  /// by setting the [RoomsMembership]'s foreign key `roomId` to refer to this [Room].
  Future<void> users(
    _i1.Session session,
    Room room,
    _i2.RoomsMembership roomsMembership, {
    _i1.Transaction? transaction,
  }) async {
    if (roomsMembership.id == null) {
      throw ArgumentError.notNull('roomsMembership.id');
    }
    if (room.id == null) {
      throw ArgumentError.notNull('room.id');
    }

    var $roomsMembership = roomsMembership.copyWith(roomId: room.id);
    await session.db.updateRow<_i2.RoomsMembership>(
      $roomsMembership,
      columns: [_i2.RoomsMembership.t.roomId],
      transaction: transaction,
    );
  }
}

class RoomDetachRepository {
  const RoomDetachRepository._();

  /// Detaches the relation between this [Room] and the given [RoomsMembership]
  /// by setting the [RoomsMembership]'s foreign key `roomId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> users(
    _i1.Session session,
    List<_i2.RoomsMembership> roomsMembership, {
    _i1.Transaction? transaction,
  }) async {
    if (roomsMembership.any((e) => e.id == null)) {
      throw ArgumentError.notNull('roomsMembership.id');
    }

    var $roomsMembership =
        roomsMembership.map((e) => e.copyWith(roomId: null)).toList();
    await session.db.update<_i2.RoomsMembership>(
      $roomsMembership,
      columns: [_i2.RoomsMembership.t.roomId],
      transaction: transaction,
    );
  }
}

class RoomDetachRowRepository {
  const RoomDetachRowRepository._();

  /// Detaches the relation between this [Room] and the given [RoomsMembership]
  /// by setting the [RoomsMembership]'s foreign key `roomId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> users(
    _i1.Session session,
    _i2.RoomsMembership roomsMembership, {
    _i1.Transaction? transaction,
  }) async {
    if (roomsMembership.id == null) {
      throw ArgumentError.notNull('roomsMembership.id');
    }

    var $roomsMembership = roomsMembership.copyWith(roomId: null);
    await session.db.updateRow<_i2.RoomsMembership>(
      $roomsMembership,
      columns: [_i2.RoomsMembership.t.roomId],
      transaction: transaction,
    );
  }
}
