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
import 'room.dart' as _i3;

abstract class Message
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Message._({
    this.id,
    required this.ownerId,
    this.owner,
    required this.roomId,
    this.room,
    required this.message,
  });

  factory Message({
    int? id,
    required int ownerId,
    _i2.User? owner,
    required int roomId,
    _i3.Room? room,
    required String message,
  }) = _MessageImpl;

  factory Message.fromJson(Map<String, dynamic> jsonSerialization) {
    return Message(
      id: jsonSerialization['id'] as int?,
      ownerId: jsonSerialization['ownerId'] as int,
      owner: jsonSerialization['owner'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['owner'] as Map<String, dynamic>)),
      roomId: jsonSerialization['roomId'] as int,
      room: jsonSerialization['room'] == null
          ? null
          : _i3.Room.fromJson(
              (jsonSerialization['room'] as Map<String, dynamic>)),
      message: jsonSerialization['message'] as String,
    );
  }

  static final t = MessageTable();

  static const db = MessageRepository._();

  @override
  int? id;

  int ownerId;

  _i2.User? owner;

  int roomId;

  _i3.Room? room;

  String message;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Message]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Message copyWith({
    int? id,
    int? ownerId,
    _i2.User? owner,
    int? roomId,
    _i3.Room? room,
    String? message,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.toJson(),
      'roomId': roomId,
      if (room != null) 'room': room?.toJson(),
      'message': message,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.toJsonForProtocol(),
      'roomId': roomId,
      if (room != null) 'room': room?.toJsonForProtocol(),
      'message': message,
    };
  }

  static MessageInclude include({
    _i2.UserInclude? owner,
    _i3.RoomInclude? room,
  }) {
    return MessageInclude._(
      owner: owner,
      room: room,
    );
  }

  static MessageIncludeList includeList({
    _i1.WhereExpressionBuilder<MessageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTable>? orderByList,
    MessageInclude? include,
  }) {
    return MessageIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Message.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Message.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MessageImpl extends Message {
  _MessageImpl({
    int? id,
    required int ownerId,
    _i2.User? owner,
    required int roomId,
    _i3.Room? room,
    required String message,
  }) : super._(
          id: id,
          ownerId: ownerId,
          owner: owner,
          roomId: roomId,
          room: room,
          message: message,
        );

  /// Returns a shallow copy of this [Message]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Message copyWith({
    Object? id = _Undefined,
    int? ownerId,
    Object? owner = _Undefined,
    int? roomId,
    Object? room = _Undefined,
    String? message,
  }) {
    return Message(
      id: id is int? ? id : this.id,
      ownerId: ownerId ?? this.ownerId,
      owner: owner is _i2.User? ? owner : this.owner?.copyWith(),
      roomId: roomId ?? this.roomId,
      room: room is _i3.Room? ? room : this.room?.copyWith(),
      message: message ?? this.message,
    );
  }
}

class MessageTable extends _i1.Table<int?> {
  MessageTable({super.tableRelation}) : super(tableName: 'message') {
    ownerId = _i1.ColumnInt(
      'ownerId',
      this,
    );
    roomId = _i1.ColumnInt(
      'roomId',
      this,
    );
    message = _i1.ColumnString(
      'message',
      this,
    );
  }

  late final _i1.ColumnInt ownerId;

  _i2.UserTable? _owner;

  late final _i1.ColumnInt roomId;

  _i3.RoomTable? _room;

  late final _i1.ColumnString message;

  _i2.UserTable get owner {
    if (_owner != null) return _owner!;
    _owner = _i1.createRelationTable(
      relationFieldName: 'owner',
      field: Message.t.ownerId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  _i3.RoomTable get room {
    if (_room != null) return _room!;
    _room = _i1.createRelationTable(
      relationFieldName: 'room',
      field: Message.t.roomId,
      foreignField: _i3.Room.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.RoomTable(tableRelation: foreignTableRelation),
    );
    return _room!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        ownerId,
        roomId,
        message,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'owner') {
      return owner;
    }
    if (relationField == 'room') {
      return room;
    }
    return null;
  }
}

class MessageInclude extends _i1.IncludeObject {
  MessageInclude._({
    _i2.UserInclude? owner,
    _i3.RoomInclude? room,
  }) {
    _owner = owner;
    _room = room;
  }

