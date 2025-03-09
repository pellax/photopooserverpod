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

abstract class Blocked implements _i1.TableRow, _i1.ProtocolSerialization {
  Blocked._({
    this.id,
    required this.blockedId,
    this.blocked,
    required this.blockedById,
    this.blockedBy,
  });

  factory Blocked({
    int? id,
    required int blockedId,
    _i2.User? blocked,
    required int blockedById,
    _i2.User? blockedBy,
  }) = _BlockedImpl;

  factory Blocked.fromJson(Map<String, dynamic> jsonSerialization) {
    return Blocked(
      id: jsonSerialization['id'] as int?,
      blockedId: jsonSerialization['blockedId'] as int,
      blocked: jsonSerialization['blocked'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['blocked'] as Map<String, dynamic>)),
      blockedById: jsonSerialization['blockedById'] as int,
      blockedBy: jsonSerialization['blockedBy'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['blockedBy'] as Map<String, dynamic>)),
    );
  }

  static final t = BlockedTable();

  static const db = BlockedRepository._();

  @override
  int? id;

  int blockedId;

  _i2.User? blocked;

  int blockedById;

  _i2.User? blockedBy;

  @override
  _i1.Table get table => t;

  /// Returns a shallow copy of this [Blocked]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Blocked copyWith({
    int? id,
    int? blockedId,
    _i2.User? blocked,
    int? blockedById,
    _i2.User? blockedBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'blockedId': blockedId,
      if (blocked != null) 'blocked': blocked?.toJson(),
      'blockedById': blockedById,
      if (blockedBy != null) 'blockedBy': blockedBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'blockedId': blockedId,
      if (blocked != null) 'blocked': blocked?.toJsonForProtocol(),
      'blockedById': blockedById,
      if (blockedBy != null) 'blockedBy': blockedBy?.toJsonForProtocol(),
    };
  }

  static BlockedInclude include({
    _i2.UserInclude? blocked,
    _i2.UserInclude? blockedBy,
  }) {
    return BlockedInclude._(
      blocked: blocked,
      blockedBy: blockedBy,
    );
  }

  static BlockedIncludeList includeList({
    _i1.WhereExpressionBuilder<BlockedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BlockedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BlockedTable>? orderByList,
    BlockedInclude? include,
  }) {
    return BlockedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Blocked.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Blocked.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BlockedImpl extends Blocked {
  _BlockedImpl({
    int? id,
    required int blockedId,
    _i2.User? blocked,
    required int blockedById,
    _i2.User? blockedBy,
  }) : super._(
          id: id,
          blockedId: blockedId,
          blocked: blocked,
          blockedById: blockedById,
          blockedBy: blockedBy,
        );

  /// Returns a shallow copy of this [Blocked]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Blocked copyWith({
    Object? id = _Undefined,
    int? blockedId,
    Object? blocked = _Undefined,
    int? blockedById,
    Object? blockedBy = _Undefined,
  }) {
    return Blocked(
      id: id is int? ? id : this.id,
      blockedId: blockedId ?? this.blockedId,
      blocked: blocked is _i2.User? ? blocked : this.blocked?.copyWith(),
      blockedById: blockedById ?? this.blockedById,
      blockedBy:
          blockedBy is _i2.User? ? blockedBy : this.blockedBy?.copyWith(),
    );
  }
}

class BlockedTable extends _i1.Table {
  BlockedTable({super.tableRelation}) : super(tableName: 'blocked') {
    blockedId = _i1.ColumnInt(
      'blockedId',
      this,
    );
    blockedById = _i1.ColumnInt(
      'blockedById',
      this,
    );
  }

  late final _i1.ColumnInt blockedId;

  _i2.UserTable? _blocked;

  late final _i1.ColumnInt blockedById;

  _i2.UserTable? _blockedBy;

  _i2.UserTable get blocked {
    if (_blocked != null) return _blocked!;
    _blocked = _i1.createRelationTable(
      relationFieldName: 'blocked',
      field: Blocked.t.blockedId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _blocked!;
  }

  _i2.UserTable get blockedBy {
    if (_blockedBy != null) return _blockedBy!;
    _blockedBy = _i1.createRelationTable(
      relationFieldName: 'blockedBy',
      field: Blocked.t.blockedById,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _blockedBy!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        blockedId,
        blockedById,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'blocked') {
      return blocked;
    }
    if (relationField == 'blockedBy') {
      return blockedBy;
    }
    return null;
  }
}

class BlockedInclude extends _i1.IncludeObject {
  BlockedInclude._({
    _i2.UserInclude? blocked,
    _i2.UserInclude? blockedBy,
  }) {
    _blocked = blocked;
    _blockedBy = blockedBy;
  }

