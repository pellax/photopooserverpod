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
import 'blocked.dart' as _i3;
import 'dietType_enum.dart' as _i4;
import 'direct_message.dart' as _i5;
import 'dress.dart' as _i6;
import 'example.dart' as _i7;
import 'face.dart' as _i8;
import 'friends.dart' as _i9;
import 'genderType_enum.dart' as _i10;
import 'hair.dart' as _i11;
import 'lengthType_enum.dart' as _i12;
import 'look.dart' as _i13;
import 'message.dart' as _i14;
import 'post.dart' as _i15;
import 'room.dart' as _i16;
import 'rooms_membership.dart' as _i17;
import 'shitpic.dart' as _i18;
import 'shoes.dart' as _i19;
import 'skin.dart' as _i20;
import 'skinColorType_enum.dart' as _i21;
import 'typeColor_enum.dart' as _i22;
import 'typestyle_enum.dart' as _i23;
import 'user.dart' as _i24;
export 'blocked.dart';
export 'dietType_enum.dart';
export 'direct_message.dart';
export 'dress.dart';
export 'example.dart';
export 'face.dart';
export 'friends.dart';
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
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i3.Blocked) {
      return _i3.Blocked.fromJson(data) as T;
    }
    if (t == _i4.DietTypeEnum) {
      return _i4.DietTypeEnum.fromJson(data) as T;
    }
    if (t == _i5.DirectMessage) {
      return _i5.DirectMessage.fromJson(data) as T;
    }
    if (t == _i6.Dress) {
      return _i6.Dress.fromJson(data) as T;
    }
    if (t == _i7.Example) {
      return _i7.Example.fromJson(data) as T;
    }
    if (t == _i8.Face) {
      return _i8.Face.fromJson(data) as T;
    }
    if (t == _i9.Friends) {
      return _i9.Friends.fromJson(data) as T;
    }
    if (t == _i10.GenderTypeEnum) {
      return _i10.GenderTypeEnum.fromJson(data) as T;
    }
    if (t == _i11.Hair) {
      return _i11.Hair.fromJson(data) as T;
    }
    if (t == _i12.TypeLengthEnum) {
      return _i12.TypeLengthEnum.fromJson(data) as T;
    }
    if (t == _i13.Look) {
      return _i13.Look.fromJson(data) as T;
    }
    if (t == _i14.Message) {
      return _i14.Message.fromJson(data) as T;
    }
    if (t == _i15.Post) {
      return _i15.Post.fromJson(data) as T;
    }
    if (t == _i16.Room) {
      return _i16.Room.fromJson(data) as T;
    }
    if (t == _i17.RoomsMembership) {
      return _i17.RoomsMembership.fromJson(data) as T;
    }
    if (t == _i18.Shitpic) {
      return _i18.Shitpic.fromJson(data) as T;
    }
    if (t == _i19.Shoes) {
      return _i19.Shoes.fromJson(data) as T;
    }
    if (t == _i20.Skin) {
      return _i20.Skin.fromJson(data) as T;
    }
    if (t == _i21.SkinColorTypeEnum) {
      return _i21.SkinColorTypeEnum.fromJson(data) as T;
    }
    if (t == _i22.ColorTypeEnum) {
      return _i22.ColorTypeEnum.fromJson(data) as T;
    }
    if (t == _i23.TypeStyleEnum) {
      return _i23.TypeStyleEnum.fromJson(data) as T;
    }
    if (t == _i24.User) {
      return _i24.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i3.Blocked?>()) {
      return (data != null ? _i3.Blocked.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.DietTypeEnum?>()) {
      return (data != null ? _i4.DietTypeEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.DirectMessage?>()) {
      return (data != null ? _i5.DirectMessage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Dress?>()) {
      return (data != null ? _i6.Dress.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Example?>()) {
      return (data != null ? _i7.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Face?>()) {
      return (data != null ? _i8.Face.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Friends?>()) {
      return (data != null ? _i9.Friends.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.GenderTypeEnum?>()) {
      return (data != null ? _i10.GenderTypeEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Hair?>()) {
      return (data != null ? _i11.Hair.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.TypeLengthEnum?>()) {
      return (data != null ? _i12.TypeLengthEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.Look?>()) {
      return (data != null ? _i13.Look.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.Message?>()) {
      return (data != null ? _i14.Message.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.Post?>()) {
      return (data != null ? _i15.Post.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.Room?>()) {
      return (data != null ? _i16.Room.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.RoomsMembership?>()) {
      return (data != null ? _i17.RoomsMembership.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.Shitpic?>()) {
      return (data != null ? _i18.Shitpic.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.Shoes?>()) {
      return (data != null ? _i19.Shoes.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.Skin?>()) {
      return (data != null ? _i20.Skin.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.SkinColorTypeEnum?>()) {
      return (data != null ? _i21.SkinColorTypeEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.ColorTypeEnum?>()) {
      return (data != null ? _i22.ColorTypeEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i23.TypeStyleEnum?>()) {
      return (data != null ? _i23.TypeStyleEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.User?>()) {
      return (data != null ? _i24.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i13.Look>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i13.Look>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i13.Look>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i13.Look>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i13.Look>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i13.Look>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i24.User>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i24.User>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i17.RoomsMembership>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.RoomsMembership>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i14.Message>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i14.Message>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i13.Look>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i13.Look>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i13.Look>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i13.Look>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i17.RoomsMembership>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i17.RoomsMembership>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i5.DirectMessage>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i5.DirectMessage>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i5.DirectMessage>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i5.DirectMessage>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i15.Post>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Post>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i9.Friends>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i9.Friends>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i9.Friends>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i9.Friends>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i3.Blocked>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i3.Blocked>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i3.Blocked>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i3.Blocked>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i14.Message>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i14.Message>(e)).toList()
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
    if (data is _i3.Blocked) {
      return 'Blocked';
    }
    if (data is _i4.DietTypeEnum) {
      return 'DietTypeEnum';
    }
    if (data is _i5.DirectMessage) {
      return 'DirectMessage';
    }
    if (data is _i6.Dress) {
      return 'Dress';
    }
    if (data is _i7.Example) {
      return 'Example';
    }
    if (data is _i8.Face) {
      return 'Face';
    }
    if (data is _i9.Friends) {
      return 'Friends';
    }
    if (data is _i10.GenderTypeEnum) {
      return 'GenderTypeEnum';
    }
    if (data is _i11.Hair) {
      return 'Hair';
    }
    if (data is _i12.TypeLengthEnum) {
      return 'TypeLengthEnum';
    }
    if (data is _i13.Look) {
      return 'Look';
    }
    if (data is _i14.Message) {
      return 'Message';
    }
    if (data is _i15.Post) {
      return 'Post';
    }
    if (data is _i16.Room) {
      return 'Room';
    }
    if (data is _i17.RoomsMembership) {
      return 'RoomsMembership';
    }
    if (data is _i18.Shitpic) {
      return 'Shitpic';
    }
    if (data is _i19.Shoes) {
      return 'Shoes';
    }
    if (data is _i20.Skin) {
      return 'Skin';
    }
    if (data is _i21.SkinColorTypeEnum) {
      return 'SkinColorTypeEnum';
    }
    if (data is _i22.ColorTypeEnum) {
      return 'ColorTypeEnum';
    }
    if (data is _i23.TypeStyleEnum) {
      return 'TypeStyleEnum';
    }
    if (data is _i24.User) {
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
    if (dataClassName == 'Blocked') {
      return deserialize<_i3.Blocked>(data['data']);
    }
    if (dataClassName == 'DietTypeEnum') {
      return deserialize<_i4.DietTypeEnum>(data['data']);
    }
    if (dataClassName == 'DirectMessage') {
      return deserialize<_i5.DirectMessage>(data['data']);
    }
    if (dataClassName == 'Dress') {
      return deserialize<_i6.Dress>(data['data']);
    }
    if (dataClassName == 'Example') {
      return deserialize<_i7.Example>(data['data']);
    }
    if (dataClassName == 'Face') {
      return deserialize<_i8.Face>(data['data']);
    }
    if (dataClassName == 'Friends') {
      return deserialize<_i9.Friends>(data['data']);
    }
    if (dataClassName == 'GenderTypeEnum') {
      return deserialize<_i10.GenderTypeEnum>(data['data']);
    }
    if (dataClassName == 'Hair') {
      return deserialize<_i11.Hair>(data['data']);
    }
    if (dataClassName == 'TypeLengthEnum') {
      return deserialize<_i12.TypeLengthEnum>(data['data']);
    }
    if (dataClassName == 'Look') {
      return deserialize<_i13.Look>(data['data']);
    }
    if (dataClassName == 'Message') {
      return deserialize<_i14.Message>(data['data']);
    }
    if (dataClassName == 'Post') {
      return deserialize<_i15.Post>(data['data']);
    }
    if (dataClassName == 'Room') {
      return deserialize<_i16.Room>(data['data']);
    }
    if (dataClassName == 'RoomsMembership') {
      return deserialize<_i17.RoomsMembership>(data['data']);
    }
    if (dataClassName == 'Shitpic') {
      return deserialize<_i18.Shitpic>(data['data']);
    }
    if (dataClassName == 'Shoes') {
      return deserialize<_i19.Shoes>(data['data']);
    }
    if (dataClassName == 'Skin') {
      return deserialize<_i20.Skin>(data['data']);
    }
    if (dataClassName == 'SkinColorTypeEnum') {
      return deserialize<_i21.SkinColorTypeEnum>(data['data']);
    }
    if (dataClassName == 'ColorTypeEnum') {
      return deserialize<_i22.ColorTypeEnum>(data['data']);
    }
    if (dataClassName == 'TypeStyleEnum') {
      return deserialize<_i23.TypeStyleEnum>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i24.User>(data['data']);
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
      case _i3.Blocked:
        return _i3.Blocked.t;
      case _i5.DirectMessage:
        return _i5.DirectMessage.t;
      case _i6.Dress:
        return _i6.Dress.t;
      case _i8.Face:
        return _i8.Face.t;
      case _i9.Friends:
        return _i9.Friends.t;
      case _i11.Hair:
        return _i11.Hair.t;
      case _i13.Look:
        return _i13.Look.t;
      case _i14.Message:
        return _i14.Message.t;
      case _i15.Post:
        return _i15.Post.t;
      case _i16.Room:
        return _i16.Room.t;
      case _i17.RoomsMembership:
        return _i17.RoomsMembership.t;
      case _i18.Shitpic:
        return _i18.Shitpic.t;
      case _i19.Shoes:
        return _i19.Shoes.t;
      case _i20.Skin:
        return _i20.Skin.t;
      case _i24.User:
        return _i24.User.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'photopooserverpod';
}
