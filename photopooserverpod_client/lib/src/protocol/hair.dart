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
import 'typeColor_enum.dart' as _i2;
import 'lengthType_enum.dart' as _i3;
import 'typestyle_enum.dart' as _i4;
import 'dart:typed_data' as _i5;
import 'look.dart' as _i6;

abstract class Hair implements _i1.SerializableModel {
  Hair._({
    this.id,
    required this.color,
    required this.length,
    required this.style,
    required this.image,
    this.look,
  });

  factory Hair({
    int? id,
    required _i2.ColorTypeEnum color,
    required _i3.TypeLengthEnum length,
    required _i4.TypeStyleEnum style,
    required _i5.ByteData image,
    List<_i6.Look>? look,
  }) = _HairImpl;

  factory Hair.fromJson(Map<String, dynamic> jsonSerialization) {
    return Hair(
      id: jsonSerialization['id'] as int?,
      color: _i2.ColorTypeEnum.fromJson((jsonSerialization['color'] as String)),
      length:
          _i3.TypeLengthEnum.fromJson((jsonSerialization['length'] as String)),
      style: _i4.TypeStyleEnum.fromJson((jsonSerialization['style'] as String)),
      image: _i1.ByteDataJsonExtension.fromJson(jsonSerialization['image']),
      look: (jsonSerialization['look'] as List?)
          ?.map((e) => _i6.Look.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.ColorTypeEnum color;

  _i3.TypeLengthEnum length;

  _i4.TypeStyleEnum style;

  _i5.ByteData image;

  List<_i6.Look>? look;

  /// Returns a shallow copy of this [Hair]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Hair copyWith({
    int? id,
    _i2.ColorTypeEnum? color,
    _i3.TypeLengthEnum? length,
    _i4.TypeStyleEnum? style,
    _i5.ByteData? image,
    List<_i6.Look>? look,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'color': color.toJson(),
      'length': length.toJson(),
      'style': style.toJson(),
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

class _HairImpl extends Hair {
  _HairImpl({
    int? id,
    required _i2.ColorTypeEnum color,
    required _i3.TypeLengthEnum length,
    required _i4.TypeStyleEnum style,
    required _i5.ByteData image,
    List<_i6.Look>? look,
  }) : super._(
          id: id,
          color: color,
          length: length,
          style: style,
          image: image,
          look: look,
        );

  /// Returns a shallow copy of this [Hair]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Hair copyWith({
    Object? id = _Undefined,
    _i2.ColorTypeEnum? color,
    _i3.TypeLengthEnum? length,
    _i4.TypeStyleEnum? style,
    _i5.ByteData? image,
    Object? look = _Undefined,
  }) {
    return Hair(
      id: id is int? ? id : this.id,
      color: color ?? this.color,
      length: length ?? this.length,
      style: style ?? this.style,
      image: image ?? this.image.clone(),
      look: look is List<_i6.Look>?
          ? look
          : this.look?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