  _i2.UserInclude? _owner;

  _i3.RoomInclude? _room;

  @override
  Map<String, _i1.Include?> get includes => {
        'owner': _owner,
        'room': _room,
      };

  @override
  _i1.Table<int?> get table => Message.t;
}

class MessageIncludeList extends _i1.IncludeList {
  MessageIncludeList._({
    _i1.WhereExpressionBuilder<MessageTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Message.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Message.t;
}

class MessageRepository {
  const MessageRepository._();

  final attachRow = const MessageAttachRowRepository._();

  /// Returns a list of [Message]s matching the given query parameters.
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
  Future<List<Message>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTable>? orderByList,
    _i1.Transaction? transaction,
    MessageInclude? include,
  }) async {
    return session.db.find<Message>(
      where: where?.call(Message.t),
      orderBy: orderBy?.call(Message.t),
      orderByList: orderByList?.call(Message.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Message] matching the given query parameters.
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
  Future<Message?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTable>? where,
    int? offset,
    _i1.OrderByBuilder<MessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MessageTable>? orderByList,
    _i1.Transaction? transaction,
    MessageInclude? include,
  }) async {
    return session.db.findFirstRow<Message>(
      where: where?.call(Message.t),
      orderBy: orderBy?.call(Message.t),
      orderByList: orderByList?.call(Message.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Message] by its [id] or null if no such row exists.
  Future<Message?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    MessageInclude? include,
  }) async {
    return session.db.findById<Message>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Message]s in the list and returns the inserted rows.
  ///
  /// The returned [Message]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Message>> insert(
    _i1.Session session,
    List<Message> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Message>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Message] and returns the inserted row.
  ///
  /// The returned [Message] will have its `id` field set.
  Future<Message> insertRow(
    _i1.Session session,
    Message row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Message>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Message]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Message>> update(
    _i1.Session session,
    List<Message> rows, {
    _i1.ColumnSelections<MessageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Message>(
      rows,
      columns: columns?.call(Message.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Message]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Message> updateRow(
    _i1.Session session,
    Message row, {
    _i1.ColumnSelections<MessageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Message>(
      row,
      columns: columns?.call(Message.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Message]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Message>> delete(
    _i1.Session session,
    List<Message> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Message>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Message].
  Future<Message> deleteRow(
    _i1.Session session,
    Message row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Message>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Message>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MessageTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Message>(
      where: where(Message.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MessageTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Message>(
      where: where?.call(Message.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class MessageAttachRowRepository {
  const MessageAttachRowRepository._();

  /// Creates a relation between the given [Message] and [User]
  /// by setting the [Message]'s foreign key `ownerId` to refer to the [User].
  Future<void> owner(
    _i1.Session session,
    Message message,
    _i2.User owner, {
    _i1.Transaction? transaction,
  }) async {
    if (message.id == null) {
      throw ArgumentError.notNull('message.id');
    }
    if (owner.id == null) {
      throw ArgumentError.notNull('owner.id');
    }

    var $message = message.copyWith(ownerId: owner.id);
    await session.db.updateRow<Message>(
      $message,
      columns: [Message.t.ownerId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [Message] and [Room]
  /// by setting the [Message]'s foreign key `roomId` to refer to the [Room].
  Future<void> room(
    _i1.Session session,
    Message message,
    _i3.Room room, {
    _i1.Transaction? transaction,
  }) async {
    if (message.id == null) {
      throw ArgumentError.notNull('message.id');
    }
    if (room.id == null) {
      throw ArgumentError.notNull('room.id');
    }

    var $message = message.copyWith(roomId: room.id);
    await session.db.updateRow<Message>(
      $message,
      columns: [Message.t.roomId],
      transaction: transaction,
    );
  }
}
