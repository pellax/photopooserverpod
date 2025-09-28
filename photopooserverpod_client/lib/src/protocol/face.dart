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
import 'look.dart' as _i3;

abstract class Face implements _i1.SerializableModel {
  Face._({
    this.id,
    required this.image,
    this.look,
  });

  factory Face({
    int? id,
    required _i2.ByteData image,
    List<_i3.Look>? look,
  }) = _FaceImpl;

  factory Face.fromJson(Map<String, dynamic> jsonSerialization) {
    return Face(
      id: jsonSerialization['id'] as int?,
      image: _i1.ByteDataJsonExtension.fromJson(jsonSerialization['image']),
      look: (jsonSerialization['look'] as List?)
          ?.map((e) => _i3.Look.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.ByteData image;

  List<_i3.Look>? look;

  /// Returns a shallow copy of this [Face]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Face copyWith({
    int? id,
    _i2.ByteData? image,
    List<_i3.Look>? look,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'image': image.toJson(),
      if (look != null) 'look': look?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FaceImpl extends Face {
  _FaceImpl({
    int? id,
    required _i2.ByteData image,
    List<_i3.Look>? look,
  }) : super._(
          id: id,
          image: image,
          look: look,
        );

  /// Returns a shallow copy of this [Face]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Face copyWith({
    Object? id = _Undefined,
    _i2.ByteData? image,
    Object? look = _Undefined,
  }) {
    return Face(
      id: id is int? ? id : this.id,
      image: image ?? this.image.clone(),
      look: look is List<_i3.Look>?
          ? look
          : this.look?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
