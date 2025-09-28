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

abstract class Friends
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Friends._({
    this.id,
    required this.friendsId,
    this.friends,
    required this.friendsById,
    this.friendsBy,
  });

  factory Friends({
    int? id,
    required int friendsId,
    _i2.User? friends,
    required int friendsById,
    _i2.User? friendsBy,
  }) = _FriendsImpl;

  factory Friends.fromJson(Map<String, dynamic> jsonSerialization) {
    return Friends(
      id: jsonSerialization['id'] as int?,
      friendsId: jsonSerialization['friendsId'] as int,
      friends: jsonSerialization['friends'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['friends'] as Map<String, dynamic>)),
      friendsById: jsonSerialization['friendsById'] as int,
      friendsBy: jsonSerialization['friendsBy'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['friendsBy'] as Map<String, dynamic>)),
    );
  }

  static final t = FriendsTable();

  static const db = FriendsRepository._();

  @override
  int? id;

  int friendsId;

  _i2.User? friends;

  int friendsById;

  _i2.User? friendsBy;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Friends]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Friends copyWith({
    int? id,
    int? friendsId,
    _i2.User? friends,
    int? friendsById,
    _i2.User? friendsBy,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'friendsId': friendsId,
      if (friends != null) 'friends': friends?.toJson(),
      'friendsById': friendsById,
      if (friendsBy != null) 'friendsBy': friendsBy?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'friendsId': friendsId,
      if (friends != null) 'friends': friends?.toJsonForProtocol(),
      'friendsById': friendsById,
      if (friendsBy != null) 'friendsBy': friendsBy?.toJsonForProtocol(),
    };
  }

  static FriendsInclude include({
    _i2.UserInclude? friends,
    _i2.UserInclude? friendsBy,
  }) {
    return FriendsInclude._(
      friends: friends,
      friendsBy: friendsBy,
    );
  }

  static FriendsIncludeList includeList({
    _i1.WhereExpressionBuilder<FriendsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FriendsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FriendsTable>? orderByList,
    FriendsInclude? include,
  }) {
    return FriendsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Friends.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Friends.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FriendsImpl extends Friends {
  _FriendsImpl({
    int? id,
    required int friendsId,
    _i2.User? friends,
    required int friendsById,
    _i2.User? friendsBy,
  }) : super._(
          id: id,
          friendsId: friendsId,
          friends: friends,
          friendsById: friendsById,
          friendsBy: friendsBy,
        );

  /// Returns a shallow copy of this [Friends]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Friends copyWith({
    Object? id = _Undefined,
    int? friendsId,
    Object? friends = _Undefined,
    int? friendsById,
    Object? friendsBy = _Undefined,
  }) {
    return Friends(
      id: id is int? ? id : this.id,
      friendsId: friendsId ?? this.friendsId,
      friends: friends is _i2.User? ? friends : this.friends?.copyWith(),
      friendsById: friendsById ?? this.friendsById,
      friendsBy:
          friendsBy is _i2.User? ? friendsBy : this.friendsBy?.copyWith(),
    );
  }
}

class FriendsTable extends _i1.Table<int?> {
  FriendsTable({super.tableRelation}) : super(tableName: 'friends') {
    friendsId = _i1.ColumnInt(
      'friendsId',
      this,
    );
    friendsById = _i1.ColumnInt(
      'friendsById',
      this,
    );
  }

  late final _i1.ColumnInt friendsId;

  _i2.UserTable? _friends;

  late final _i1.ColumnInt friendsById;

  _i2.UserTable? _friendsBy;

  _i2.UserTable get friends {
    if (_friends != null) return _friends!;
    _friends = _i1.createRelationTable(
      relationFieldName: 'friends',
      field: Friends.t.friendsId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _friends!;
  }

  _i2.UserTable get friendsBy {
    if (_friendsBy != null) return _friendsBy!;
    _friendsBy = _i1.createRelationTable(
      relationFieldName: 'friendsBy',
      field: Friends.t.friendsById,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _friendsBy!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        friendsId,
        friendsById,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'friends') {
      return friends;
    }
    if (relationField == 'friendsBy') {
      return friendsBy;
    }
    return null;
  }
}

class FriendsInclude extends _i1.IncludeObject {
  FriendsInclude._({
    _i2.UserInclude? friends,
    _i2.UserInclude? friendsBy,
  }) {
    _friends = friends;
    _friendsBy = friendsBy;
  }

