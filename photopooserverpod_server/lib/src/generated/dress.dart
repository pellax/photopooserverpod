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
import 'typeColor_enum.dart' as _i3;
import 'look.dart' as _i4;

abstract class Dress implements _i1.TableRow, _i1.ProtocolSerialization {
  Dress._({
    this.id,
    required this.image,
    required this.color,
    required this.hexColor,
    this.look,
  });

  factory Dress({
    int? id,
    required _i2.ByteData image,
    required _i3.ColorTypeEnum color,
    required String hexColor,
    List<_i4.Look>? look,
  }) = _DressImpl;

  factory Dress.fromJson(Map<String, dynamic> jsonSerialization) {
    return Dress(
      id: jsonSerialization['id'] as int?,
      image: _i1.ByteDataJsonExtension.fromJson(jsonSerialization['image']),
      color: _i3.ColorTypeEnum.fromJson((jsonSerialization['color'] as String)),
      hexColor: jsonSerialization['hexColor'] as String,
      look: (jsonSerialization['look'] as List?)
          ?.map((e) => _i4.Look.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = DressTable();

  static const db = DressRepository._();

  @override
  int? id;

  _i2.ByteData image;

  _i3.ColorTypeEnum color;

  String hexColor;

  List<_i4.Look>? look;

  @override
  _i1.Table get table => t;

  /// Returns a shallow copy of this [Dress]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Dress copyWith({
    int? id,
    _i2.ByteData? image,
    _i3.ColorTypeEnum? color,
    String? hexColor,
    List<_i4.Look>? look,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'image': image.toJson(),
      'color': color.toJson(),
      'hexColor': hexColor,
      if (look != null) 'look': look?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'image': image.toJson(),
      'color': color.toJson(),
      'hexColor': hexColor,
      if (look != null)
        'look': look?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static DressInclude include({_i4.LookIncludeList? look}) {
    return DressInclude._(look: look);
  }

  static DressIncludeList includeList({
    _i1.WhereExpressionBuilder<DressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DressTable>? orderByList,
    DressInclude? include,
  }) {
    return DressIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Dress.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Dress.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DressImpl extends Dress {
  _DressImpl({
    int? id,
    required _i2.ByteData image,
    required _i3.ColorTypeEnum color,
    required String hexColor,
    List<_i4.Look>? look,
  }) : super._(
          id: id,
          image: image,
          color: color,
          hexColor: hexColor,
          look: look,
        );

  /// Returns a shallow copy of this [Dress]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Dress copyWith({
    Object? id = _Undefined,
    _i2.ByteData? image,
    _i3.ColorTypeEnum? color,
    String? hexColor,
    Object? look = _Undefined,
  }) {
    return Dress(
      id: id is int? ? id : this.id,
      image: image ?? this.image.clone(),
      color: color ?? this.color,
      hexColor: hexColor ?? this.hexColor,
      look: look is List<_i4.Look>?
          ? look
          : this.look?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class DressTable extends _i1.Table {
  DressTable({super.tableRelation}) : super(tableName: 'dress') {
    image = _i1.ColumnByteData(
      'image',
      this,
    );
    color = _i1.ColumnEnum(
      'color',
      this,
      _i1.EnumSerialization.byName,
    );
    hexColor = _i1.ColumnString(
      'hexColor',
      this,
    );
  }

  late final _i1.ColumnByteData image;

  late final _i1.ColumnEnum<_i3.ColorTypeEnum> color;

  late final _i1.ColumnString hexColor;

  _i4.LookTable? ___look;

  _i1.ManyRelation<_i4.LookTable>? _look;

  _i4.LookTable get __look {
    if (___look != null) return ___look!;
    ___look = _i1.createRelationTable(
      relationFieldName: '__look',
      field: Dress.t.id,
      foreignField: _i4.Look.t.dressId,
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
      field: Dress.t.id,
      foreignField: _i4.Look.t.dressId,
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
        hexColor,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'look') {
      return __look;
    }
    return null;
  }
}

class DressInclude extends _i1.IncludeObject {
  DressInclude._({_i4.LookIncludeList? look}) {
    _look = look;
  }

  _i4.LookIncludeList? _look;

  @override
  Map<String, _i1.Include?> get includes => {'look': _look};

  @override
  _i1.Table get table => Dress.t;
}

class DressIncludeList extends _i1.IncludeList {
  DressIncludeList._({
    _i1.WhereExpressionBuilder<DressTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Dress.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Dress.t;
}

class DressRepository {
  const DressRepository._();

  final attach = const DressAttachRepository._();

  final attachRow = const DressAttachRowRepository._();

  final detach = const DressDetachRepository._();

  final detachRow = const DressDetachRowRepository._();

  /// Returns a list of [Dress]s matching the given query parameters.
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
  Future<List<Dress>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DressTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DressTable>? orderByList,
    _i1.Transaction? transaction,
    DressInclude? include,
  }) async {
    return session.db.find<Dress>(
      where: where?.call(Dress.t),
      orderBy: orderBy?.call(Dress.t),
      orderByList: orderByList?.call(Dress.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Dress] matching the given query parameters.
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
  Future<Dress?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DressTable>? where,
    int? offset,
    _i1.OrderByBuilder<DressTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DressTable>? orderByList,
    _i1.Transaction? transaction,
    DressInclude? include,
  }) async {
    return session.db.findFirstRow<Dress>(
      where: where?.call(Dress.t),
      orderBy: orderBy?.call(Dress.t),
      orderByList: orderByList?.call(Dress.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Dress] by its [id] or null if no such row exists.
  Future<Dress?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    DressInclude? include,
  }) async {
    return session.db.findById<Dress>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Dress]s in the list and returns the inserted rows.
  ///
  /// The returned [Dress]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Dress>> insert(
    _i1.Session session,
    List<Dress> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Dress>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Dress] and returns the inserted row.
  ///
  /// The returned [Dress] will have its `id` field set.
  Future<Dress> insertRow(
    _i1.Session session,
    Dress row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Dress>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Dress]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Dress>> update(
    _i1.Session session,
    List<Dress> rows, {
    _i1.ColumnSelections<DressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Dress>(
      rows,
      columns: columns?.call(Dress.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Dress]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Dress> updateRow(
    _i1.Session session,
    Dress row, {
    _i1.ColumnSelections<DressTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Dress>(
      row,
      columns: columns?.call(Dress.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Dress]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Dress>> delete(
    _i1.Session session,
    List<Dress> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Dress>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Dress].
  Future<Dress> deleteRow(
    _i1.Session session,
    Dress row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Dress>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Dress>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DressTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Dress>(
      where: where(Dress.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DressTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Dress>(
      where: where?.call(Dress.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class DressAttachRepository {
  const DressAttachRepository._();

  /// Creates a relation between this [Dress] and the given [Look]s
  /// by setting each [Look]'s foreign key `dressId` to refer to this [Dress].
  Future<void> look(
    _i1.Session session,
    Dress dress,
    List<_i4.Look> look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.any((e) => e.id == null)) {
      throw ArgumentError.notNull('look.id');
    }
    if (dress.id == null) {
      throw ArgumentError.notNull('dress.id');
    }

    var $look = look.map((e) => e.copyWith(dressId: dress.id)).toList();
    await session.db.update<_i4.Look>(
      $look,
      columns: [_i4.Look.t.dressId],
      transaction: transaction,
    );
  }
}

class DressAttachRowRepository {
  const DressAttachRowRepository._();

  /// Creates a relation between this [Dress] and the given [Look]
  /// by setting the [Look]'s foreign key `dressId` to refer to this [Dress].
  Future<void> look(
    _i1.Session session,
    Dress dress,
    _i4.Look look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }
    if (dress.id == null) {
      throw ArgumentError.notNull('dress.id');
    }

    var $look = look.copyWith(dressId: dress.id);
    await session.db.updateRow<_i4.Look>(
      $look,
      columns: [_i4.Look.t.dressId],
      transaction: transaction,
    );
  }
}

class DressDetachRepository {
  const DressDetachRepository._();

  /// Detaches the relation between this [Dress] and the given [Look]
  /// by setting the [Look]'s foreign key `dressId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> look(
    _i1.Session session,
    List<_i4.Look> look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.any((e) => e.id == null)) {
      throw ArgumentError.notNull('look.id');
    }

    var $look = look.map((e) => e.copyWith(dressId: null)).toList();
    await session.db.update<_i4.Look>(
      $look,
      columns: [_i4.Look.t.dressId],
      transaction: transaction,
    );
  }
}

class DressDetachRowRepository {
  const DressDetachRowRepository._();

  /// Detaches the relation between this [Dress] and the given [Look]
  /// by setting the [Look]'s foreign key `dressId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> look(
    _i1.Session session,
    _i4.Look look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }

    var $look = look.copyWith(dressId: null);
    await session.db.updateRow<_i4.Look>(
      $look,
      columns: [_i4.Look.t.dressId],
      transaction: transaction,
    );
  }
}
