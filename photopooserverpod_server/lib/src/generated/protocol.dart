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
import 'package:serverpod/protocol.dart' as _i2;
import 'dietType_enum.dart' as _i3;
import 'direct_message.dart' as _i4;
import 'example.dart' as _i5;
import 'post.dart' as _i6;
import 'room.dart' as _i7;
import 'rooms_membership.dart' as _i8;
import 'shitpic.dart' as _i9;
import 'user.dart' as _i10;
export 'dietType_enum.dart';
export 'direct_message.dart';
export 'example.dart';
export 'post.dart';
export 'room.dart';
export 'rooms_membership.dart';
export 'shitpic.dart';
export 'user.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'direct_message',
      dartName: 'DirectMessage',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'direct_message_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'senderId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'receiverId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'message',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'time',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'read',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'direct_message_fk_0',
          columns: ['senderId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'direct_message_fk_1',
          columns: ['receiverId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'direct_message_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'dm_index',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'senderId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'receiverId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'time',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'post',
      dartName: 'Post',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'post_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'time',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'shitid',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'message',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: '_userShitlistUserId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'post_fk_0',
          columns: ['userId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'post_fk_1',
          columns: ['shitid'],
          referenceTable: 'shitpic',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'post_fk_2',
          columns: ['_userShitlistUserId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'post_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'shit_unique_id',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'shitid',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'room',
      dartName: 'Room',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'room_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'city',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'room_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'rooms_membership',
      dartName: 'RoomsMembership',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'rooms_membership_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'roomId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'rooms_membership_fk_0',
          columns: ['userId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'rooms_membership_fk_1',
          columns: ['roomId'],
          referenceTable: 'room',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'rooms_membership_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'membership_index',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'roomId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'shitpic',
      dartName: 'Shitpic',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'shitpic_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'pic',
          columnType: _i2.ColumnType.bytea,
          isNullable: false,
          dartType: 'dart:typed_data:ByteData',
        ),
        _i2.ColumnDefinition(
          name: 'time',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'size',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'shitpic_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'user',
      dartName: 'User',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'user_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'username',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'passwrord',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'phone',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'age',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'diet',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:DietTypeEnum',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i3.DietTypeEnum) {
      return _i3.DietTypeEnum.fromJson(data) as T;
    }
    if (t == _i4.DirectMessage) {
      return _i4.DirectMessage.fromJson(data) as T;
    }
    if (t == _i5.Example) {
      return _i5.Example.fromJson(data) as T;
    }
    if (t == _i6.Post) {
      return _i6.Post.fromJson(data) as T;
    }
    if (t == _i7.Room) {
      return _i7.Room.fromJson(data) as T;
    }
    if (t == _i8.RoomsMembership) {
      return _i8.RoomsMembership.fromJson(data) as T;
    }
    if (t == _i9.Shitpic) {
      return _i9.Shitpic.fromJson(data) as T;
    }
    if (t == _i10.User) {
      return _i10.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i3.DietTypeEnum?>()) {
      return (data != null ? _i3.DietTypeEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.DirectMessage?>()) {
      return (data != null ? _i4.DirectMessage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Example?>()) {
      return (data != null ? _i5.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Post?>()) {
      return (data != null ? _i6.Post.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Room?>()) {
      return (data != null ? _i7.Room.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.RoomsMembership?>()) {
      return (data != null ? _i8.RoomsMembership.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Shitpic?>()) {
      return (data != null ? _i9.Shitpic.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.User?>()) {
      return (data != null ? _i10.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i8.RoomsMembership>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i8.RoomsMembership>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i8.RoomsMembership>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i8.RoomsMembership>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i4.DirectMessage>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i4.DirectMessage>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i4.DirectMessage>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i4.DirectMessage>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i6.Post>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i6.Post>(e)).toList()
          : null) as T;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i3.DietTypeEnum) {
      return 'DietTypeEnum';
    }
    if (data is _i4.DirectMessage) {
      return 'DirectMessage';
    }
    if (data is _i5.Example) {
      return 'Example';
    }
    if (data is _i6.Post) {
      return 'Post';
    }
    if (data is _i7.Room) {
      return 'Room';
    }
    if (data is _i8.RoomsMembership) {
      return 'RoomsMembership';
    }
    if (data is _i9.Shitpic) {
      return 'Shitpic';
    }
    if (data is _i10.User) {
      return 'User';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'DietTypeEnum') {
      return deserialize<_i3.DietTypeEnum>(data['data']);
    }
    if (dataClassName == 'DirectMessage') {
      return deserialize<_i4.DirectMessage>(data['data']);
    }
    if (dataClassName == 'Example') {
      return deserialize<_i5.Example>(data['data']);
    }
    if (dataClassName == 'Post') {
      return deserialize<_i6.Post>(data['data']);
    }
    if (dataClassName == 'Room') {
      return deserialize<_i7.Room>(data['data']);
    }
    if (dataClassName == 'RoomsMembership') {
      return deserialize<_i8.RoomsMembership>(data['data']);
    }
    if (dataClassName == 'Shitpic') {
      return deserialize<_i9.Shitpic>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i10.User>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.DirectMessage:
        return _i4.DirectMessage.t;
      case _i6.Post:
        return _i6.Post.t;
      case _i7.Room:
        return _i7.Room.t;
      case _i8.RoomsMembership:
        return _i8.RoomsMembership.t;
      case _i9.Shitpic:
        return _i9.Shitpic.t;
      case _i10.User:
        return _i10.User.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'photopooserverpod';
}
