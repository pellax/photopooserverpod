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
import 'dart:async' as _i2;
import 'package:photopooserverpod_client/src/protocol/user.dart' as _i3;
import 'package:photopooserverpod_client/src/protocol/friends.dart' as _i4;
import 'package:photopooserverpod_client/src/protocol/friendship_request.dart'
    as _i5;
import 'package:photopooserverpod_client/src/protocol/post.dart' as _i6;
import 'package:photopooserverpod_client/src/protocol/room.dart' as _i7;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i8;
import 'protocol.dart' as _i9;

/// {@category Endpoint}
class EndpointAuth extends _i1.EndpointRef {
  EndpointAuth(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'auth';

  _i2.Future<Map<String, dynamic>?> login(
    String username,
    String password,
  ) =>
      caller.callServerEndpoint<Map<String, dynamic>?>(
        'auth',
        'login',
        {
          'username': username,
          'password': password,
        },
      );

  _i2.Future<Map<String, dynamic>?> register(
    String username,
    String password,
    String email,
    int age,
    String diet,
  ) =>
      caller.callServerEndpoint<Map<String, dynamic>?>(
        'auth',
        'register',
        {
          'username': username,
          'password': password,
          'email': email,
          'age': age,
          'diet': diet,
        },
      );

  _i2.Future<Map<String, dynamic>?> validateToken(String token) =>
      caller.callServerEndpoint<Map<String, dynamic>?>(
        'auth',
        'validateToken',
        {'token': token},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointFriends extends _i1.EndpointRef {
  EndpointFriends(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'friends';

  _i2.Future<void> createFriendship(
    _i3.User friendsof,
    _i3.User friendsby,
  ) =>
      caller.callServerEndpoint<void>(
        'friends',
        'createFriendship',
        {
          'friendsof': friendsof,
          'friendsby': friendsby,
        },
      );

  _i2.Future<void> deleteFriendship(
    _i3.User friendof,
    _i3.User friendsby,
  ) =>
      caller.callServerEndpoint<void>(
        'friends',
        'deleteFriendship',
        {
          'friendof': friendof,
          'friendsby': friendsby,
        },
      );

  _i2.Future<List<_i4.Friends>> getAllFriendships() =>
      caller.callServerEndpoint<List<_i4.Friends>>(
        'friends',
        'getAllFriendships',
        {},
      );

  _i2.Future<List<_i4.Friends>> getFriendship(
    _i3.User friendof,
    _i3.User friendby,
  ) =>
      caller.callServerEndpoint<List<_i4.Friends>>(
        'friends',
        'getFriendship',
        {
          'friendof': friendof,
          'friendby': friendby,
        },
      );
}

/// {@category Endpoint}
class EndpointFriendshipRequest extends _i1.EndpointRef {
  EndpointFriendshipRequest(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'friendshipRequest';

  _i2.Future<void> createFriendshipRequest(
    String message,
    _i3.User friendsof,
    _i3.User friendsby,
  ) =>
      caller.callServerEndpoint<void>(
        'friendshipRequest',
        'createFriendshipRequest',
        {
          'message': message,
          'friendsof': friendsof,
          'friendsby': friendsby,
        },
      );

  _i2.Future<void> AcceptFriendship(_i5.FriendShipRequest myfriendship) =>
      caller.callServerEndpoint<void>(
        'friendshipRequest',
        'AcceptFriendship',
        {'myfriendship': myfriendship},
      );

  _i2.Future<void> DenyFriendship(_i5.FriendShipRequest myfriendship) =>
      caller.callServerEndpoint<void>(
        'friendshipRequest',
        'DenyFriendship',
        {'myfriendship': myfriendship},
      );

  _i2.Future<void> deleteFriendshipRequest(_i5.FriendShipRequest friends) =>
      caller.callServerEndpoint<void>(
        'friendshipRequest',
        'deleteFriendshipRequest',
        {'friends': friends},
      );

  _i2.Future<List<_i4.Friends>> getAllFriendships() =>
      caller.callServerEndpoint<List<_i4.Friends>>(
        'friendshipRequest',
        'getAllFriendships',
        {},
      );
}

/// {@category Endpoint}
class EndpointPosts extends _i1.EndpointRef {
  EndpointPosts(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'posts';

  _i2.Future<void> createPost(_i6.Post post) => caller.callServerEndpoint<void>(
        'posts',
        'createPost',
        {'post': post},
      );

  _i2.Future<void> deletePost(_i6.Post post) => caller.callServerEndpoint<void>(
        'posts',
        'deletePost',
        {'post': post},
      );

  _i2.Future<List<_i6.Post>> getAllPosts() =>
      caller.callServerEndpoint<List<_i6.Post>>(
        'posts',
        'getAllPosts',
        {},
      );

  _i2.Future<List<_i6.Post>> getPostsByUser(int userId) =>
      caller.callServerEndpoint<List<_i6.Post>>(
        'posts',
        'getPostsByUser',
        {'userId': userId},
      );
}

/// {@category Endpoint}
class EndpointRooms extends _i1.EndpointRef {
  EndpointRooms(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'rooms';

  _i2.Future<void> example() => caller.callServerEndpoint<void>(
        'rooms',
        'example',
        {},
      );

  _i2.Future<void> createRooms(_i7.Room room) =>
      caller.callServerEndpoint<void>(
        'rooms',
        'createRooms',
        {'room': room},
      );

  _i2.Future<void> deleteRoom(_i7.Room room) => caller.callServerEndpoint<void>(
        'rooms',
        'deleteRoom',
        {'room': room},
      );

  _i2.Future<List<_i7.Room>> getAllRooms() =>
      caller.callServerEndpoint<List<_i7.Room>>(
        'rooms',
        'getAllRooms',
        {},
      );
}

/// {@category Endpoint}
class EndpointSetup extends _i1.EndpointRef {
  EndpointSetup(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'setup';

  _i2.Future<String> ping() => caller.callServerEndpoint<String>(
        'setup',
        'ping',
        {},
      );
}

/// {@category Endpoint}
class EndpointUsers extends _i1.EndpointRef {
  EndpointUsers(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'users';

  _i2.Future<void> example() => caller.callServerEndpoint<void>(
        'users',
        'example',
        {},
      );

  _i2.Future<void> createUser(_i3.User user) => caller.callServerEndpoint<void>(
        'users',
        'createUser',
        {'user': user},
      );

  _i2.Future<void> deleteUser(_i3.User user) => caller.callServerEndpoint<void>(
        'users',
        'deleteUser',
        {'user': user},
      );

  _i2.Future<List<_i3.User>> getAllUsers() =>
      caller.callServerEndpoint<List<_i3.User>>(
        'users',
        'getAllUsers',
        {},
      );

  _i2.Future<List<_i4.Friends>> getFriendsbyUser(_i3.User user) =>
      caller.callServerEndpoint<List<_i4.Friends>>(
        'users',
        'getFriendsbyUser',
        {'user': user},
      );
}

class Modules {
  Modules(Client client) {
    auth = _i8.Caller(client);
  }

  late final _i8.Caller auth;
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i9.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    auth = EndpointAuth(this);
    example = EndpointExample(this);
    friends = EndpointFriends(this);
    friendshipRequest = EndpointFriendshipRequest(this);
    posts = EndpointPosts(this);
    rooms = EndpointRooms(this);
    setup = EndpointSetup(this);
    users = EndpointUsers(this);
    modules = Modules(this);
  }

  late final EndpointAuth auth;

  late final EndpointExample example;

  late final EndpointFriends friends;

  late final EndpointFriendshipRequest friendshipRequest;

  late final EndpointPosts posts;

  late final EndpointRooms rooms;

  late final EndpointSetup setup;

  late final EndpointUsers users;

  late final Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'auth': auth,
        'example': example,
        'friends': friends,
        'friendshipRequest': friendshipRequest,
        'posts': posts,
        'rooms': rooms,
        'setup': setup,
        'users': users,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
