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
import 'dart:typed_data' as _i2;

abstract class Shitpic
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Shitpic._({
    this.id,
    required this.pic,
    required this.time,
    required this.size,
  });

  factory Shitpic({
    int? id,
    required _i2.ByteData pic,
    required DateTime time,
    required int size,
  }) = _ShitpicImpl;

  factory Shitpic.fromJson(Map<String, dynamic> jsonSerialization) {
    return Shitpic(
      id: jsonSerialization['id'] as int?,
      pic: _i1.ByteDataJsonExtension.fromJson(jsonSerialization['pic']),
      time: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['time']),
      size: jsonSerialization['size'] as int,
    );
  }

  static final t = ShitpicTable();

  static const db = ShitpicRepository._();

  @override
  int? id;

  _i2.ByteData pic;

  DateTime time;

  int size;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Shitpic]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Shitpic copyWith({
    int? id,
    _i2.ByteData? pic,
    DateTime? time,
    int? size,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'pic': pic.toJson(),
      'time': time.toJson(),
      'size': size,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'pic': pic.toJson(),
      'time': time.toJson(),
      'size': size,
    };
  }

  static ShitpicInclude include() {
    return ShitpicInclude._();
  }

  static ShitpicIncludeList includeList({
    _i1.WhereExpressionBuilder<ShitpicTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShitpicTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShitpicTable>? orderByList,
    ShitpicInclude? include,
  }) {
    return ShitpicIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Shitpic.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Shitpic.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShitpicImpl extends Shitpic {
  _ShitpicImpl({
    int? id,
    required _i2.ByteData pic,
    required DateTime time,
    required int size,
  }) : super._(
          id: id,
          pic: pic,
          time: time,
          size: size,
        );

  /// Returns a shallow copy of this [Shitpic]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Shitpic copyWith({
    Object? id = _Undefined,
    _i2.ByteData? pic,
    DateTime? time,
    int? size,
  }) {
    return Shitpic(
      id: id is int? ? id : this.id,
      pic: pic ?? this.pic.clone(),
      time: time ?? this.time,
      size: size ?? this.size,
    );
  }
}

class ShitpicTable extends _i1.Table<int?> {
  ShitpicTable({super.tableRelation}) : super(tableName: 'shitpic') {
    pic = _i1.ColumnByteData(
      'pic',
      this,
    );
    time = _i1.ColumnDateTime(
      'time',
      this,
    );
    size = _i1.ColumnInt(
      'size',
      this,
    );
  }

  late final _i1.ColumnByteData pic;

  late final _i1.ColumnDateTime time;

  late final _i1.ColumnInt size;

  @override
  List<_i1.Column> get columns => [
        id,
        pic,
        time,
        size,
      ];
}

class ShitpicInclude extends _i1.IncludeObject {
  ShitpicInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Shitpic.t;
}

class ShitpicIncludeList extends _i1.IncludeList {
  ShitpicIncludeList._({
    _i1.WhereExpressionBuilder<ShitpicTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Shitpic.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Shitpic.t;
}

class ShitpicRepository {
  const ShitpicRepository._();

  /// Returns a list of [Shitpic]s matching the given query parameters.
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
  Future<List<Shitpic>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShitpicTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShitpicTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShitpicTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Shitpic>(
      where: where?.call(Shitpic.t),
      orderBy: orderBy?.call(Shitpic.t),
      orderByList: orderByList?.call(Shitpic.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Shitpic] matching the given query parameters.
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
  Future<Shitpic?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShitpicTable>? where,
    int? offset,
    _i1.OrderByBuilder<ShitpicTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShitpicTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Shitpic>(
      where: where?.call(Shitpic.t),
      orderBy: orderBy?.call(Shitpic.t),
      orderByList: orderByList?.call(Shitpic.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Shitpic] by its [id] or null if no such row exists.
  Future<Shitpic?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Shitpic>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Shitpic]s in the list and returns the inserted rows.
  ///
  /// The returned [Shitpic]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Shitpic>> insert(
    _i1.Session session,
    List<Shitpic> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Shitpic>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Shitpic] and returns the inserted row.
  ///
  /// The returned [Shitpic] will have its `id` field set.
  Future<Shitpic> insertRow(
    _i1.Session session,
    Shitpic row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Shitpic>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Shitpic]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Shitpic>> update(
    _i1.Session session,
    List<Shitpic> rows, {
    _i1.ColumnSelections<ShitpicTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Shitpic>(
      rows,
      columns: columns?.call(Shitpic.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Shitpic]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Shitpic> updateRow(
    _i1.Session session,
    Shitpic row, {
    _i1.ColumnSelections<ShitpicTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Shitpic>(
      row,
      columns: columns?.call(Shitpic.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Shitpic]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Shitpic>> delete(
    _i1.Session session,
    List<Shitpic> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Shitpic>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Shitpic].
  Future<Shitpic> deleteRow(
    _i1.Session session,
    Shitpic row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Shitpic>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Shitpic>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShitpicTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Shitpic>(
      where: where(Shitpic.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShitpicTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Shitpic>(
      where: where?.call(Shitpic.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
