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
import 'status_enum.dart' as _i3;

abstract class FriendShipRequest
    implements _i1.TableRow, _i1.ProtocolSerialization {
  FriendShipRequest._({
    this.id,
    required this.friendId,
    this.friend,
    required this.friendbyId,
    this.friendby,
    this.accept,
    required this.message,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });

  factory FriendShipRequest({
    int? id,
    required int friendId,
    _i2.User? friend,
    required int friendbyId,
    _i2.User? friendby,
    bool? accept,
    required String message,
    required DateTime createdAt,
    required DateTime updatedAt,
    required _i3.StatusEnum status,
  }) = _FriendShipRequestImpl;

  factory FriendShipRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return FriendShipRequest(
      id: jsonSerialization['id'] as int?,
      friendId: jsonSerialization['friendId'] as int,
      friend: jsonSerialization['friend'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['friend'] as Map<String, dynamic>)),
      friendbyId: jsonSerialization['friendbyId'] as int,
      friendby: jsonSerialization['friendby'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['friendby'] as Map<String, dynamic>)),
      accept: jsonSerialization['accept'] as bool?,
      message: jsonSerialization['message'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      status: _i3.StatusEnum.fromJson((jsonSerialization['status'] as String)),
    );
  }

  static final t = FriendShipRequestTable();

  static const db = FriendShipRequestRepository._();

  @override
  int? id;

  int friendId;

  _i2.User? friend;

  int friendbyId;

  _i2.User? friendby;

  bool? accept;

  String message;

  DateTime createdAt;

  DateTime updatedAt;

  _i3.StatusEnum status;

  @override
  _i1.Table get table => t;

  /// Returns a shallow copy of this [FriendShipRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  FriendShipRequest copyWith({
    int? id,
    int? friendId,
    _i2.User? friend,
    int? friendbyId,
    _i2.User? friendby,
    bool? accept,
    String? message,
    DateTime? createdAt,
    DateTime? updatedAt,
    _i3.StatusEnum? status,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'friendId': friendId,
      if (friend != null) 'friend': friend?.toJson(),
      'friendbyId': friendbyId,
      if (friendby != null) 'friendby': friendby?.toJson(),
      if (accept != null) 'accept': accept,
      'message': message,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      'status': status.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'friendId': friendId,
      if (friend != null) 'friend': friend?.toJsonForProtocol(),
      'friendbyId': friendbyId,
      if (friendby != null) 'friendby': friendby?.toJsonForProtocol(),
      if (accept != null) 'accept': accept,
      'message': message,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
      'status': status.toJson(),
    };
  }

  static FriendShipRequestInclude include({
    _i2.UserInclude? friend,
    _i2.UserInclude? friendby,
  }) {
    return FriendShipRequestInclude._(
      friend: friend,
      friendby: friendby,
    );
  }

  static FriendShipRequestIncludeList includeList({
    _i1.WhereExpressionBuilder<FriendShipRequestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FriendShipRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FriendShipRequestTable>? orderByList,
    FriendShipRequestInclude? include,
  }) {
    return FriendShipRequestIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(FriendShipRequest.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(FriendShipRequest.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FriendShipRequestImpl extends FriendShipRequest {
  _FriendShipRequestImpl({
    int? id,
    required int friendId,
    _i2.User? friend,
    required int friendbyId,
    _i2.User? friendby,
    bool? accept,
    required String message,
    required DateTime createdAt,
    required DateTime updatedAt,
    required _i3.StatusEnum status,
  }) : super._(
          id: id,
          friendId: friendId,
          friend: friend,
          friendbyId: friendbyId,
          friendby: friendby,
          accept: accept,
          message: message,
          createdAt: createdAt,
          updatedAt: updatedAt,
          status: status,
        );

  /// Returns a shallow copy of this [FriendShipRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  FriendShipRequest copyWith({
    Object? id = _Undefined,
    int? friendId,
    Object? friend = _Undefined,
    int? friendbyId,
    Object? friendby = _Undefined,
    Object? accept = _Undefined,
    String? message,
    DateTime? createdAt,
    DateTime? updatedAt,
    _i3.StatusEnum? status,
  }) {
    return FriendShipRequest(
      id: id is int? ? id : this.id,
      friendId: friendId ?? this.friendId,
      friend: friend is _i2.User? ? friend : this.friend?.copyWith(),
      friendbyId: friendbyId ?? this.friendbyId,
      friendby: friendby is _i2.User? ? friendby : this.friendby?.copyWith(),
      accept: accept is bool? ? accept : this.accept,
      message: message ?? this.message,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
    );
  }
}

class FriendShipRequestTable extends _i1.Table {
  FriendShipRequestTable({super.tableRelation})
      : super(tableName: 'friendship_requests') {
    friendId = _i1.ColumnInt(
      'friendId',
      this,
    );
    friendbyId = _i1.ColumnInt(
      'friendbyId',
      this,
    );
    accept = _i1.ColumnBool(
      'accept',
      this,
    );
    message = _i1.ColumnString(
      'message',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
    );
  }

  late final _i1.ColumnInt friendId;

  _i2.UserTable? _friend;

  late final _i1.ColumnInt friendbyId;

  _i2.UserTable? _friendby;

  late final _i1.ColumnBool accept;

  late final _i1.ColumnString message;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  late final _i1.ColumnEnum<_i3.StatusEnum> status;

  _i2.UserTable get friend {
    if (_friend != null) return _friend!;
    _friend = _i1.createRelationTable(
      relationFieldName: 'friend',
      field: FriendShipRequest.t.friendId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _friend!;
  }

  _i2.UserTable get friendby {
    if (_friendby != null) return _friendby!;
    _friendby = _i1.createRelationTable(
      relationFieldName: 'friendby',
      field: FriendShipRequest.t.friendbyId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _friendby!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        friendId,
        friendbyId,
        accept,
        message,
        createdAt,
        updatedAt,
        status,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'friend') {
      return friend;
    }
    if (relationField == 'friendby') {
      return friendby;
    }
    return null;
  }
}

class FriendShipRequestInclude extends _i1.IncludeObject {
  FriendShipRequestInclude._({
    _i2.UserInclude? friend,
    _i2.UserInclude? friendby,
  }) {
    _friend = friend;
    _friendby = friendby;
  }

  _i2.UserInclude? _friend;

  _i2.UserInclude? _friendby;

  @override
  Map<String, _i1.Include?> get includes => {
        'friend': _friend,
        'friendby': _friendby,
      };

  @override
  _i1.Table get table => FriendShipRequest.t;
}

class FriendShipRequestIncludeList extends _i1.IncludeList {
  FriendShipRequestIncludeList._({
    _i1.WhereExpressionBuilder<FriendShipRequestTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(FriendShipRequest.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => FriendShipRequest.t;
}

class FriendShipRequestRepository {
  const FriendShipRequestRepository._();

  final attachRow = const FriendShipRequestAttachRowRepository._();

  /// Returns a list of [FriendShipRequest]s matching the given query parameters.
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
  Future<List<FriendShipRequest>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendShipRequestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FriendShipRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FriendShipRequestTable>? orderByList,
    _i1.Transaction? transaction,
    FriendShipRequestInclude? include,
  }) async {
    return session.db.find<FriendShipRequest>(
      where: where?.call(FriendShipRequest.t),
      orderBy: orderBy?.call(FriendShipRequest.t),
      orderByList: orderByList?.call(FriendShipRequest.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [FriendShipRequest] matching the given query parameters.
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
  Future<FriendShipRequest?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendShipRequestTable>? where,
    int? offset,
    _i1.OrderByBuilder<FriendShipRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FriendShipRequestTable>? orderByList,
    _i1.Transaction? transaction,
    FriendShipRequestInclude? include,
  }) async {
    return session.db.findFirstRow<FriendShipRequest>(
      where: where?.call(FriendShipRequest.t),
      orderBy: orderBy?.call(FriendShipRequest.t),
      orderByList: orderByList?.call(FriendShipRequest.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [FriendShipRequest] by its [id] or null if no such row exists.
  Future<FriendShipRequest?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    FriendShipRequestInclude? include,
  }) async {
    return session.db.findById<FriendShipRequest>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [FriendShipRequest]s in the list and returns the inserted rows.
  ///
  /// The returned [FriendShipRequest]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<FriendShipRequest>> insert(
    _i1.Session session,
    List<FriendShipRequest> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<FriendShipRequest>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [FriendShipRequest] and returns the inserted row.
  ///
  /// The returned [FriendShipRequest] will have its `id` field set.
  Future<FriendShipRequest> insertRow(
    _i1.Session session,
    FriendShipRequest row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<FriendShipRequest>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [FriendShipRequest]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<FriendShipRequest>> update(
    _i1.Session session,
    List<FriendShipRequest> rows, {
    _i1.ColumnSelections<FriendShipRequestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<FriendShipRequest>(
      rows,
      columns: columns?.call(FriendShipRequest.t),
      transaction: transaction,
    );
  }

  /// Updates a single [FriendShipRequest]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<FriendShipRequest> updateRow(
    _i1.Session session,
    FriendShipRequest row, {
    _i1.ColumnSelections<FriendShipRequestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<FriendShipRequest>(
      row,
      columns: columns?.call(FriendShipRequest.t),
      transaction: transaction,
    );
  }

  /// Deletes all [FriendShipRequest]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<FriendShipRequest>> delete(
    _i1.Session session,
    List<FriendShipRequest> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<FriendShipRequest>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [FriendShipRequest].
  Future<FriendShipRequest> deleteRow(
    _i1.Session session,
    FriendShipRequest row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<FriendShipRequest>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<FriendShipRequest>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FriendShipRequestTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<FriendShipRequest>(
      where: where(FriendShipRequest.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FriendShipRequestTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<FriendShipRequest>(
      where: where?.call(FriendShipRequest.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class FriendShipRequestAttachRowRepository {
  const FriendShipRequestAttachRowRepository._();

  /// Creates a relation between the given [FriendShipRequest] and [User]
  /// by setting the [FriendShipRequest]'s foreign key `friendId` to refer to the [User].
  Future<void> friend(
    _i1.Session session,
    FriendShipRequest friendShipRequest,
    _i2.User friend, {
    _i1.Transaction? transaction,
  }) async {
    if (friendShipRequest.id == null) {
      throw ArgumentError.notNull('friendShipRequest.id');
    }
    if (friend.id == null) {
      throw ArgumentError.notNull('friend.id');
    }

    var $friendShipRequest = friendShipRequest.copyWith(friendId: friend.id);
    await session.db.updateRow<FriendShipRequest>(
      $friendShipRequest,
      columns: [FriendShipRequest.t.friendId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [FriendShipRequest] and [User]
  /// by setting the [FriendShipRequest]'s foreign key `friendbyId` to refer to the [User].
  Future<void> friendby(
    _i1.Session session,
    FriendShipRequest friendShipRequest,
    _i2.User friendby, {
    _i1.Transaction? transaction,
  }) async {
    if (friendShipRequest.id == null) {
      throw ArgumentError.notNull('friendShipRequest.id');
    }
    if (friendby.id == null) {
      throw ArgumentError.notNull('friendby.id');
    }

    var $friendShipRequest =
        friendShipRequest.copyWith(friendbyId: friendby.id);
    await session.db.updateRow<FriendShipRequest>(
      $friendShipRequest,
      columns: [FriendShipRequest.t.friendbyId],
      transaction: transaction,
    );
  }
}
