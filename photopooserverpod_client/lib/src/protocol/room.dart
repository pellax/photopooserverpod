/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'rooms_membership.dart' as _i2;
import 'message.dart' as _i3;

abstract class Room implements _i1.SerializableModel {
  Room._({
    this.id,
    required this.name,
    required this.description,
    required this.city,
    this.users,
    this.messages,
  });

  factory Room({
    int? id,
    required String name,
    required String description,
    required String city,
    List<_i2.RoomsMembership>? users,
    List<_i3.Message>? messages,
  }) = _RoomImpl;

  factory Room.fromJson(Map<String, dynamic> jsonSerialization) {
    return Room(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String,
      city: jsonSerialization['city'] as String,
      users: (jsonSerialization['users'] as List?)
          ?.map(
              (e) => _i2.RoomsMembership.fromJson((e as Map<String, dynamic>)))
          .toList(),
      messages: (jsonSerialization['messages'] as List?)
          ?.map((e) => _i3.Message.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String description;

  String city;

  List<_i2.RoomsMembership>? users;

  List<_i3.Message>? messages;

  /// Returns a shallow copy of this [Room]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Room copyWith({
    int? id,
    String? name,
    String? description,
    String? city,
    List<_i2.RoomsMembership>? users,
    List<_i3.Message>? messages,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'city': city,
      if (users != null) 'users': users?.toJson(valueToJson: (v) => v.toJson()),
      if (messages != null)
        'messages': messages?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RoomImpl extends Room {
  _RoomImpl({
    int? id,
    required String name,
    required String description,
    required String city,
    List<_i2.RoomsMembership>? users,
    List<_i3.Message>? messages,
  }) : super._(
          id: id,
          name: name,
          description: description,
          city: city,
          users: users,
          messages: messages,
        );

  /// Returns a shallow copy of this [Room]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Room copyWith({
    Object? id = _Undefined,
    String? name,
    String? description,
    String? city,
    Object? users = _Undefined,
    Object? messages = _Undefined,
  }) {
    return Room(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      city: city ?? this.city,
      users: users is List<_i2.RoomsMembership>?
          ? users
          : this.users?.map((e0) => e0.copyWith()).toList(),
      messages: messages is List<_i3.Message>?
          ? messages
          : this.messages?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
