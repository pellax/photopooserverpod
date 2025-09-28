/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'dart:typed_data' as _i2;
import 'look.dart' as _i3;

abstract class Face implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Face._({
    this.id,
    required this.image,
    this.look,
  });

  factory Face({
    int? id,
    required _i2.ByteData image,
    List<_i3.Look>? look,
  }) = _FaceImpl;

  factory Face.fromJson(Map<String, dynamic> jsonSerialization) {
    return Face(
      id: jsonSerialization['id'] as int?,
      image: _i1.ByteDataJsonExtension.fromJson(jsonSerialization['image']),
      look: (jsonSerialization['look'] as List?)
          ?.map((e) => _i3.Look.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = FaceTable();

  static const db = FaceRepository._();

  @override
  int? id;

  _i2.ByteData image;

  List<_i3.Look>? look;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Face]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Face copyWith({
    int? id,
    _i2.ByteData? image,
    List<_i3.Look>? look,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'image': image.toJson(),
      if (look != null) 'look': look?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'image': image.toJson(),
      if (look != null)
        'look': look?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static FaceInclude include({_i3.LookIncludeList? look}) {
    return FaceInclude._(look: look);
  }

  static FaceIncludeList includeList({
    _i1.WhereExpressionBuilder<FaceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FaceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FaceTable>? orderByList,
    FaceInclude? include,
  }) {
    return FaceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Face.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Face.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FaceImpl extends Face {
  _FaceImpl({
    int? id,
    required _i2.ByteData image,
    List<_i3.Look>? look,
  }) : super._(
          id: id,
          image: image,
          look: look,
        );

  /// Returns a shallow copy of this [Face]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Face copyWith({
    Object? id = _Undefined,
    _i2.ByteData? image,
    Object? look = _Undefined,
  }) {
    return Face(
      id: id is int? ? id : this.id,
      image: image ?? this.image.clone(),
      look: look is List<_i3.Look>?
          ? look
          : this.look?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class FaceTable extends _i1.Table<int?> {
  FaceTable({super.tableRelation}) : super(tableName: 'face') {
    image = _i1.ColumnByteData(
      'image',
      this,
    );
  }

  late final _i1.ColumnByteData image;

  _i3.LookTable? ___look;

  _i1.ManyRelation<_i3.LookTable>? _look;

  _i3.LookTable get __look {
    if (___look != null) return ___look!;
    ___look = _i1.createRelationTable(
      relationFieldName: '__look',
      field: Face.t.id,
      foreignField: _i3.Look.t.faceId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.LookTable(tableRelation: foreignTableRelation),
    );
    return ___look!;
  }

  _i1.ManyRelation<_i3.LookTable> get look {
    if (_look != null) return _look!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'look',
      field: Face.t.id,
      foreignField: _i3.Look.t.faceId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.LookTable(tableRelation: foreignTableRelation),
    );
    _look = _i1.ManyRelation<_i3.LookTable>(
      tableWithRelations: relationTable,
      table: _i3.LookTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _look!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        image,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'look') {
      return __look;
    }
    return null;
  }
}

class FaceInclude extends _i1.IncludeObject {
  FaceInclude._({_i3.LookIncludeList? look}) {
    _look = look;
  }

  _i3.LookIncludeList? _look;

  @override
  Map<String, _i1.Include?> get includes => {'look': _look};

  @override
  _i1.Table<int?> get table => Face.t;
}

class FaceIncludeList extends _i1.IncludeList {
  FaceIncludeList._({
    _i1.WhereExpressionBuilder<FaceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Face.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Face.t;
}

class FaceRepository {
  const FaceRepository._();

  final attach = const FaceAttachRepository._();

  final attachRow = const FaceAttachRowRepository._();

  final detach = const FaceDetachRepository._();

  final detachRow = const FaceDetachRowRepository._();

  /// Returns a list of [Face]s matching the given query parameters.
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
  Future<List<Face>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FaceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FaceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FaceTable>? orderByList,
    _i1.Transaction? transaction,
    FaceInclude? include,
  }) async {
    return session.db.find<Face>(
      where: where?.call(Face.t),
      orderBy: orderBy?.call(Face.t),
      orderByList: orderByList?.call(Face.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Face] matching the given query parameters.
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
  Future<Face?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FaceTable>? where,
    int? offset,
    _i1.OrderByBuilder<FaceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FaceTable>? orderByList,
    _i1.Transaction? transaction,
    FaceInclude? include,
  }) async {
    return session.db.findFirstRow<Face>(
      where: where?.call(Face.t),
      orderBy: orderBy?.call(Face.t),
      orderByList: orderByList?.call(Face.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Face] by its [id] or null if no such row exists.
  Future<Face?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    FaceInclude? include,
  }) async {
    return session.db.findById<Face>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Face]s in the list and returns the inserted rows.
  ///
  /// The returned [Face]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Face>> insert(
    _i1.Session session,
    List<Face> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Face>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Face] and returns the inserted row.
  ///
  /// The returned [Face] will have its `id` field set.
  Future<Face> insertRow(
    _i1.Session session,
    Face row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Face>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Face]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Face>> update(
    _i1.Session session,
    List<Face> rows, {
    _i1.ColumnSelections<FaceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Face>(
      rows,
      columns: columns?.call(Face.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Face]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Face> updateRow(
    _i1.Session session,
    Face row, {
    _i1.ColumnSelections<FaceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Face>(
      row,
      columns: columns?.call(Face.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Face]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Face>> delete(
    _i1.Session session,
    List<Face> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Face>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Face].
  Future<Face> deleteRow(
    _i1.Session session,
    Face row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Face>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Face>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FaceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Face>(
      where: where(Face.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FaceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Face>(
      where: where?.call(Face.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class FaceAttachRepository {
  const FaceAttachRepository._();

  /// Creates a relation between this [Face] and the given [Look]s
  /// by setting each [Look]'s foreign key `faceId` to refer to this [Face].
  Future<void> look(
    _i1.Session session,
    Face face,
    List<_i3.Look> look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.any((e) => e.id == null)) {
      throw ArgumentError.notNull('look.id');
    }
    if (face.id == null) {
      throw ArgumentError.notNull('face.id');
    }

    var $look = look.map((e) => e.copyWith(faceId: face.id)).toList();
    await session.db.update<_i3.Look>(
      $look,
      columns: [_i3.Look.t.faceId],
      transaction: transaction,
    );
  }
}

class FaceAttachRowRepository {
  const FaceAttachRowRepository._();

  /// Creates a relation between this [Face] and the given [Look]
  /// by setting the [Look]'s foreign key `faceId` to refer to this [Face].
  Future<void> look(
    _i1.Session session,
    Face face,
    _i3.Look look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }
    if (face.id == null) {
      throw ArgumentError.notNull('face.id');
    }

    var $look = look.copyWith(faceId: face.id);
    await session.db.updateRow<_i3.Look>(
      $look,
      columns: [_i3.Look.t.faceId],
      transaction: transaction,
    );
  }
}

class FaceDetachRepository {
  const FaceDetachRepository._();

  /// Detaches the relation between this [Face] and the given [Look]
  /// by setting the [Look]'s foreign key `faceId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> look(
    _i1.Session session,
    List<_i3.Look> look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.any((e) => e.id == null)) {
      throw ArgumentError.notNull('look.id');
    }

    var $look = look.map((e) => e.copyWith(faceId: null)).toList();
    await session.db.update<_i3.Look>(
      $look,
      columns: [_i3.Look.t.faceId],
      transaction: transaction,
    );
  }
}

class FaceDetachRowRepository {
  const FaceDetachRowRepository._();

  /// Detaches the relation between this [Face] and the given [Look]
  /// by setting the [Look]'s foreign key `faceId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> look(
    _i1.Session session,
    _i3.Look look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }

    var $look = look.copyWith(faceId: null);
    await session.db.updateRow<_i3.Look>(
      $look,
      columns: [_i3.Look.t.faceId],
      transaction: transaction,
    );
  }
}