  _i2.UserInclude? _blocked;

  _i2.UserInclude? _blockedBy;

  @override
  Map<String, _i1.Include?> get includes => {
        'blocked': _blocked,
        'blockedBy': _blockedBy,
      };

  @override
  _i1.Table get table => Blocked.t;
}

class BlockedIncludeList extends _i1.IncludeList {
  BlockedIncludeList._({
    _i1.WhereExpressionBuilder<BlockedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Blocked.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Blocked.t;
}

class BlockedRepository {
  const BlockedRepository._();

  final attachRow = const BlockedAttachRowRepository._();

  /// Returns a list of [Blocked]s matching the given query parameters.
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
  Future<List<Blocked>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BlockedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BlockedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BlockedTable>? orderByList,
    _i1.Transaction? transaction,
    BlockedInclude? include,
  }) async {
    return session.db.find<Blocked>(
      where: where?.call(Blocked.t),
      orderBy: orderBy?.call(Blocked.t),
      orderByList: orderByList?.call(Blocked.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Blocked] matching the given query parameters.
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
  Future<Blocked?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BlockedTable>? where,
    int? offset,
    _i1.OrderByBuilder<BlockedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BlockedTable>? orderByList,
    _i1.Transaction? transaction,
    BlockedInclude? include,
  }) async {
    return session.db.findFirstRow<Blocked>(
      where: where?.call(Blocked.t),
      orderBy: orderBy?.call(Blocked.t),
      orderByList: orderByList?.call(Blocked.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Blocked] by its [id] or null if no such row exists.
  Future<Blocked?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BlockedInclude? include,
  }) async {
    return session.db.findById<Blocked>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Blocked]s in the list and returns the inserted rows.
  ///
  /// The returned [Blocked]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Blocked>> insert(
    _i1.Session session,
    List<Blocked> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Blocked>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Blocked] and returns the inserted row.
  ///
  /// The returned [Blocked] will have its `id` field set.
  Future<Blocked> insertRow(
    _i1.Session session,
    Blocked row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Blocked>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Blocked]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Blocked>> update(
    _i1.Session session,
    List<Blocked> rows, {
    _i1.ColumnSelections<BlockedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Blocked>(
      rows,
      columns: columns?.call(Blocked.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Blocked]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Blocked> updateRow(
    _i1.Session session,
    Blocked row, {
    _i1.ColumnSelections<BlockedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Blocked>(
      row,
      columns: columns?.call(Blocked.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Blocked]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Blocked>> delete(
    _i1.Session session,
    List<Blocked> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Blocked>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Blocked].
  Future<Blocked> deleteRow(
    _i1.Session session,
    Blocked row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Blocked>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Blocked>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BlockedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Blocked>(
      where: where(Blocked.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BlockedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Blocked>(
      where: where?.call(Blocked.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BlockedAttachRowRepository {
  const BlockedAttachRowRepository._();

  /// Creates a relation between the given [Blocked] and [User]
  /// by setting the [Blocked]'s foreign key `blockedId` to refer to the [User].
  Future<void> blocked(
    _i1.Session session,
    Blocked blocked,
    _i2.User nestedBlocked, {
    _i1.Transaction? transaction,
  }) async {
    if (blocked.id == null) {
      throw ArgumentError.notNull('blocked.id');
    }
    if (nestedBlocked.id == null) {
      throw ArgumentError.notNull('nestedBlocked.id');
    }

    var $blocked = blocked.copyWith(blockedId: nestedBlocked.id);
    await session.db.updateRow<Blocked>(
      $blocked,
      columns: [Blocked.t.blockedId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Blocked] and [User]
  /// by setting the [Blocked]'s foreign key `blockedById` to refer to the [User].
  Future<void> blockedBy(
    _i1.Session session,
    Blocked blocked,
    _i2.User blockedBy, {
    _i1.Transaction? transaction,
  }) async {
    if (blocked.id == null) {
      throw ArgumentError.notNull('blocked.id');
    }
    if (blockedBy.id == null) {
      throw ArgumentError.notNull('blockedBy.id');
    }

    var $blocked = blocked.copyWith(blockedById: blockedBy.id);
    await session.db.updateRow<Blocked>(
      $blocked,
      columns: [Blocked.t.blockedById],
      transaction: transaction,
    );
  }
}
