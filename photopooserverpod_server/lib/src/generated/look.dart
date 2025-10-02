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
import 'user.dart' as _i2;
import 'hair.dart' as _i3;
import 'dress.dart' as _i4;
import 'face.dart' as _i5;
import 'skin.dart' as _i6;
import 'genderType_enum.dart' as _i7;
import 'shoes.dart' as _i8;

abstract class Look implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Look._({
    this.id,
    this.user,
    required this.hairId,
    this.hair,
    required this.dressId,
    this.dress,
    required this.faceId,
    this.face,
    required this.skinId,
    this.skin,
    required this.gender,
    required this.shoesId,
    this.shoes,
  });

  factory Look({
    int? id,
    List<_i2.User>? user,
    required int hairId,
    _i3.Hair? hair,
    required int dressId,
    _i4.Dress? dress,
    required int faceId,
    _i5.Face? face,
    required int skinId,
    _i6.Skin? skin,
    required _i7.GenderTypeEnum gender,
    required int shoesId,
    _i8.Shoes? shoes,
  }) = _LookImpl;

  factory Look.fromJson(Map<String, dynamic> jsonSerialization) {
    return Look(
      id: jsonSerialization['id'] as int?,
      user: (jsonSerialization['user'] as List?)
          ?.map((e) => _i2.User.fromJson((e as Map<String, dynamic>)))
          .toList(),
      hairId: jsonSerialization['hairId'] as int,
      hair: jsonSerialization['hair'] == null
          ? null
          : _i3.Hair.fromJson(
              (jsonSerialization['hair'] as Map<String, dynamic>)),
      dressId: jsonSerialization['dressId'] as int,
      dress: jsonSerialization['dress'] == null
          ? null
          : _i4.Dress.fromJson(
              (jsonSerialization['dress'] as Map<String, dynamic>)),
      faceId: jsonSerialization['faceId'] as int,
      face: jsonSerialization['face'] == null
          ? null
          : _i5.Face.fromJson(
              (jsonSerialization['face'] as Map<String, dynamic>)),
      skinId: jsonSerialization['skinId'] as int,
      skin: jsonSerialization['skin'] == null
          ? null
          : _i6.Skin.fromJson(
              (jsonSerialization['skin'] as Map<String, dynamic>)),
      gender:
          _i7.GenderTypeEnum.fromJson((jsonSerialization['gender'] as String)),
      shoesId: jsonSerialization['shoesId'] as int,
      shoes: jsonSerialization['shoes'] == null
          ? null
          : _i8.Shoes.fromJson(
              (jsonSerialization['shoes'] as Map<String, dynamic>)),
    );
  }

  static final t = LookTable();

  static const db = LookRepository._();

  @override
  int? id;

  List<_i2.User>? user;

  int hairId;

  _i3.Hair? hair;

  int dressId;

  _i4.Dress? dress;

  int faceId;

  _i5.Face? face;

  int skinId;

  _i6.Skin? skin;

  _i7.GenderTypeEnum gender;

  int shoesId;

  _i8.Shoes? shoes;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Look]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Look copyWith({
    int? id,
    List<_i2.User>? user,
    int? hairId,
    _i3.Hair? hair,
    int? dressId,
    _i4.Dress? dress,
    int? faceId,
    _i5.Face? face,
    int? skinId,
    _i6.Skin? skin,
    _i7.GenderTypeEnum? gender,
    int? shoesId,
    _i8.Shoes? shoes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (user != null) 'user': user?.toJson(valueToJson: (v) => v.toJson()),
      'hairId': hairId,
      if (hair != null) 'hair': hair?.toJson(),
      'dressId': dressId,
      if (dress != null) 'dress': dress?.toJson(),
      'faceId': faceId,
      if (face != null) 'face': face?.toJson(),
      'skinId': skinId,
      if (skin != null) 'skin': skin?.toJson(),
      'gender': gender.toJson(),
      'shoesId': shoesId,
      if (shoes != null) 'shoes': shoes?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (user != null)
        'user': user?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'hairId': hairId,
      if (hair != null) 'hair': hair?.toJsonForProtocol(),
      'dressId': dressId,
      if (dress != null) 'dress': dress?.toJsonForProtocol(),
      'faceId': faceId,
      if (face != null) 'face': face?.toJsonForProtocol(),
      'skinId': skinId,
      if (skin != null) 'skin': skin?.toJsonForProtocol(),
      'gender': gender.toJson(),
      'shoesId': shoesId,
      if (shoes != null) 'shoes': shoes?.toJsonForProtocol(),
    };
  }

  static LookInclude include({
    _i2.UserIncludeList? user,
    _i3.HairInclude? hair,
    _i4.DressInclude? dress,
    _i5.FaceInclude? face,
    _i6.SkinInclude? skin,
    _i8.ShoesInclude? shoes,
  }) {
    return LookInclude._(
      user: user,
      hair: hair,
      dress: dress,
      face: face,
      skin: skin,
      shoes: shoes,
    );
  }

  static LookIncludeList includeList({
    _i1.WhereExpressionBuilder<LookTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LookTable>? orderByList,
    LookInclude? include,
  }) {
    return LookIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Look.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Look.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LookImpl extends Look {
  _LookImpl({
    int? id,
    List<_i2.User>? user,
    required int hairId,
    _i3.Hair? hair,
    required int dressId,
    _i4.Dress? dress,
    required int faceId,
    _i5.Face? face,
    required int skinId,
    _i6.Skin? skin,
    required _i7.GenderTypeEnum gender,
    required int shoesId,
    _i8.Shoes? shoes,
  }) : super._(
          id: id,
          user: user,
          hairId: hairId,
          hair: hair,
          dressId: dressId,
          dress: dress,
          faceId: faceId,
          face: face,
          skinId: skinId,
          skin: skin,
          gender: gender,
          shoesId: shoesId,
          shoes: shoes,
        );

  /// Returns a shallow copy of this [Look]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Look copyWith({
    Object? id = _Undefined,
    Object? user = _Undefined,
    int? hairId,
    Object? hair = _Undefined,
    int? dressId,
    Object? dress = _Undefined,
    int? faceId,
    Object? face = _Undefined,
    int? skinId,
    Object? skin = _Undefined,
    _i7.GenderTypeEnum? gender,
    int? shoesId,
    Object? shoes = _Undefined,
  }) {
    return Look(
      id: id is int? ? id : this.id,
      user: user is List<_i2.User>?
          ? user
          : this.user?.map((e0) => e0.copyWith()).toList(),
      hairId: hairId ?? this.hairId,
      hair: hair is _i3.Hair? ? hair : this.hair?.copyWith(),
      dressId: dressId ?? this.dressId,
      dress: dress is _i4.Dress? ? dress : this.dress?.copyWith(),
      faceId: faceId ?? this.faceId,
      face: face is _i5.Face? ? face : this.face?.copyWith(),
      skinId: skinId ?? this.skinId,
      skin: skin is _i6.Skin? ? skin : this.skin?.copyWith(),
      gender: gender ?? this.gender,
      shoesId: shoesId ?? this.shoesId,
      shoes: shoes is _i8.Shoes? ? shoes : this.shoes?.copyWith(),
    );
  }
}

