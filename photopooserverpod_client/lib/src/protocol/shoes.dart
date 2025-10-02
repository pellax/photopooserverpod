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
import 'typeColor_enum.dart' as _i3;
import 'look.dart' as _i4;

abstract class Shoes implements _i1.SerializableModel {
  Shoes._({
    this.id,
    required this.image,
    required this.color,
    this.look,
  });

  factory Shoes({
    int? id,
    required _i2.ByteData image,
    required _i3.ColorTypeEnum color,
    List<_i4.Look>? look,
  }) = _ShoesImpl;

  factory Shoes.fromJson(Map<String, dynamic> jsonSerialization) {
    return Shoes(
      id: jsonSerialization['id'] as int?,
      image: _i1.ByteDataJsonExtension.fromJson(jsonSerialization['image']),
      color: _i3.ColorTypeEnum.fromJson((jsonSerialization['color'] as String)),
      look: (jsonSerialization['look'] as List?)
          ?.map((e) => _i4.Look.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.ByteData image;

  _i3.ColorTypeEnum color;

  List<_i4.Look>? look;

  /// Returns a shallow copy of this [Shoes]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Shoes copyWith({
    int? id,
    _i2.ByteData? image,
    _i3.ColorTypeEnum? color,
    List<_i4.Look>? look,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'image': image.toJson(),
      'color': color.toJson(),
      if (look != null) 'look': look?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ShoesImpl extends Shoes {
  _ShoesImpl({
    int? id,
    required _i2.ByteData image,
    required _i3.ColorTypeEnum color,
    List<_i4.Look>? look,
  }) : super._(
          id: id,
          image: image,
          color: color,
          look: look,
        );

  /// Returns a shallow copy of this [Shoes]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Shoes copyWith({
    Object? id = _Undefined,
    _i2.ByteData? image,
    _i3.ColorTypeEnum? color,
    Object? look = _Undefined,
  }) {
    return Shoes(
      id: id is int? ? id : this.id,
      image: image ?? this.image.clone(),
      color: color ?? this.color,
      look: look is List<_i4.Look>?
          ? look
          : this.look?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
