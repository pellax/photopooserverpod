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
import 'user.dart' as _i2;
import 'hair.dart' as _i3;
import 'dress.dart' as _i4;
import 'face.dart' as _i5;
import 'skin.dart' as _i6;
import 'genderType_enum.dart' as _i7;
import 'shoes.dart' as _i8;

abstract class Look implements _i1.SerializableModel {
  Look._({
    this.id,
    this.user,
    required this.hairId,
    this.hair,
    required this.dressId,
    this.dress,
    required this.faceId,
    this.face,
    required this.skinId,
    this.skin,
    required this.gender,
    required this.shoesId,
    this.shoes,
  });

  factory Look({
    int? id,
    List<_i2.User>? user,
    required int hairId,
    _i3.Hair? hair,
    required int dressId,
    _i4.Dress? dress,
    required int faceId,
    _i5.Face? face,
    required int skinId,
    _i6.Skin? skin,
    required _i7.GenderTypeEnum gender,
    required int shoesId,
    _i8.Shoes? shoes,
  }) = _LookImpl;

  factory Look.fromJson(Map<String, dynamic> jsonSerialization) {
    return Look(
      id: jsonSerialization['id'] as int?,
      user: (jsonSerialization['user'] as List?)
          ?.map((e) => _i2.User.fromJson((e as Map<String, dynamic>)))
          .toList(),
      hairId: jsonSerialization['hairId'] as int,
      hair: jsonSerialization['hair'] == null
          ? null
          : _i3.Hair.fromJson(
              (jsonSerialization['hair'] as Map<String, dynamic>)),
      dressId: jsonSerialization['dressId'] as int,
      dress: jsonSerialization['dress'] == null
          ? null
          : _i4.Dress.fromJson(
              (jsonSerialization['dress'] as Map<String, dynamic>)),
      faceId: jsonSerialization['faceId'] as int,
      face: jsonSerialization['face'] == null
          ? null
          : _i5.Face.fromJson(
              (jsonSerialization['face'] as Map<String, dynamic>)),
      skinId: jsonSerialization['skinId'] as int,
      skin: jsonSerialization['skin'] == null
          ? null
          : _i6.Skin.fromJson(
              (jsonSerialization['skin'] as Map<String, dynamic>)),
      gender:
          _i7.GenderTypeEnum.fromJson((jsonSerialization['gender'] as String)),
      shoesId: jsonSerialization['shoesId'] as int,
      shoes: jsonSerialization['shoes'] == null
          ? null
          : _i8.Shoes.fromJson(
              (jsonSerialization['shoes'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  List<_i2.User>? user;

  int hairId;

  _i3.Hair? hair;

  int dressId;

  _i4.Dress? dress;

  int faceId;

  _i5.Face? face;

  int skinId;

  _i6.Skin? skin;

  _i7.GenderTypeEnum gender;

  int shoesId;

  _i8.Shoes? shoes;

  /// Returns a shallow copy of this [Look]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Look copyWith({
    int? id,
    List<_i2.User>? user,
    int? hairId,
    _i3.Hair? hair,
    int? dressId,
    _i4.Dress? dress,
    int? faceId,
    _i5.Face? face,
    int? skinId,
    _i6.Skin? skin,
    _i7.GenderTypeEnum? gender,
    int? shoesId,
    _i8.Shoes? shoes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (user != null) 'user': user?.toJson(valueToJson: (v) => v.toJson()),
      'hairId': hairId,
      if (hair != null) 'hair': hair?.toJson(),
      'dressId': dressId,
      if (dress != null) 'dress': dress?.toJson(),
      'faceId': faceId,
      if (face != null) 'face': face?.toJson(),
      'skinId': skinId,
      if (skin != null) 'skin': skin?.toJson(),
      'gender': gender.toJson(),
      'shoesId': shoesId,
      if (shoes != null) 'shoes': shoes?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LookImpl extends Look {
  _LookImpl({
    int? id,
    List<_i2.User>? user,
    required int hairId,
    _i3.Hair? hair,
    required int dressId,
    _i4.Dress? dress,
    required int faceId,
    _i5.Face? face,
    required int skinId,
    _i6.Skin? skin,
    required _i7.GenderTypeEnum gender,
    required int shoesId,
    _i8.Shoes? shoes,
  }) : super._(
          id: id,
          user: user,
          hairId: hairId,
          hair: hair,
          dressId: dressId,
          dress: dress,
          faceId: faceId,
          face: face,
          skinId: skinId,
          skin: skin,
          gender: gender,
          shoesId: shoesId,
          shoes: shoes,
        );

  /// Returns a shallow copy of this [Look]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Look copyWith({
    Object? id = _Undefined,
    Object? user = _Undefined,
    int? hairId,
    Object? hair = _Undefined,
    int? dressId,
    Object? dress = _Undefined,
    int? faceId,
    Object? face = _Undefined,
    int? skinId,
    Object? skin = _Undefined,
    _i7.GenderTypeEnum? gender,
    int? shoesId,
    Object? shoes = _Undefined,
  }) {
    return Look(
      id: id is int? ? id : this.id,
      user: user is List<_i2.User>?
          ? user
          : this.user?.map((e0) => e0.copyWith()).toList(),
      hairId: hairId ?? this.hairId,
      hair: hair is _i3.Hair? ? hair : this.hair?.copyWith(),
      dressId: dressId ?? this.dressId,
      dress: dress is _i4.Dress? ? dress : this.dress?.copyWith(),
      faceId: faceId ?? this.faceId,
      face: face is _i5.Face? ? face : this.face?.copyWith(),
      skinId: skinId ?? this.skinId,
      skin: skin is _i6.Skin? ? skin : this.skin?.copyWith(),
      gender: gender ?? this.gender,
      shoesId: shoesId ?? this.shoesId,
      shoes: shoes is _i8.Shoes? ? shoes : this.shoes?.copyWith(),
    );
  }
}