class LookTable extends _i1.Table<int?> {
  LookTable({super.tableRelation}) : super(tableName: 'look') {
    hairId = _i1.ColumnInt(
      'hairId',
      this,
    );
    dressId = _i1.ColumnInt(
      'dressId',
      this,
    );
    faceId = _i1.ColumnInt(
      'faceId',
      this,
    );
    skinId = _i1.ColumnInt(
      'skinId',
      this,
    );
    gender = _i1.ColumnEnum(
      'gender',
      this,
      _i1.EnumSerialization.byName,
    );
    shoesId = _i1.ColumnInt(
      'shoesId',
      this,
    );
  }

  _i2.UserTable? ___user;

  _i1.ManyRelation<_i2.UserTable>? _user;

  late final _i1.ColumnInt hairId;

  _i3.HairTable? _hair;

  late final _i1.ColumnInt dressId;

  _i4.DressTable? _dress;

  late final _i1.ColumnInt faceId;

  _i5.FaceTable? _face;

  late final _i1.ColumnInt skinId;

  _i6.SkinTable? _skin;

  late final _i1.ColumnEnum<_i7.GenderTypeEnum> gender;

  late final _i1.ColumnInt shoesId;

  _i8.ShoesTable? _shoes;

  _i2.UserTable get __user {
    if (___user != null) return ___user!;
    ___user = _i1.createRelationTable(
      relationFieldName: '__user',
      field: Look.t.id,
      foreignField: _i2.User.t.lookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return ___user!;
  }

  _i3.HairTable get hair {
    if (_hair != null) return _hair!;
    _hair = _i1.createRelationTable(
      relationFieldName: 'hair',
      field: Look.t.hairId,
      foreignField: _i3.Hair.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.HairTable(tableRelation: foreignTableRelation),
    );
    return _hair!;
  }

  _i4.DressTable get dress {
    if (_dress != null) return _dress!;
    _dress = _i1.createRelationTable(
      relationFieldName: 'dress',
      field: Look.t.dressId,
      foreignField: _i4.Dress.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.DressTable(tableRelation: foreignTableRelation),
    );
    return _dress!;
  }

  _i5.FaceTable get face {
    if (_face != null) return _face!;
    _face = _i1.createRelationTable(
      relationFieldName: 'face',
      field: Look.t.faceId,
      foreignField: _i5.Face.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i5.FaceTable(tableRelation: foreignTableRelation),
    );
    return _face!;
  }

  _i6.SkinTable get skin {
    if (_skin != null) return _skin!;
    _skin = _i1.createRelationTable(
      relationFieldName: 'skin',
      field: Look.t.skinId,
      foreignField: _i6.Skin.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i6.SkinTable(tableRelation: foreignTableRelation),
    );
    return _skin!;
  }

  _i8.ShoesTable get shoes {
    if (_shoes != null) return _shoes!;
    _shoes = _i1.createRelationTable(
      relationFieldName: 'shoes',
      field: Look.t.shoesId,
      foreignField: _i8.Shoes.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i8.ShoesTable(tableRelation: foreignTableRelation),
    );
    return _shoes!;
  }

  _i1.ManyRelation<_i2.UserTable> get user {
    if (_user != null) return _user!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Look.t.id,
      foreignField: _i2.User.t.lookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    _user = _i1.ManyRelation<_i2.UserTable>(
      tableWithRelations: relationTable,
      table: _i2.UserTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        hairId,
        dressId,
        faceId,
        skinId,
        gender,
        shoesId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return __user;
    }
    if (relationField == 'hair') {
      return hair;
    }
    if (relationField == 'dress') {
      return dress;
    }
    if (relationField == 'face') {
      return face;
    }
    if (relationField == 'skin') {
      return skin;
    }
    if (relationField == 'shoes') {
      return shoes;
    }
    return null;
  }
}

class LookInclude extends _i1.IncludeObject {
  LookInclude._({
    _i2.UserIncludeList? user,
    _i3.HairInclude? hair,
    _i4.DressInclude? dress,
    _i5.FaceInclude? face,
    _i6.SkinInclude? skin,
    _i8.ShoesInclude? shoes,
  }) {
    _user = user;
    _hair = hair;
    _dress = dress;
    _face = face;
    _skin = skin;
    _shoes = shoes;
  }

