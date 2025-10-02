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

abstract class DirectMessage
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  DirectMessage._({
    this.id,
    required this.senderId,
    this.sender,
    required this.receiverId,
    this.receiver,
    required this.message,
    required this.time,
    required this.read,
  });

  factory DirectMessage({
    int? id,
    required int senderId,
    _i2.User? sender,
    required int receiverId,
    _i2.User? receiver,
    required String message,
    required DateTime time,
    required bool read,
  }) = _DirectMessageImpl;

  factory DirectMessage.fromJson(Map<String, dynamic> jsonSerialization) {
    return DirectMessage(
      id: jsonSerialization['id'] as int?,
      senderId: jsonSerialization['senderId'] as int,
      sender: jsonSerialization['sender'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['sender'] as Map<String, dynamic>)),
      receiverId: jsonSerialization['receiverId'] as int,
      receiver: jsonSerialization['receiver'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['receiver'] as Map<String, dynamic>)),
      message: jsonSerialization['message'] as String,
      time: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['time']),
      read: jsonSerialization['read'] as bool,
    );
  }

  static final t = DirectMessageTable();

  static const db = DirectMessageRepository._();

  @override
  int? id;

  int senderId;

  _i2.User? sender;

  int receiverId;

  _i2.User? receiver;

  String message;

  DateTime time;

  bool read;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [DirectMessage]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  DirectMessage copyWith({
    int? id,
    int? senderId,
    _i2.User? sender,
    int? receiverId,
    _i2.User? receiver,
    String? message,
    DateTime? time,
    bool? read,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'senderId': senderId,
      if (sender != null) 'sender': sender?.toJson(),
      'receiverId': receiverId,
      if (receiver != null) 'receiver': receiver?.toJson(),
      'message': message,
      'time': time.toJson(),
      'read': read,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'senderId': senderId,
      if (sender != null) 'sender': sender?.toJsonForProtocol(),
      'receiverId': receiverId,
      if (receiver != null) 'receiver': receiver?.toJsonForProtocol(),
      'message': message,
      'time': time.toJson(),
      'read': read,
    };
  }

  static DirectMessageInclude include({
    _i2.UserInclude? sender,
    _i2.UserInclude? receiver,
  }) {
    return DirectMessageInclude._(
      sender: sender,
      receiver: receiver,
    );
  }

  static DirectMessageIncludeList includeList({
    _i1.WhereExpressionBuilder<DirectMessageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DirectMessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DirectMessageTable>? orderByList,
    DirectMessageInclude? include,
  }) {
    return DirectMessageIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DirectMessage.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DirectMessage.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DirectMessageImpl extends DirectMessage {
  _DirectMessageImpl({
    int? id,
    required int senderId,
    _i2.User? sender,
    required int receiverId,
    _i2.User? receiver,
    required String message,
    required DateTime time,
    required bool read,
  }) : super._(
          id: id,
          senderId: senderId,
          sender: sender,
          receiverId: receiverId,
          receiver: receiver,
          message: message,
          time: time,
          read: read,
        );

  /// Returns a shallow copy of this [DirectMessage]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  DirectMessage copyWith({
    Object? id = _Undefined,
    int? senderId,
    Object? sender = _Undefined,
    int? receiverId,
    Object? receiver = _Undefined,
    String? message,
    DateTime? time,
    bool? read,
  }) {
    return DirectMessage(
      id: id is int? ? id : this.id,
      senderId: senderId ?? this.senderId,
      sender: sender is _i2.User? ? sender : this.sender?.copyWith(),
      receiverId: receiverId ?? this.receiverId,
      receiver: receiver is _i2.User? ? receiver : this.receiver?.copyWith(),
      message: message ?? this.message,
      time: time ?? this.time,
      read: read ?? this.read,
    );
  }
}

class DirectMessageTable extends _i1.Table<int?> {
  DirectMessageTable({super.tableRelation})
      : super(tableName: 'direct_message') {
    senderId = _i1.ColumnInt(
      'senderId',
      this,
    );
    receiverId = _i1.ColumnInt(
      'receiverId',
      this,
    );
    message = _i1.ColumnString(
      'message',
      this,
    );
    time = _i1.ColumnDateTime(
      'time',
      this,
    );
    read = _i1.ColumnBool(
      'read',
      this,
    );
  }

  late final _i1.ColumnInt senderId;

  _i2.UserTable? _sender;

  late final _i1.ColumnInt receiverId;

  _i2.UserTable? _receiver;

  late final _i1.ColumnString message;

  late final _i1.ColumnDateTime time;

  late final _i1.ColumnBool read;

  _i2.UserTable get sender {
    if (_sender != null) return _sender!;
    _sender = _i1.createRelationTable(
      relationFieldName: 'sender',
      field: DirectMessage.t.senderId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _sender!;
  }

  _i2.UserTable get receiver {
    if (_receiver != null) return _receiver!;
    _receiver = _i1.createRelationTable(
      relationFieldName: 'receiver',
      field: DirectMessage.t.receiverId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _receiver!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        senderId,
        receiverId,
        message,
        time,
        read,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'sender') {
      return sender;
    }
    if (relationField == 'receiver') {
      return receiver;
    }
    return null;
  }
}

class DirectMessageInclude extends _i1.IncludeObject {
  DirectMessageInclude._({
    _i2.UserInclude? sender,
    _i2.UserInclude? receiver,
  }) {
    _sender = sender;
    _receiver = receiver;
  }

