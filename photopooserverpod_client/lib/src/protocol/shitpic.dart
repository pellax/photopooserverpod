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
import 'dart:typed_data' as _i2;

abstract class Shitpic implements _i1.SerializableModel {
  Shitpic._({
    this.id,
    required this.pic,
    required this.time,
    required this.size,
  });

  factory Shitpic({
    int? id,
    required _i2.ByteData pic,
    required DateTime time,
    required int size,
  }) = _ShitpicImpl;

  factory Shitpic.fromJson(Map<String, dynamic> jsonSerialization) {
    return Shitpic(
      id: jsonSerialization['id'] as int?,
      pic: _i1.ByteDataJsonExtension.fromJson(jsonSerialization['pic']),
      time: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['time']),
      size: jsonSerialization['size'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.ByteData pic;

  DateTime time;

  int size;

  /// Returns a shallow copy of this [Shitpic]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Shitpic copyWith({
    int? id,
    _i2.ByteData? pic,
    DateTime? time,
    int? size,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'pic': pic.toJson(),
      'time': time.toJson(),
      'size': size,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShitpicImpl extends Shitpic {
  _ShitpicImpl({
    int? id,
    required _i2.ByteData pic,
    required DateTime time,
    required int size,
  }) : super._(
          id: id,
          pic: pic,
          time: time,
          size: size,
        );

  /// Returns a shallow copy of this [Shitpic]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Shitpic copyWith({
    Object? id = _Undefined,
    _i2.ByteData? pic,
    DateTime? time,
    int? size,
  }) {
    return Shitpic(
      id: id is int? ? id : this.id,
      pic: pic ?? this.pic.clone(),
      time: time ?? this.time,
      size: size ?? this.size,
    );
  }
}
