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

abstract class DirectMessage implements _i1.SerializableModel {
  DirectMessage._({
    this.id,
    required this.senderId,
    this.sender,
    required this.receiverId,
    this.receiver,
    required this.message,
    required this.time,
    required this.read,
  });

  factory DirectMessage({
    int? id,
    required int senderId,
    _i2.User? sender,
    required int receiverId,
    _i2.User? receiver,
    required String message,
    required DateTime time,
    required bool read,
  }) = _DirectMessageImpl;

  factory DirectMessage.fromJson(Map<String, dynamic> jsonSerialization) {
    return DirectMessage(
      id: jsonSerialization['id'] as int?,
      senderId: jsonSerialization['senderId'] as int,
      sender: jsonSerialization['sender'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['sender'] as Map<String, dynamic>)),
      receiverId: jsonSerialization['receiverId'] as int,
      receiver: jsonSerialization['receiver'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['receiver'] as Map<String, dynamic>)),
      message: jsonSerialization['message'] as String,
      time: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['time']),
      read: jsonSerialization['read'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int senderId;

  _i2.User? sender;

  int receiverId;

  _i2.User? receiver;

  String message;

  DateTime time;

  bool read;

  /// Returns a shallow copy of this [DirectMessage]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  DirectMessage copyWith({
    int? id,
    int? senderId,
    _i2.User? sender,
    int? receiverId,
    _i2.User? receiver,
    String? message,
    DateTime? time,
    bool? read,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'senderId': senderId,
      if (sender != null) 'sender': sender?.toJson(),
      'receiverId': receiverId,
      if (receiver != null) 'receiver': receiver?.toJson(),
      'message': message,
      'time': time.toJson(),
      'read': read,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DirectMessageImpl extends DirectMessage {
  _DirectMessageImpl({
    int? id,
    required int senderId,
    _i2.User? sender,
    required int receiverId,
    _i2.User? receiver,
    required String message,
    required DateTime time,
    required bool read,
  }) : super._(
          id: id,
          senderId: senderId,
          sender: sender,
          receiverId: receiverId,
          receiver: receiver,
          message: message,
          time: time,
          read: read,
        );

  /// Returns a shallow copy of this [DirectMessage]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  DirectMessage copyWith({
    Object? id = _Undefined,
    int? senderId,
    Object? sender = _Undefined,
    int? receiverId,
    Object? receiver = _Undefined,
    String? message,
    DateTime? time,
    bool? read,
  }) {
    return DirectMessage(
      id: id is int? ? id : this.id,
      senderId: senderId ?? this.senderId,
      sender: sender is _i2.User? ? sender : this.sender?.copyWith(),
      receiverId: receiverId ?? this.receiverId,
      receiver: receiver is _i2.User? ? receiver : this.receiver?.copyWith(),
      message: message ?? this.message,
      time: time ?? this.time,
      read: read ?? this.read,
    );
  }
}
