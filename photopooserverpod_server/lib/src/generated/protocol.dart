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
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;
import 'blocked.dart' as _i4;
import 'dietType_enum.dart' as _i5;
import 'direct_message.dart' as _i6;
import 'dress.dart' as _i7;
import 'example.dart' as _i8;
import 'face.dart' as _i9;
import 'friends.dart' as _i10;
import 'friendship_request.dart' as _i11;
import 'genderType_enum.dart' as _i12;
import 'hair.dart' as _i13;
import 'lengthType_enum.dart' as _i14;
import 'look.dart' as _i15;
import 'message.dart' as _i16;
import 'post.dart' as _i17;
import 'room.dart' as _i18;
import 'rooms_membership.dart' as _i19;
import 'shitpic.dart' as _i20;
import 'shoes.dart' as _i21;
import 'skin.dart' as _i22;
import 'skinColorType_enum.dart' as _i23;
import 'status_enum.dart' as _i24;
import 'typeColor_enum.dart' as _i25;
import 'typestyle_enum.dart' as _i26;
import 'user.dart' as _i27;
import 'package:photopooserverpod_server/src/generated/friends.dart' as _i28;
import 'package:photopooserverpod_server/src/generated/post.dart' as _i29;
import 'package:photopooserverpod_server/src/generated/room.dart' as _i30;
import 'package:photopooserverpod_server/src/generated/user.dart' as _i31;
export 'blocked.dart';
export 'dietType_enum.dart';
export 'direct_message.dart';
export 'dress.dart';
export 'example.dart';
export 'face.dart';
export 'friends.dart';
export 'friendship_request.dart';
export 'genderType_enum.dart';
export 'hair.dart';
export 'lengthType_enum.dart';
export 'look.dart';
export 'message.dart';
export 'post.dart';
export 'room.dart';
export 'rooms_membership.dart';
export 'shitpic.dart';
export 'shoes.dart';
export 'skin.dart';
export 'skinColorType_enum.dart';
export 'status_enum.dart';
export 'typeColor_enum.dart';
export 'typestyle_enum.dart';
export 'user.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'blocked',
      dartName: 'Blocked',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'blocked_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'blockedId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'blockedById',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'blocked_fk_0',
          columns: ['blockedId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'blocked_fk_1',
          columns: ['blockedById'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'blocked_pkey',
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
          indexName: 'blocking_blocked',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'blockedId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'blockedById',
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
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'dress',
      dartName: 'Dress',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'dress_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'image',
          columnType: _i2.ColumnType.bytea,
          isNullable: false,
          dartType: 'dart:typed_data:ByteData',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:ColorTypeEnum',
        ),
        _i2.ColumnDefinition(
          name: 'hexColor',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'dress_pkey',
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
      name: 'face',
      dartName: 'Face',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'face_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'image',
          columnType: _i2.ColumnType.bytea,
          isNullable: false,
          dartType: 'dart:typed_data:ByteData',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'face_pkey',
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
      name: 'friends',
      dartName: 'Friends',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'friends_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'friendsId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'friendsById',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'friends_fk_0',
          columns: ['friendsId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'friends_fk_1',
          columns: ['friendsById'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.cascade,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'friends_pkey',
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
          indexName: 'friend_friended',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'friendsId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'friendsById',
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
      name: 'friendship_requests',
      dartName: 'FriendShipRequest',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'friendship_requests_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'friendId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'friendbyId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'accept',
          columnType: _i2.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _i2.ColumnDefinition(
          name: 'message',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:StatusEnum',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'friendship_requests_fk_0',
          columns: ['friendId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'friendship_requests_fk_1',
          columns: ['friendbyId'],
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
          indexName: 'friendship_requests_pkey',
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
          indexName: 'request_index_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'friendId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'friendbyId',
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
      name: 'hair',
      dartName: 'Hair',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'hair_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:ColorTypeEnum',
        ),
        _i2.ColumnDefinition(
          name: 'length',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:TypeLengthEnum',
        ),
        _i2.ColumnDefinition(
          name: 'style',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:TypeStyleEnum',
        ),
        _i2.ColumnDefinition(
          name: 'image',
          columnType: _i2.ColumnType.bytea,
          isNullable: false,
          dartType: 'dart:typed_data:ByteData',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'hair_pkey',
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
      name: 'look',
      dartName: 'Look',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'look_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'hairId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'dressId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'faceId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'skinId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'gender',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:GenderTypeEnum',
        ),
        _i2.ColumnDefinition(
          name: 'shoesId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'look_fk_0',
          columns: ['hairId'],
          referenceTable: 'hair',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'look_fk_1',
          columns: ['dressId'],
          referenceTable: 'dress',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'look_fk_2',
          columns: ['faceId'],
          referenceTable: 'face',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'look_fk_3',
          columns: ['skinId'],
          referenceTable: 'skin',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'look_fk_4',
          columns: ['shoesId'],
          referenceTable: 'shoes',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'look_pkey',
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
      name: 'message',
      dartName: 'Message',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'message_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'ownerId',
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
        _i2.ColumnDefinition(
          name: 'message',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'message_fk_0',
          columns: ['ownerId'],
          referenceTable: 'user',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'message_fk_1',
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
          indexName: 'message_pkey',
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
      name: 'shoes',
      dartName: 'Shoes',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'shoes_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'image',
          columnType: _i2.ColumnType.bytea,
          isNullable: false,
          dartType: 'dart:typed_data:ByteData',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:ColorTypeEnum',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'shoes_pkey',
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
      name: 'skin',
      dartName: 'Skin',
      schema: 'public',
      module: 'photopooserverpod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'skin_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'color',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:SkinColorTypeEnum',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'skin_pkey',
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
        _i2.ColumnDefinition(
          name: 'lookId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'user_fk_0',
          columns: ['lookId'],
          referenceTable: 'look',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
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
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i4.Blocked) {
      return _i4.Blocked.fromJson(data) as T;
    }
    if (t == _i5.DietTypeEnum) {
      return _i5.DietTypeEnum.fromJson(data) as T;
    }
    if (t == _i6.DirectMessage) {
      return _i6.DirectMessage.fromJson(data) as T;
    }
    if (t == _i7.Dress) {
      return _i7.Dress.fromJson(data) as T;
    }
    if (t == _i8.Example) {
      return _i8.Example.fromJson(data) as T;
    }
    if (t == _i9.Face) {
      return _i9.Face.fromJson(data) as T;
    }
    if (t == _i10.Friends) {
      return _i10.Friends.fromJson(data) as T;
    }
    if (t == _i11.FriendShipRequest) {
      return _i11.FriendShipRequest.fromJson(data) as T;
    }
    if (t == _i12.GenderTypeEnum) {
      return _i12.GenderTypeEnum.fromJson(data) as T;
    }
    if (t == _i13.Hair) {
      return _i13.Hair.fromJson(data) as T;
    }
    if (t == _i14.TypeLengthEnum) {
      return _i14.TypeLengthEnum.fromJson(data) as T;
    }
    if (t == _i15.Look) {
      return _i15.Look.fromJson(data) as T;
    }
    if (t == _i16.Message) {
      return _i16.Message.fromJson(data) as T;
    }
    if (t == _i17.Post) {
      return _i17.Post.fromJson(data) as T;
    }
    if (t == _i18.Room) {
      return _i18.Room.fromJson(data) as T;
    }
    if (t == _i19.RoomsMembership) {
      return _i19.RoomsMembership.fromJson(data) as T;
    }
    if (t == _i20.Shitpic) {
      return _i20.Shitpic.fromJson(data) as T;
    }
    if (t == _i21.Shoes) {
      return _i21.Shoes.fromJson(data) as T;
    }
    if (t == _i22.Skin) {
      return _i22.Skin.fromJson(data) as T;
    }
    if (t == _i23.SkinColorTypeEnum) {
      return _i23.SkinColorTypeEnum.fromJson(data) as T;
    }
    if (t == _i24.StatusEnum) {
      return _i24.StatusEnum.fromJson(data) as T;
    }
    if (t == _i25.ColorTypeEnum) {
      return _i25.ColorTypeEnum.fromJson(data) as T;
    }
    if (t == _i26.TypeStyleEnum) {
      return _i26.TypeStyleEnum.fromJson(data) as T;
    }
    if (t == _i27.User) {
      return _i27.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i4.Blocked?>()) {
      return (data != null ? _i4.Blocked.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.DietTypeEnum?>()) {
      return (data != null ? _i5.DietTypeEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.DirectMessage?>()) {
      return (data != null ? _i6.DirectMessage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Dress?>()) {
      return (data != null ? _i7.Dress.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Example?>()) {
      return (data != null ? _i8.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Face?>()) {
      return (data != null ? _i9.Face.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Friends?>()) {
      return (data != null ? _i10.Friends.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.FriendShipRequest?>()) {
      return (data != null ? _i11.FriendShipRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.GenderTypeEnum?>()) {
      return (data != null ? _i12.GenderTypeEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Hair?>()) {
      return (data != null ? _i13.Hair.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.TypeLengthEnum?>()) {
      return (data != null ? _i14.TypeLengthEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.Look?>()) {
      return (data != null ? _i15.Look.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.Message?>()) {
      return (data != null ? _i16.Message.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.Post?>()) {
      return (data != null ? _i17.Post.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.Room?>()) {
      return (data != null ? _i18.Room.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.RoomsMembership?>()) {
      return (data != null ? _i19.RoomsMembership.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.Shitpic?>()) {
      return (data != null ? _i20.Shitpic.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.Shoes?>()) {
      return (data != null ? _i21.Shoes.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.Skin?>()) {
      return (data != null ? _i22.Skin.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i23.SkinColorTypeEnum?>()) {
      return (data != null ? _i23.SkinColorTypeEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.StatusEnum?>()) {
      return (data != null ? _i24.StatusEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i25.ColorTypeEnum?>()) {
      return (data != null ? _i25.ColorTypeEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i26.TypeStyleEnum?>()) {
      return (data != null ? _i26.TypeStyleEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i27.User?>()) {
      return (data != null ? _i27.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i15.Look>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Look>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i15.Look>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Look>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i15.Look>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Look>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i27.User>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i27.User>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i19.RoomsMembership>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.RoomsMembership>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i16.Message>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.Message>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i15.Look>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Look>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i15.Look>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Look>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i19.RoomsMembership>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i19.RoomsMembership>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i6.DirectMessage>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i6.DirectMessage>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i6.DirectMessage>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i6.DirectMessage>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i17.Post>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i17.Post>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i10.Friends>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i10.Friends>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i10.Friends>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i10.Friends>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i4.Blocked>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i4.Blocked>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i4.Blocked>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i4.Blocked>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i16.Message>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i16.Message>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i11.FriendShipRequest>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i11.FriendShipRequest>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i11.FriendShipRequest>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i11.FriendShipRequest>(e))
              .toList()
          : null) as T;
    }
    if (t == List<_i28.Friends>) {
      return (data as List).map((e) => deserialize<_i28.Friends>(e)).toList()
          as T;
    }
    if (t == List<_i29.Post>) {
      return (data as List).map((e) => deserialize<_i29.Post>(e)).toList() as T;
    }
    if (t == List<_i30.Room>) {
      return (data as List).map((e) => deserialize<_i30.Room>(e)).toList() as T;
    }
    if (t == List<_i31.User>) {
      return (data as List).map((e) => deserialize<_i31.User>(e)).toList() as T;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i4.Blocked) {
      return 'Blocked';
    }
    if (data is _i5.DietTypeEnum) {
      return 'DietTypeEnum';
    }
    if (data is _i6.DirectMessage) {
      return 'DirectMessage';
    }
    if (data is _i7.Dress) {
      return 'Dress';
    }
    if (data is _i8.Example) {
      return 'Example';
    }
    if (data is _i9.Face) {
      return 'Face';
    }
    if (data is _i10.Friends) {
      return 'Friends';
    }
    if (data is _i11.FriendShipRequest) {
      return 'FriendShipRequest';
    }
    if (data is _i12.GenderTypeEnum) {
      return 'GenderTypeEnum';
    }
    if (data is _i13.Hair) {
      return 'Hair';
    }
    if (data is _i14.TypeLengthEnum) {
      return 'TypeLengthEnum';
    }
    if (data is _i15.Look) {
      return 'Look';
    }
    if (data is _i16.Message) {
      return 'Message';
    }
    if (data is _i17.Post) {
      return 'Post';
    }
    if (data is _i18.Room) {
      return 'Room';
    }
    if (data is _i19.RoomsMembership) {
      return 'RoomsMembership';
    }
    if (data is _i20.Shitpic) {
      return 'Shitpic';
    }
    if (data is _i21.Shoes) {
      return 'Shoes';
    }
    if (data is _i22.Skin) {
      return 'Skin';
    }
    if (data is _i23.SkinColorTypeEnum) {
      return 'SkinColorTypeEnum';
    }
    if (data is _i24.StatusEnum) {
      return 'StatusEnum';
    }
    if (data is _i25.ColorTypeEnum) {
      return 'ColorTypeEnum';
    }
    if (data is _i26.TypeStyleEnum) {
      return 'TypeStyleEnum';
    }
    if (data is _i27.User) {
      return 'User';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Blocked') {
      return deserialize<_i4.Blocked>(data['data']);
    }
    if (dataClassName == 'DietTypeEnum') {
      return deserialize<_i5.DietTypeEnum>(data['data']);
    }
    if (dataClassName == 'DirectMessage') {
      return deserialize<_i6.DirectMessage>(data['data']);
    }
    if (dataClassName == 'Dress') {
      return deserialize<_i7.Dress>(data['data']);
    }
    if (dataClassName == 'Example') {
      return deserialize<_i8.Example>(data['data']);
    }
    if (dataClassName == 'Face') {
      return deserialize<_i9.Face>(data['data']);
    }
    if (dataClassName == 'Friends') {
      return deserialize<_i10.Friends>(data['data']);
    }
    if (dataClassName == 'FriendShipRequest') {
      return deserialize<_i11.FriendShipRequest>(data['data']);
    }
    if (dataClassName == 'GenderTypeEnum') {
      return deserialize<_i12.GenderTypeEnum>(data['data']);
    }
    if (dataClassName == 'Hair') {
      return deserialize<_i13.Hair>(data['data']);
    }
    if (dataClassName == 'TypeLengthEnum') {
      return deserialize<_i14.TypeLengthEnum>(data['data']);
    }
    if (dataClassName == 'Look') {
      return deserialize<_i15.Look>(data['data']);
    }
    if (dataClassName == 'Message') {
      return deserialize<_i16.Message>(data['data']);
    }
    if (dataClassName == 'Post') {
      return deserialize<_i17.Post>(data['data']);
    }
    if (dataClassName == 'Room') {
      return deserialize<_i18.Room>(data['data']);
    }
    if (dataClassName == 'RoomsMembership') {
      return deserialize<_i19.RoomsMembership>(data['data']);
    }
    if (dataClassName == 'Shitpic') {
      return deserialize<_i20.Shitpic>(data['data']);
    }
    if (dataClassName == 'Shoes') {
      return deserialize<_i21.Shoes>(data['data']);
    }
    if (dataClassName == 'Skin') {
      return deserialize<_i22.Skin>(data['data']);
    }
    if (dataClassName == 'SkinColorTypeEnum') {
      return deserialize<_i23.SkinColorTypeEnum>(data['data']);
    }
    if (dataClassName == 'StatusEnum') {
      return deserialize<_i24.StatusEnum>(data['data']);
    }
    if (dataClassName == 'ColorTypeEnum') {
      return deserialize<_i25.ColorTypeEnum>(data['data']);
    }
    if (dataClassName == 'TypeStyleEnum') {
      return deserialize<_i26.TypeStyleEnum>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i27.User>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.Blocked:
        return _i4.Blocked.t;
      case _i6.DirectMessage:
        return _i6.DirectMessage.t;
      case _i7.Dress:
        return _i7.Dress.t;
      case _i9.Face:
        return _i9.Face.t;
      case _i10.Friends:
        return _i10.Friends.t;
      case _i11.FriendShipRequest:
        return _i11.FriendShipRequest.t;
      case _i13.Hair:
        return _i13.Hair.t;
      case _i15.Look:
        return _i15.Look.t;
      case _i16.Message:
        return _i16.Message.t;
      case _i17.Post:
        return _i17.Post.t;
      case _i18.Room:
        return _i18.Room.t;
      case _i19.RoomsMembership:
        return _i19.RoomsMembership.t;
      case _i20.Shitpic:
        return _i20.Shitpic.t;
      case _i21.Shoes:
        return _i21.Shoes.t;
      case _i22.Skin:
        return _i22.Skin.t;
      case _i27.User:
        return _i27.User.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'photopooserverpod';
}