  _i2.UserInclude? _sender;

  _i2.UserInclude? _receiver;

  @override
  Map<String, _i1.Include?> get includes => {
        'sender': _sender,
        'receiver': _receiver,
      };

  @override
  _i1.Table<int?> get table => DirectMessage.t;
}

class DirectMessageIncludeList extends _i1.IncludeList {
  DirectMessageIncludeList._({
    _i1.WhereExpressionBuilder<DirectMessageTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DirectMessage.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => DirectMessage.t;
}

class DirectMessageRepository {
  const DirectMessageRepository._();

  final attachRow = const DirectMessageAttachRowRepository._();

  /// Returns a list of [DirectMessage]s matching the given query parameters.
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
  Future<List<DirectMessage>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DirectMessageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DirectMessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DirectMessageTable>? orderByList,
    _i1.Transaction? transaction,
    DirectMessageInclude? include,
  }) async {
    return session.db.find<DirectMessage>(
      where: where?.call(DirectMessage.t),
      orderBy: orderBy?.call(DirectMessage.t),
      orderByList: orderByList?.call(DirectMessage.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [DirectMessage] matching the given query parameters.
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
  Future<DirectMessage?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DirectMessageTable>? where,
    int? offset,
    _i1.OrderByBuilder<DirectMessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DirectMessageTable>? orderByList,
    _i1.Transaction? transaction,
    DirectMessageInclude? include,
  }) async {
    return session.db.findFirstRow<DirectMessage>(
      where: where?.call(DirectMessage.t),
      orderBy: orderBy?.call(DirectMessage.t),
      orderByList: orderByList?.call(DirectMessage.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [DirectMessage] by its [id] or null if no such row exists.
  Future<DirectMessage?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    DirectMessageInclude? include,
  }) async {
    return session.db.findById<DirectMessage>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [DirectMessage]s in the list and returns the inserted rows.
  ///
  /// The returned [DirectMessage]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<DirectMessage>> insert(
    _i1.Session session,
    List<DirectMessage> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<DirectMessage>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [DirectMessage] and returns the inserted row.
  ///
  /// The returned [DirectMessage] will have its `id` field set.
  Future<DirectMessage> insertRow(
    _i1.Session session,
    DirectMessage row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<DirectMessage>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [DirectMessage]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<DirectMessage>> update(
    _i1.Session session,
    List<DirectMessage> rows, {
    _i1.ColumnSelections<DirectMessageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<DirectMessage>(
      rows,
      columns: columns?.call(DirectMessage.t),
      transaction: transaction,
    );
  }

  /// Updates a single [DirectMessage]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<DirectMessage> updateRow(
    _i1.Session session,
    DirectMessage row, {
    _i1.ColumnSelections<DirectMessageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<DirectMessage>(
      row,
      columns: columns?.call(DirectMessage.t),
      transaction: transaction,
    );
  }

  /// Deletes all [DirectMessage]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<DirectMessage>> delete(
    _i1.Session session,
    List<DirectMessage> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DirectMessage>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [DirectMessage].
  Future<DirectMessage> deleteRow(
    _i1.Session session,
    DirectMessage row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<DirectMessage>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<DirectMessage>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DirectMessageTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<DirectMessage>(
      where: where(DirectMessage.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DirectMessageTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DirectMessage>(
      where: where?.call(DirectMessage.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class DirectMessageAttachRowRepository {
  const DirectMessageAttachRowRepository._();

  /// Creates a relation between the given [DirectMessage] and [User]
  /// by setting the [DirectMessage]'s foreign key `senderId` to refer to the [User].
  Future<void> sender(
    _i1.Session session,
    DirectMessage directMessage,
    _i2.User sender, {
    _i1.Transaction? transaction,
  }) async {
    if (directMessage.id == null) {
      throw ArgumentError.notNull('directMessage.id');
    }
    if (sender.id == null) {
      throw ArgumentError.notNull('sender.id');
    }

    var $directMessage = directMessage.copyWith(senderId: sender.id);
    await session.db.updateRow<DirectMessage>(
      $directMessage,
      columns: [DirectMessage.t.senderId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [DirectMessage] and [User]
  /// by setting the [DirectMessage]'s foreign key `receiverId` to refer to the [User].
  Future<void> receiver(
    _i1.Session session,
    DirectMessage directMessage,
    _i2.User receiver, {
    _i1.Transaction? transaction,
  }) async {
    if (directMessage.id == null) {
      throw ArgumentError.notNull('directMessage.id');
    }
    if (receiver.id == null) {
      throw ArgumentError.notNull('receiver.id');
    }

    var $directMessage = directMessage.copyWith(receiverId: receiver.id);
    await session.db.updateRow<DirectMessage>(
      $directMessage,
      columns: [DirectMessage.t.receiverId],
      transaction: transaction,
    );
  }
}