  _i2.UserInclude? _friends;

  _i2.UserInclude? _friendsBy;

  @override
  Map<String, _i1.Include?> get includes => {
        'friends': _friends,
        'friendsBy': _friendsBy,
      };

  @override
  _i1.Table<int?> get table => Friends.t;
}

class FriendsIncludeList extends _i1.IncludeList {
  FriendsIncludeList._({
    _i1.WhereExpressionBuilder<FriendsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Friends.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Friends.t;
}

class FriendsRepository {
  const FriendsRepository._();

  final attachRow = const FriendsAttachRowRepository._();

  /// Returns a list of [Friends]s matching the given query parameters.
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
  Future<List<Friends>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FriendsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FriendsTable>? orderByList,
    _i1.Transaction? transaction,
    FriendsInclude? include,
  }) async {
    return session.db.find<Friends>(
      where: where?.call(Friends.t),
      orderBy: orderBy?.call(Friends.t),
      orderByList: orderByList?.call(Friends.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Friends] matching the given query parameters.
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
  Future<Friends?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendsTable>? where,
    int? offset,
    _i1.OrderByBuilder<FriendsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FriendsTable>? orderByList,
    _i1.Transaction? transaction,
    FriendsInclude? include,
  }) async {
    return session.db.findFirstRow<Friends>(
      where: where?.call(Friends.t),
      orderBy: orderBy?.call(Friends.t),
      orderByList: orderByList?.call(Friends.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Friends] by its [id] or null if no such row exists.
  Future<Friends?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    FriendsInclude? include,
  }) async {
    return session.db.findById<Friends>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Friends]s in the list and returns the inserted rows.
  ///
  /// The returned [Friends]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Friends>> insert(
    _i1.Session session,
    List<Friends> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Friends>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Friends] and returns the inserted row.
  ///
  /// The returned [Friends] will have its `id` field set.
  Future<Friends> insertRow(
    _i1.Session session,
    Friends row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Friends>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Friends]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Friends>> update(
    _i1.Session session,
    List<Friends> rows, {
    _i1.ColumnSelections<FriendsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Friends>(
      rows,
      columns: columns?.call(Friends.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Friends]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Friends> updateRow(
    _i1.Session session,
    Friends row, {
    _i1.ColumnSelections<FriendsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Friends>(
      row,
      columns: columns?.call(Friends.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Friends]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Friends>> delete(
    _i1.Session session,
    List<Friends> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Friends>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Friends].
  Future<Friends> deleteRow(
    _i1.Session session,
    Friends row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Friends>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Friends>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FriendsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Friends>(
      where: where(Friends.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Friends>(
      where: where?.call(Friends.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class FriendsAttachRowRepository {
  const FriendsAttachRowRepository._();

  /// Creates a relation between the given [Friends] and [User]
  /// by setting the [Friends]'s foreign key `friendsId` to refer to the [User].
  Future<void> friends(
    _i1.Session session,
    Friends friends,
    _i2.User nestedFriends, {
    _i1.Transaction? transaction,
  }) async {
    if (friends.id == null) {
      throw ArgumentError.notNull('friends.id');
    }
    if (nestedFriends.id == null) {
      throw ArgumentError.notNull('nestedFriends.id');
    }

    var $friends = friends.copyWith(friendsId: nestedFriends.id);
    await session.db.updateRow<Friends>(
      $friends,
      columns: [Friends.t.friendsId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Friends] and [User]
  /// by setting the [Friends]'s foreign key `friendsById` to refer to the [User].
  Future<void> friendsBy(
    _i1.Session session,
    Friends friends,
    _i2.User friendsBy, {
    _i1.Transaction? transaction,
  }) async {
    if (friends.id == null) {
      throw ArgumentError.notNull('friends.id');
    }
    if (friendsBy.id == null) {
      throw ArgumentError.notNull('friendsBy.id');
    }

    var $friends = friends.copyWith(friendsById: friendsBy.id);
    await session.db.updateRow<Friends>(
      $friends,
      columns: [Friends.t.friendsById],
      transaction: transaction,
    );
  }
}
