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
import 'typeColor_enum.dart' as _i3;
import 'look.dart' as _i4;

abstract class Shoes implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Shoes._({
    this.id,
    required this.image,
    required this.color,
    this.look,
  });

  factory Shoes({
    int? id,
    required _i2.ByteData image,
    required _i3.ColorTypeEnum color,
    List<_i4.Look>? look,
  }) = _ShoesImpl;

  factory Shoes.fromJson(Map<String, dynamic> jsonSerialization) {
    return Shoes(
      id: jsonSerialization['id'] as int?,
      image: _i1.ByteDataJsonExtension.fromJson(jsonSerialization['image']),
      color: _i3.ColorTypeEnum.fromJson((jsonSerialization['color'] as String)),
      look: (jsonSerialization['look'] as List?)
          ?.map((e) => _i4.Look.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = ShoesTable();

  static const db = ShoesRepository._();

  @override
  int? id;

  _i2.ByteData image;

  _i3.ColorTypeEnum color;

  List<_i4.Look>? look;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Shoes]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Shoes copyWith({
    int? id,
    _i2.ByteData? image,
    _i3.ColorTypeEnum? color,
    List<_i4.Look>? look,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'image': image.toJson(),
      'color': color.toJson(),
      if (look != null) 'look': look?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'image': image.toJson(),
      'color': color.toJson(),
      if (look != null)
        'look': look?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static ShoesInclude include({_i4.LookIncludeList? look}) {
    return ShoesInclude._(look: look);
  }

  static ShoesIncludeList includeList({
    _i1.WhereExpressionBuilder<ShoesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShoesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShoesTable>? orderByList,
    ShoesInclude? include,
  }) {
    return ShoesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Shoes.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Shoes.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShoesImpl extends Shoes {
  _ShoesImpl({
    int? id,
    required _i2.ByteData image,
    required _i3.ColorTypeEnum color,
    List<_i4.Look>? look,
  }) : super._(
          id: id,
          image: image,
          color: color,
          look: look,
        );

  /// Returns a shallow copy of this [Shoes]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Shoes copyWith({
    Object? id = _Undefined,
    _i2.ByteData? image,
    _i3.ColorTypeEnum? color,
    Object? look = _Undefined,
  }) {
    return Shoes(
      id: id is int? ? id : this.id,
      image: image ?? this.image.clone(),
      color: color ?? this.color,
      look: look is List<_i4.Look>?
          ? look
          : this.look?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class ShoesTable extends _i1.Table<int?> {
  ShoesTable({super.tableRelation}) : super(tableName: 'shoes') {
    image = _i1.ColumnByteData(
      'image',
      this,
    );
    color = _i1.ColumnEnum(
      'color',
      this,
      _i1.EnumSerialization.byName,
    );
  }

  late final _i1.ColumnByteData image;

  late final _i1.ColumnEnum<_i3.ColorTypeEnum> color;

  _i4.LookTable? ___look;

  _i1.ManyRelation<_i4.LookTable>? _look;

  _i4.LookTable get __look {
    if (___look != null) return ___look!;
    ___look = _i1.createRelationTable(
      relationFieldName: '__look',
      field: Shoes.t.id,
      foreignField: _i4.Look.t.shoesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.LookTable(tableRelation: foreignTableRelation),
    );
    return ___look!;
  }

  _i1.ManyRelation<_i4.LookTable> get look {
    if (_look != null) return _look!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'look',
      field: Shoes.t.id,
      foreignField: _i4.Look.t.shoesId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.LookTable(tableRelation: foreignTableRelation),
    );
    _look = _i1.ManyRelation<_i4.LookTable>(
      tableWithRelations: relationTable,
      table: _i4.LookTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _look!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        image,
        color,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'look') {
      return __look;
    }
    return null;
  }
}

class ShoesInclude extends _i1.IncludeObject {
  ShoesInclude._({_i4.LookIncludeList? look}) {
    _look = look;
  }

  _i4.LookIncludeList? _look;

  @override
  Map<String, _i1.Include?> get includes => {'look': _look};

  @override
  _i1.Table<int?> get table => Shoes.t;
}

class ShoesIncludeList extends _i1.IncludeList {
  ShoesIncludeList._({
    _i1.WhereExpressionBuilder<ShoesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Shoes.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Shoes.t;
}

class ShoesRepository {
  const ShoesRepository._();

  final attach = const ShoesAttachRepository._();

  final attachRow = const ShoesAttachRowRepository._();

  /// Returns a list of [Shoes]s matching the given query parameters.
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
  Future<List<Shoes>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShoesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShoesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShoesTable>? orderByList,
    _i1.Transaction? transaction,
    ShoesInclude? include,
  }) async {
    return session.db.find<Shoes>(
      where: where?.call(Shoes.t),
      orderBy: orderBy?.call(Shoes.t),
      orderByList: orderByList?.call(Shoes.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Shoes] matching the given query parameters.
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
  Future<Shoes?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShoesTable>? where,
    int? offset,
    _i1.OrderByBuilder<ShoesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShoesTable>? orderByList,
    _i1.Transaction? transaction,
    ShoesInclude? include,
  }) async {
    return session.db.findFirstRow<Shoes>(
      where: where?.call(Shoes.t),
      orderBy: orderBy?.call(Shoes.t),
      orderByList: orderByList?.call(Shoes.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Shoes] by its [id] or null if no such row exists.
  Future<Shoes?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ShoesInclude? include,
  }) async {
    return session.db.findById<Shoes>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Shoes]s in the list and returns the inserted rows.
  ///
  /// The returned [Shoes]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Shoes>> insert(
    _i1.Session session,
    List<Shoes> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Shoes>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Shoes] and returns the inserted row.
  ///
  /// The returned [Shoes] will have its `id` field set.
  Future<Shoes> insertRow(
    _i1.Session session,
    Shoes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Shoes>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Shoes]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Shoes>> update(
    _i1.Session session,
    List<Shoes> rows, {
    _i1.ColumnSelections<ShoesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Shoes>(
      rows,
      columns: columns?.call(Shoes.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Shoes]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Shoes> updateRow(
    _i1.Session session,
    Shoes row, {
    _i1.ColumnSelections<ShoesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Shoes>(
      row,
      columns: columns?.call(Shoes.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Shoes]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Shoes>> delete(
    _i1.Session session,
    List<Shoes> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Shoes>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Shoes].
  Future<Shoes> deleteRow(
    _i1.Session session,
    Shoes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Shoes>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Shoes>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShoesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Shoes>(
      where: where(Shoes.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShoesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Shoes>(
      where: where?.call(Shoes.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ShoesAttachRepository {
  const ShoesAttachRepository._();

  /// Creates a relation between this [Shoes] and the given [Look]s
  /// by setting each [Look]'s foreign key `shoesId` to refer to this [Shoes].
  Future<void> look(
    _i1.Session session,
    Shoes shoes,
    List<_i4.Look> look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.any((e) => e.id == null)) {
      throw ArgumentError.notNull('look.id');
    }
    if (shoes.id == null) {
      throw ArgumentError.notNull('shoes.id');
    }

    var $look = look.map((e) => e.copyWith(shoesId: shoes.id)).toList();
    await session.db.update<_i4.Look>(
      $look,
      columns: [_i4.Look.t.shoesId],
      transaction: transaction,
    );
  }
}

class ShoesAttachRowRepository {
  const ShoesAttachRowRepository._();

  /// Creates a relation between this [Shoes] and the given [Look]
  /// by setting the [Look]'s foreign key `shoesId` to refer to this [Shoes].
  Future<void> look(
    _i1.Session session,
    Shoes shoes,
    _i4.Look look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }
    if (shoes.id == null) {
      throw ArgumentError.notNull('shoes.id');
    }

    var $look = look.copyWith(shoesId: shoes.id);
    await session.db.updateRow<_i4.Look>(
      $look,
      columns: [_i4.Look.t.shoesId],
      transaction: transaction,
    );
  }
}