  _i2.UserIncludeList? _user;

  _i3.HairInclude? _hair;

  _i4.DressInclude? _dress;

  _i5.FaceInclude? _face;

  _i6.SkinInclude? _skin;

  _i8.ShoesInclude? _shoes;

  @override
  Map<String, _i1.Include?> get includes => {
        'user': _user,
        'hair': _hair,
        'dress': _dress,
        'face': _face,
        'skin': _skin,
        'shoes': _shoes,
      };

  @override
  _i1.Table<int?> get table => Look.t;
}

class LookIncludeList extends _i1.IncludeList {
  LookIncludeList._({
    _i1.WhereExpressionBuilder<LookTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Look.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Look.t;
}

class LookRepository {
  const LookRepository._();

  final attach = const LookAttachRepository._();

  final attachRow = const LookAttachRowRepository._();

  final detach = const LookDetachRepository._();

  final detachRow = const LookDetachRowRepository._();

  /// Returns a list of [Look]s matching the given query parameters.
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
  Future<List<Look>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LookTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LookTable>? orderByList,
    _i1.Transaction? transaction,
    LookInclude? include,
  }) async {
    return session.db.find<Look>(
      where: where?.call(Look.t),
      orderBy: orderBy?.call(Look.t),
      orderByList: orderByList?.call(Look.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Look] matching the given query parameters.
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
  Future<Look?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LookTable>? where,
    int? offset,
    _i1.OrderByBuilder<LookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LookTable>? orderByList,
    _i1.Transaction? transaction,
    LookInclude? include,
  }) async {
    return session.db.findFirstRow<Look>(
      where: where?.call(Look.t),
      orderBy: orderBy?.call(Look.t),
      orderByList: orderByList?.call(Look.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Look] by its [id] or null if no such row exists.
  Future<Look?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    LookInclude? include,
  }) async {
    return session.db.findById<Look>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Look]s in the list and returns the inserted rows.
  ///
  /// The returned [Look]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Look>> insert(
    _i1.Session session,
    List<Look> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Look>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Look] and returns the inserted row.
  ///
  /// The returned [Look] will have its `id` field set.
  Future<Look> insertRow(
    _i1.Session session,
    Look row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Look>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Look]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Look>> update(
    _i1.Session session,
    List<Look> rows, {
    _i1.ColumnSelections<LookTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Look>(
      rows,
      columns: columns?.call(Look.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Look]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Look> updateRow(
    _i1.Session session,
    Look row, {
    _i1.ColumnSelections<LookTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Look>(
      row,
      columns: columns?.call(Look.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Look]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Look>> delete(
    _i1.Session session,
    List<Look> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Look>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Look].
  Future<Look> deleteRow(
    _i1.Session session,
    Look row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Look>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Look>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LookTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Look>(
      where: where(Look.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LookTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Look>(
      where: where?.call(Look.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class LookAttachRepository {
  const LookAttachRepository._();

  /// Creates a relation between this [Look] and the given [User]s
  /// by setting each [User]'s foreign key `lookId` to refer to this [Look].
  Future<void> user(
    _i1.Session session,
    Look look,
    List<_i2.User> user, {
    _i1.Transaction? transaction,
  }) async {
    if (user.any((e) => e.id == null)) {
      throw ArgumentError.notNull('user.id');
    }
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }

    var $user = user.map((e) => e.copyWith(lookId: look.id)).toList();
    await session.db.update<_i2.User>(
      $user,
      columns: [_i2.User.t.lookId],
      transaction: transaction,
    );
  }
}

class LookAttachRowRepository {
  const LookAttachRowRepository._();

  /// Creates a relation between the given [Look] and [Hair]
  /// by setting the [Look]'s foreign key `hairId` to refer to the [Hair].
  Future<void> hair(
    _i1.Session session,
    Look look,
    _i3.Hair hair, {
    _i1.Transaction? transaction,
  }) async {
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }
    if (hair.id == null) {
      throw ArgumentError.notNull('hair.id');
    }

    var $look = look.copyWith(hairId: hair.id);
    await session.db.updateRow<Look>(
      $look,
      columns: [Look.t.hairId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Look] and [Dress]
  /// by setting the [Look]'s foreign key `dressId` to refer to the [Dress].
  Future<void> dress(
    _i1.Session session,
    Look look,
    _i4.Dress dress, {
    _i1.Transaction? transaction,
  }) async {
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }
    if (dress.id == null) {
      throw ArgumentError.notNull('dress.id');
    }

    var $look = look.copyWith(dressId: dress.id);
    await session.db.updateRow<Look>(
      $look,
      columns: [Look.t.dressId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Look] and [Face]
  /// by setting the [Look]'s foreign key `faceId` to refer to the [Face].
  Future<void> face(
    _i1.Session session,
    Look look,
    _i5.Face face, {
    _i1.Transaction? transaction,
  }) async {
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }
    if (face.id == null) {
      throw ArgumentError.notNull('face.id');
    }

    var $look = look.copyWith(faceId: face.id);
    await session.db.updateRow<Look>(
      $look,
      columns: [Look.t.faceId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Look] and [Skin]
  /// by setting the [Look]'s foreign key `skinId` to refer to the [Skin].
  Future<void> skin(
    _i1.Session session,
    Look look,
    _i6.Skin skin, {
    _i1.Transaction? transaction,
  }) async {
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }
    if (skin.id == null) {
      throw ArgumentError.notNull('skin.id');
    }

    var $look = look.copyWith(skinId: skin.id);
    await session.db.updateRow<Look>(
      $look,
      columns: [Look.t.skinId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Look] and [Shoes]
  /// by setting the [Look]'s foreign key `shoesId` to refer to the [Shoes].
  Future<void> shoes(
    _i1.Session session,
    Look look,
    _i8.Shoes shoes, {
    _i1.Transaction? transaction,
  }) async {
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }
    if (shoes.id == null) {
      throw ArgumentError.notNull('shoes.id');
    }

    var $look = look.copyWith(shoesId: shoes.id);
    await session.db.updateRow<Look>(
      $look,
      columns: [Look.t.shoesId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [Look] and the given [User]
  /// by setting the [User]'s foreign key `lookId` to refer to this [Look].
  Future<void> user(
    _i1.Session session,
    Look look,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }
    if (look.id == null) {
      throw ArgumentError.notNull('look.id');
    }

    var $user = user.copyWith(lookId: look.id);
    await session.db.updateRow<_i2.User>(
      $user,
      columns: [_i2.User.t.lookId],
      transaction: transaction,
    );
  }
}

class LookDetachRepository {
  const LookDetachRepository._();

  /// Detaches the relation between this [Look] and the given [User]
  /// by setting the [User]'s foreign key `lookId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> user(
    _i1.Session session,
    List<_i2.User> user, {
    _i1.Transaction? transaction,
  }) async {
    if (user.any((e) => e.id == null)) {
      throw ArgumentError.notNull('user.id');
    }

    var $user = user.map((e) => e.copyWith(lookId: null)).toList();
    await session.db.update<_i2.User>(
      $user,
      columns: [_i2.User.t.lookId],
      transaction: transaction,
    );
  }
}

class LookDetachRowRepository {
  const LookDetachRowRepository._();

  /// Detaches the relation between this [Look] and the given [User]
  /// by setting the [User]'s foreign key `lookId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> user(
    _i1.Session session,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $user = user.copyWith(lookId: null);
    await session.db.updateRow<_i2.User>(
      $user,
      columns: [_i2.User.t.lookId],
      transaction: transaction,
    );
  }
}
