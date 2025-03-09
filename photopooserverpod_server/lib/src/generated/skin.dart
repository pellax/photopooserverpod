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
import 'skinColorType_enum.dart' as _i2;
import 'look.dart' as _i3;

abstract class Skin implements _i1.TableRow, _i1.ProtocolSerialization {
  Skin._({
    this.id,
    required this.color,
    this.look,
  });

  factory Skin({
    int? id,
    required _i2.SkinColorTypeEnum color,
    List<_i3.Look>? look,
  }) = _SkinImpl;

  factory Skin.fromJson(Map<String, dynamic> jsonSerialization) {
    return Skin(
      id: jsonSerialization['id'] as int?,
      color: _i2.SkinColorTypeEnum.fromJson(
          (jsonSerialization['color'] as String)),
      look: (jsonSerialization['look'] as List?)
          ?.map((e) => _i3.Look.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = SkinTable();

  static const db = SkinRepository._();

  @override
  int? id;

  _i2.SkinColorTypeEnum color;

  List<_i3.Look>? look;

  @override
  _i1.Table get table => t;

  /// Returns a shallow copy of this [Skin]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Skin copyWith({
    int? id,
    _i2.SkinColorTypeEnum? color,
    List<_i3.Look>? look,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'color': color.toJson(),
      if (look != null) 'look': look?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'color': color.toJson(),
      if (look != null)
        'look': look?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static SkinInclude include({_i3.LookIncludeList? look}) {
    return SkinInclude._(look: look);
  }

  static SkinIncludeList includeList({
    _i1.WhereExpressionBuilder<SkinTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SkinTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SkinTable>? orderByList,
    SkinInclude? include,
  }) {
    return SkinIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Skin.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Skin.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SkinImpl extends Skin {
  _SkinImpl({
    int? id,
    required _i2.SkinColorTypeEnum color,
    List<_i3.Look>? look,
  }) : super._(
          id: id,
          color: color,
          look: look,
        );

  /// Returns a shallow copy of this [Skin]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Skin copyWith({
    Object? id = _Undefined,
    _i2.SkinColorTypeEnum? color,
    Object? look = _Undefined,
  }) {
    return Skin(
      id: id is int? ? id : this.id,
      color: color ?? this.color,
      look: look is List<_i3.Look>?
          ? look
          : this.look?.map((e0) => e0.copyWith()).toList(),
    );
  }
}

class SkinTable extends _i1.Table {
  SkinTable({super.tableRelation}) : super(tableName: 'skin') {
    color = _i1.ColumnEnum(
      'color',
      this,
      _i1.EnumSerialization.byName,
    );
  }

  late final _i1.ColumnEnum<_i2.SkinColorTypeEnum> color;

  _i3.LookTable? ___look;

  _i1.ManyRelation<_i3.LookTable>? _look;

  _i3.LookTable get __look {
    if (___look != null) return ___look!;
    ___look = _i1.createRelationTable(
      relationFieldName: '__look',
      field: Skin.t.id,
      foreignField: _i3.Look.t.skinId,
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
      field: Skin.t.id,
      foreignField: _i3.Look.t.skinId,
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

class SkinInclude extends _i1.IncludeObject {
  SkinInclude._({_i3.LookIncludeList? look}) {
    _look = look;
  }

  _i3.LookIncludeList? _look;

  @override
  Map<String, _i1.Include?> get includes => {'look': _look};

  @override
  _i1.Table get table => Skin.t;
}

class SkinIncludeList extends _i1.IncludeList {
  SkinIncludeList._({
    _i1.WhereExpressionBuilder<SkinTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Skin.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Skin.t;
}

class SkinRepository {
  const SkinRepository._();

  final attach = const SkinAttachRepository._();

  final attachRow = const SkinAttachRowRepository._();

  /// Returns a list of [Skin]s matching the given query parameters.
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
  Future<List<Skin>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SkinTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SkinTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SkinTable>? orderByList,
    _i1.Transaction? transaction,
    SkinInclude? include,
  }) async {
    return session.db.find<Skin>(
      where: where?.call(Skin.t),
      orderBy: orderBy?.call(Skin.t),
      orderByList: orderByList?.call(Skin.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Skin] matching the given query parameters.
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
  Future<Skin?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SkinTable>? where,
    int? offset,
    _i1.OrderByBuilder<SkinTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SkinTable>? orderByList,
    _i1.Transaction? transaction,
    SkinInclude? include,
  }) async {
    return session.db.findFirstRow<Skin>(
      where: where?.call(Skin.t),
      orderBy: orderBy?.call(Skin.t),
      orderByList: orderByList?.call(Skin.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Skin] by its [id] or null if no such row exists.
  Future<Skin?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    SkinInclude? include,
  }) async {
    return session.db.findById<Skin>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Skin]s in the list and returns the inserted rows.
  ///
  /// The returned [Skin]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Skin>> insert(
    _i1.Session session,
    List<Skin> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Skin>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Skin] and returns the inserted row.
  ///
  /// The returned [Skin] will have its `id` field set.
  Future<Skin> insertRow(
    _i1.Session session,
    Skin row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Skin>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Skin]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Skin>> update(
    _i1.Session session,
    List<Skin> rows, {
    _i1.ColumnSelections<SkinTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Skin>(
      rows,
      columns: columns?.call(Skin.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Skin]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Skin> updateRow(
    _i1.Session session,
    Skin row, {
    _i1.ColumnSelections<SkinTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Skin>(
      row,
      columns: columns?.call(Skin.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Skin]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Skin>> delete(
    _i1.Session session,
    List<Skin> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Skin>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Skin].
  Future<Skin> deleteRow(
    _i1.Session session,
    Skin row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Skin>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Skin>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SkinTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Skin>(
      where: where(Skin.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SkinTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Skin>(
      where: where?.call(Skin.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class SkinAttachRepository {
  const SkinAttachRepository._();

  /// Creates a relation between this [Skin] and the given [Look]s
  /// by setting each [Look]'s foreign key `skinId` to refer to this [Skin].
  Future<void> look(
    _i1.Session session,
    Skin skin,
    List<_i3.Look> look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.any((e) => e.id == null)) {
      throw ArgumentError.notNull('look.id');
    }
    if (skin.id == null) {
      throw ArgumentError.notNull('skin.id');
    }

    var $look = look.map((e) => e.copyWith(skinId: skin.id)).toList();
    await session.db.update<_i3.Look>(
      $look,
      columns: [_i3.Look.t.skinId],
      transaction: transaction,
    );
  }
}

class SkinAttachRowRepository {
  const SkinAttachRowRepository._();

  /// Creates a relation between this [Skin] and the given [Look]
  /// by setting the [Look]'s foreign key `skinId` to refer to this [Skin].
  Future<void> look(
    _i1.Session session,
    Skin skin,
    _i3.Look look, {
    _i1.Transaction? transaction,
  }) async {
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }
    if (skin.id == null) {
      throw ArgumentError.notNull('skin.id');
    }

    var $look = look.copyWith(skinId: skin.id);
    await session.db.updateRow<_i3.Look>(
      $look,
      columns: [_i3.Look.t.skinId],
      transaction: transaction,
    );
  }
}
