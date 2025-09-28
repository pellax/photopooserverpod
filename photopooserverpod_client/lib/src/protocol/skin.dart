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
import 'skinColorType_enum.dart' as _i2;
import 'look.dart' as _i3;

abstract class Skin implements _i1.SerializableModel {
  Skin._({
    this.id,
    required this.color,
    this.look,
  });

  factory Skin({
    int? id,
    required _i2.SkinColorTypeEnum color,
    List<_i3.Look>? look,
  }) = _SkinImpl;

  factory Skin.fromJson(Map<String, dynamic> jsonSerialization) {
    return Skin(
      id: jsonSerialization['id'] as int?,
      color: _i2.SkinColorTypeEnum.fromJson(
          (jsonSerialization['color'] as String)),
      look: (jsonSerialization['look'] as List?)
          ?.map((e) => _i3.Look.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.SkinColorTypeEnum color;

  List<_i3.Look>? look;

  /// Returns a shallow copy of this [Skin]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Skin copyWith({
    int? id,
    _i2.SkinColorTypeEnum? color,
    List<_i3.Look>? look,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
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

class _SkinImpl extends Skin {
  _SkinImpl({
    int? id,
    required _i2.SkinColorTypeEnum color,
    List<_i3.Look>? look,
  }) : super._(
          id: id,
          color: color,
          look: look,
        );

  /// Returns a shallow copy of this [Skin]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Skin copyWith({
    Object? id = _Undefined,
    _i2.SkinColorTypeEnum? color,
    Object? look = _Undefined,
  }) {
    return Skin(
      id: id is int? ? id : this.id,
      color: color ?? this.color,
      look: look is List<_i3.Look>?
          ? look
          : this.look?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
