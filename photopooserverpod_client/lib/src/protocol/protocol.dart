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
import 'blocked.dart' as _i2;
import 'dietType_enum.dart' as _i3;
import 'direct_message.dart' as _i4;
import 'dress.dart' as _i5;
import 'example.dart' as _i6;
import 'face.dart' as _i7;
import 'friends.dart' as _i8;
import 'friendship_request.dart' as _i9;
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
import 'status_enum.dart' as _i22;
import 'typeColor_enum.dart' as _i23;
import 'typestyle_enum.dart' as _i24;
import 'user.dart' as _i25;
import 'package:photopooserverpod_client/src/protocol/friends.dart' as _i26;
import 'package:photopooserverpod_client/src/protocol/post.dart' as _i27;
import 'package:photopooserverpod_client/src/protocol/room.dart' as _i28;
import 'package:photopooserverpod_client/src/protocol/user.dart' as _i29;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i30;
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
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Blocked) {
      return _i2.Blocked.fromJson(data) as T;
    }
    if (t == _i3.DietTypeEnum) {
      return _i3.DietTypeEnum.fromJson(data) as T;
    }
    if (t == _i4.DirectMessage) {
      return _i4.DirectMessage.fromJson(data) as T;
    }
    if (t == _i5.Dress) {
      return _i5.Dress.fromJson(data) as T;
    }
    if (t == _i6.Example) {
      return _i6.Example.fromJson(data) as T;
    }
    if (t == _i7.Face) {
      return _i7.Face.fromJson(data) as T;
    }
    if (t == _i8.Friends) {
      return _i8.Friends.fromJson(data) as T;
    }
    if (t == _i9.FriendShipRequest) {
      return _i9.FriendShipRequest.fromJson(data) as T;
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
    if (t == _i22.StatusEnum) {
      return _i22.StatusEnum.fromJson(data) as T;
    }
    if (t == _i23.ColorTypeEnum) {
      return _i23.ColorTypeEnum.fromJson(data) as T;
    }
    if (t == _i24.TypeStyleEnum) {
      return _i24.TypeStyleEnum.fromJson(data) as T;
    }
    if (t == _i25.User) {
      return _i25.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Blocked?>()) {
      return (data != null ? _i2.Blocked.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.DietTypeEnum?>()) {
      return (data != null ? _i3.DietTypeEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.DirectMessage?>()) {
      return (data != null ? _i4.DirectMessage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Dress?>()) {
      return (data != null ? _i5.Dress.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Example?>()) {
      return (data != null ? _i6.Example.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Face?>()) {
      return (data != null ? _i7.Face.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Friends?>()) {
      return (data != null ? _i8.Friends.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.FriendShipRequest?>()) {
      return (data != null ? _i9.FriendShipRequest.fromJson(data) : null) as T;
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
    if (t == _i1.getType<_i22.StatusEnum?>()) {
      return (data != null ? _i22.StatusEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i23.ColorTypeEnum?>()) {
      return (data != null ? _i23.ColorTypeEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.TypeStyleEnum?>()) {
      return (data != null ? _i24.TypeStyleEnum.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i25.User?>()) {
      return (data != null ? _i25.User.fromJson(data) : null) as T;
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
    if (t == _i1.getType<List<_i25.User>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i25.User>(e)).toList()
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
    if (t == _i1.getType<List<_i15.Post>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i15.Post>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i8.Friends>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.Friends>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i8.Friends>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.Friends>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i2.Blocked>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i2.Blocked>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i2.Blocked>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i2.Blocked>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i14.Message>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i14.Message>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i9.FriendShipRequest>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i9.FriendShipRequest>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i9.FriendShipRequest>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i9.FriendShipRequest>(e))
              .toList()
          : null) as T;
    }
    if (t == List<_i26.Friends>) {
      return (data as List).map((e) => deserialize<_i26.Friends>(e)).toList()
          as T;
    }
    if (t == List<_i27.Post>) {
      return (data as List).map((e) => deserialize<_i27.Post>(e)).toList() as T;
    }
    if (t == List<_i28.Room>) {
      return (data as List).map((e) => deserialize<_i28.Room>(e)).toList() as T;
    }
    if (t == List<_i29.User>) {
      return (data as List).map((e) => deserialize<_i29.User>(e)).toList() as T;
    }
    try {
      return _i30.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Blocked) {
      return 'Blocked';
    }
    if (data is _i3.DietTypeEnum) {
      return 'DietTypeEnum';
    }
    if (data is _i4.DirectMessage) {
      return 'DirectMessage';
    }
    if (data is _i5.Dress) {
      return 'Dress';
    }
    if (data is _i6.Example) {
      return 'Example';
    }
    if (data is _i7.Face) {
      return 'Face';
    }
    if (data is _i8.Friends) {
      return 'Friends';
    }
    if (data is _i9.FriendShipRequest) {
      return 'FriendShipRequest';
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
    if (data is _i22.StatusEnum) {
      return 'StatusEnum';
    }
    if (data is _i23.ColorTypeEnum) {
      return 'ColorTypeEnum';
    }
    if (data is _i24.TypeStyleEnum) {
      return 'TypeStyleEnum';
    }
    if (data is _i25.User) {
      return 'User';
    }
    className = _i30.Protocol().getClassNameForObject(data);
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
      return deserialize<_i2.Blocked>(data['data']);
    }
    if (dataClassName == 'DietTypeEnum') {
      return deserialize<_i3.DietTypeEnum>(data['data']);
    }
    if (dataClassName == 'DirectMessage') {
      return deserialize<_i4.DirectMessage>(data['data']);
    }
    if (dataClassName == 'Dress') {
      return deserialize<_i5.Dress>(data['data']);
    }
    if (dataClassName == 'Example') {
      return deserialize<_i6.Example>(data['data']);
    }
    if (dataClassName == 'Face') {
      return deserialize<_i7.Face>(data['data']);
    }
    if (dataClassName == 'Friends') {
      return deserialize<_i8.Friends>(data['data']);
    }
    if (dataClassName == 'FriendShipRequest') {
      return deserialize<_i9.FriendShipRequest>(data['data']);
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
    if (dataClassName == 'StatusEnum') {
      return deserialize<_i22.StatusEnum>(data['data']);
    }
    if (dataClassName == 'ColorTypeEnum') {
      return deserialize<_i23.ColorTypeEnum>(data['data']);
    }
    if (dataClassName == 'TypeStyleEnum') {
      return deserialize<_i24.TypeStyleEnum>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i25.User>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i30.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
