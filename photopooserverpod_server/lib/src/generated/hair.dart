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
import 'typeColor_enum.dart' as _i2;
import 'lengthType_enum.dart' as _i3;
import 'typestyle_enum.dart' as _i4;
import 'dart:typed_data' as _i5;
import 'look.dart' as _i6;

abstract class Hair implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Hair._({
    this.id,
    required this.color,
    required this.length,
    required this.style,
    required this.image,
    this.look,
  });

  factory Hair({
    int? id,
    required _i2.ColorTypeEnum color,
    required _i3.TypeLengthEnum length,
    required _i4.TypeStyleEnum style,
    required _i5.ByteData image,
    List<_i6.Look>? look,
  }) = _HairImpl;

  factory Hair.fromJson(Map<String, dynamic> jsonSerialization) {
    return Hair(
      id: jsonSerialization['id'] as int?,
      color: _i2.ColorTypeEnum.fromJson((jsonSerialization['color'] as String)),
      length:
          _i3.TypeLengthEnum.fromJson((jsonSerialization['length'] as String)),
      style: _i4.TypeStyleEnum.fromJson((jsonSerialization['style'] as String)),
      image: _i1.ByteDataJsonExtension.fromJson(jsonSerialization['image']),
      look: (jsonSerialization['look'] as List?)
          ?.map((e) => _i6.Look.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = HairTable();

  static const db = HairRepository._();

  @override
  int? id;

  _i2.ColorTypeEnum color;

  _i3.TypeLengthEnum length;

  _i4.TypeStyleEnum style;

  _i5.ByteData image;

  List<_i6.Look>? look;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Hair]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Hair copyWith({
    int? id,
    _i2.ColorTypeEnum? color,
    _i3.TypeLengthEnum? length,
    _i4.TypeStyleEnum? style,
    _i5.ByteData? image,
    List<_i6.Look>? look,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'color': color.toJson(),
      'length': length.toJson(),
      'style': style.toJson(),
      'image': image.toJson(),
      if (look != null) 'look': look?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'color': color.toJson(),
      'length': length.toJson(),
      'style': style.toJson(),
      'image': image.toJson(),
      if (look != null)
        'look': look?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static HairInclude include({_i6.LookIncludeList? look}) {
    return HairInclude._(look: look);
  }

  static HairIncludeList includeList({
    _i1.WhereExpressionBuilder<HairTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<HairTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<HairTable>? orderByList,
    HairInclude? include,
  }) {
    return HairIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Hair.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Hair.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _HairImpl extends Hair {
  _HairImpl({
    int? id,
    required _i2.ColorTypeEnum color,
    required _i3.TypeLengthEnum length,
    required _i4.TypeStyleEnum style,
    required _i5.ByteData image,
    List<_i6.Look>? look,
  }) : super._(
          id: id,
          color: color,
          length: length,
          style: style,
          image: image,
          look: look,
        );

  /// Returns a shallow copy of this [Hair]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Hair copyWith({
    Object? id = _Undefined,
    _i2.ColorTypeEnum? color,
    _i3.TypeLengthEnum? length,
    _i4.TypeStyleEnum? style,
    _i5.ByteData? image,
    Object? look = _Undefined,
  }) {
    return Hair(
      id: id is int? ? id : this.id,
      color: color ?? this.color,
      length: length ?? this.length,
      style: style ?? this.style,
      image: image ?? this.image.clone(),
      look: look is List<_i6.Look>?
          ? look
          : this.look?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class HairTable extends _i1.Table<int?> {
  HairTable({super.tableRelation}) : super(tableName: 'hair') {
    color = _i1.ColumnEnum(
      'color',
      this,
      _i1.EnumSerialization.byName,
    );
    length = _i1.ColumnEnum(
      'length',
      this,
      _i1.EnumSerialization.byName,
    );
    style = _i1.ColumnEnum(
      'style',
      this,
      _i1.EnumSerialization.byName,
    );
    image = _i1.ColumnByteData(
      'image',
      this,
    );
  }

  late final _i1.ColumnEnum<_i2.ColorTypeEnum> color;

  late final _i1.ColumnEnum<_i3.TypeLengthEnum> length;

  late final _i1.ColumnEnum<_i4.TypeStyleEnum> style;

  late final _i1.ColumnByteData image;

  _i6.LookTable? ___look;

  _i1.ManyRelation<_i6.LookTable>? _look;

  _i6.LookTable get __look {
    if (___look != null) return ___look!;
    ___look = _i1.createRelationTable(
      relationFieldName: '__look',
      field: Hair.t.id,
      foreignField: _i6.Look.t.hairId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i6.LookTable(tableRelation: foreignTableRelation),
    );
    return ___look!;
  }

  _i1.ManyRelation<_i6.LookTable> get look {
    if (_look != null) return _look!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'look',
      field: Hair.t.id,
      foreignField: _i6.Look.t.hairId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i6.LookTable(tableRelation: foreignTableRelation),
    );
    _look = _i1.ManyRelation<_i6.LookTable>(
      tableWithRelations: relationTable,
      table: _i6.LookTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _look!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        color,
        length,
        style,
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

class HairInclude extends _i1.IncludeObject {
  HairInclude._({_i6.LookIncludeList? look}) {
    _look = look;
  }

  _i6.LookIncludeList? _look;

  @override
  Map<String, _i1.Include?> get includes => {'look': _look};

  @override
  _i1.Table<int?> get table => Hair.t;
}

class HairIncludeList extends _i1.IncludeList {
  HairIncludeList._({
    _i1.WhereExpressionBuilder<HairTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Hair.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Hair.t;
}

class HairRepository {
  const HairRepository._();

  final attach = const HairAttachRepository._();

  final attachRow = const HairAttachRowRepository._();

  final detach = const HairDetachRepository._();

  final detachRow = const HairDetachRowRepository._();

  /// Returns a list of [Hair]s matching the given query parameters.
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
  Future<List<Hair>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HairTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<HairTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<HairTable>? orderByList,
    _i1.Transaction? transaction,
    HairInclude? include,
  }) async {
    return session.db.find<Hair>(
      where: where?.call(Hair.t),
      orderBy: orderBy?.call(Hair.t),
      orderByList: orderByList?.call(Hair.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Hair] matching the given query parameters.
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
  Future<Hair?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HairTable>? where,
    int? offset,
    _i1.OrderByBuilder<HairTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<HairTable>? orderByList,
    _i1.Transaction? transaction,
    HairInclude? include,
  }) async {
    return session.db.findFirstRow<Hair>(
      where: where?.call(Hair.t),
      orderBy: orderBy?.call(Hair.t),
      orderByList: orderByList?.call(Hair.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Hair] by its [id] or null if no such row exists.
  Future<Hair?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    HairInclude? include,
  }) async {
    return session.db.findById<Hair>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Hair]s in the list and returns the inserted rows.
  ///
  /// The returned [Hair]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Hair>> insert(
    _i1.Session session,
    List<Hair> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Hair>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Hair] and returns the inserted row.
  ///
  /// The returned [Hair] will have its `id` field set.
  Future<Hair> insertRow(
    _i1.Session session,
    Hair row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Hair>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Hair]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Hair>> update(
    _i1.Session session,
    List<Hair> rows, {
    _i1.ColumnSelections<HairTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Hair>(
      rows,
      columns: columns?.call(Hair.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Hair]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Hair> updateRow(
    _i1.Session session,
    Hair row, {
    _i1.ColumnSelections<HairTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Hair>(
      row,
      columns: columns?.call(Hair.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Hair]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Hair>> delete(
    _i1.Session session,
    List<Hair> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Hair>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Hair].
  Future<Hair> deleteRow(
    _i1.Session session,
    Hair row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Hair>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Hair>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<HairTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Hair>(
      where: where(Hair.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<HairTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Hair>(
      where: where?.call(Hair.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class HairAttachRepository {
  const HairAttachRepository._();

  /// Creates a relation between this [Hair] and the given [Look]s
  /// by setting each [Look]'s foreign key `hairId` to refer to this [Hair].
  Future<void> look(
    _i1.Session session,
    Hair hair,
    List<_i6.Look> look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.any((e) => e.id == null)) {
      throw ArgumentError.notNull('look.id');
    }
    if (hair.id == null) {
      throw ArgumentError.notNull('hair.id');
    }

    var $look = look.map((e) => e.copyWith(hairId: hair.id)).toList();
    await session.db.update<_i6.Look>(
      $look,
      columns: [_i6.Look.t.hairId],
      transaction: transaction,
    );
  }
}

class HairAttachRowRepository {
  const HairAttachRowRepository._();

  /// Creates a relation between this [Hair] and the given [Look]
  /// by setting the [Look]'s foreign key `hairId` to refer to this [Hair].
  Future<void> look(
    _i1.Session session,
    Hair hair,
    _i6.Look look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }
    if (hair.id == null) {
      throw ArgumentError.notNull('hair.id');
    }

    var $look = look.copyWith(hairId: hair.id);
    await session.db.updateRow<_i6.Look>(
      $look,
      columns: [_i6.Look.t.hairId],
      transaction: transaction,
    );
  }
}

class HairDetachRepository {
  const HairDetachRepository._();

  /// Detaches the relation between this [Hair] and the given [Look]
  /// by setting the [Look]'s foreign key `hairId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> look(
    _i1.Session session,
    List<_i6.Look> look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.any((e) => e.id == null)) {
      throw ArgumentError.notNull('look.id');
    }

    var $look = look.map((e) => e.copyWith(hairId: null)).toList();
    await session.db.update<_i6.Look>(
      $look,
      columns: [_i6.Look.t.hairId],
      transaction: transaction,
    );
  }
}

class HairDetachRowRepository {
  const HairDetachRowRepository._();

  /// Detaches the relation between this [Hair] and the given [Look]
  /// by setting the [Look]'s foreign key `hairId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> look(
    _i1.Session session,
    _i6.Look look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }

    var $look = look.copyWith(hairId: null);
    await session.db.updateRow<_i6.Look>(
      $look,
      columns: [_i6.Look.t.hairId],
      transaction: transaction,
    );
  }
}
