/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/friends_enpoint.dart' as _i3;
import '../endpoints/friendship_request_endpoint.dart' as _i4;
import '../endpoints/post_endpoint.dart' as _i5;
import '../endpoints/rooms_enpoint.dart' as _i6;
import '../endpoints/users_endpoint.dart' as _i7;
import 'package:photopooserverpod_server/src/generated/user.dart' as _i8;
import 'package:photopooserverpod_server/src/generated/friendship_request.dart'
    as _i9;
import 'package:photopooserverpod_server/src/generated/post.dart' as _i10;
import 'package:photopooserverpod_server/src/generated/room.dart' as _i11;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i12;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'friends': _i3.FriendsEndpoint()
        ..initialize(
          server,
          'friends',
          null,
        ),
      'friendshipRequest': _i4.FriendshipRequestEndpoint()
        ..initialize(
          server,
          'friendshipRequest',
          null,
        ),
      'posts': _i5.PostsEndpoint()
        ..initialize(
          server,
          'posts',
          null,
        ),
      'rooms': _i6.RoomsEndpoint()
        ..initialize(
          server,
          'rooms',
          null,
        ),
      'users': _i7.UsersEndpoint()
        ..initialize(
          server,
          'users',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['friends'] = _i1.EndpointConnector(
      name: 'friends',
      endpoint: endpoints['friends']!,
      methodConnectors: {
        'createFriendship': _i1.MethodConnector(
          name: 'createFriendship',
          params: {
            'friendsof': _i1.ParameterDescription(
              name: 'friendsof',
              type: _i1.getType<_i8.User>(),
              nullable: false,
            ),
            'friendsby': _i1.ParameterDescription(
              name: 'friendsby',
              type: _i1.getType<_i8.User>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['friends'] as _i3.FriendsEndpoint).createFriendship(
            session,
            params['friendsof'],
            params['friendsby'],
          ),
        ),
        'deleteFriendship': _i1.MethodConnector(
          name: 'deleteFriendship',
          params: {
            'friendof': _i1.ParameterDescription(
              name: 'friendof',
              type: _i1.getType<_i8.User>(),
              nullable: false,
            ),
            'friendsby': _i1.ParameterDescription(
              name: 'friendsby',
              type: _i1.getType<_i8.User>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['friends'] as _i3.FriendsEndpoint).deleteFriendship(
            session,
            params['friendof'],
            params['friendsby'],
          ),
        ),
        'getAllFriendships': _i1.MethodConnector(
          name: 'getAllFriendships',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['friends'] as _i3.FriendsEndpoint)
                  .getAllFriendships(session),
        ),
        'getFriendship': _i1.MethodConnector(
          name: 'getFriendship',
          params: {
            'friendof': _i1.ParameterDescription(
              name: 'friendof',
              type: _i1.getType<_i8.User>(),
              nullable: false,
            ),
            'friendby': _i1.ParameterDescription(
              name: 'friendby',
              type: _i1.getType<_i8.User>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['friends'] as _i3.FriendsEndpoint).getFriendship(
            session,
            params['friendof'],
            params['friendby'],
          ),
        ),
      },
    );
    connectors['friendshipRequest'] = _i1.EndpointConnector(
      name: 'friendshipRequest',
      endpoint: endpoints['friendshipRequest']!,
      methodConnectors: {
        'createFriendshipRequest': _i1.MethodConnector(
          name: 'createFriendshipRequest',
          params: {
            'message': _i1.ParameterDescription(
              name: 'message',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'friendsof': _i1.ParameterDescription(
              name: 'friendsof',
              type: _i1.getType<_i8.User>(),
              nullable: false,
            ),
            'friendsby': _i1.ParameterDescription(
              name: 'friendsby',
              type: _i1.getType<_i8.User>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['friendshipRequest'] as _i4.FriendshipRequestEndpoint)
                  .createFriendshipRequest(
            session,
            params['message'],
            params['friendsof'],
            params['friendsby'],
          ),
        ),
        'AcceptFriendship': _i1.MethodConnector(
          name: 'AcceptFriendship',
          params: {
            'myfriendship': _i1.ParameterDescription(
              name: 'myfriendship',
              type: _i1.getType<_i9.FriendShipRequest>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['friendshipRequest'] as _i4.FriendshipRequestEndpoint)
                  .AcceptFriendship(
            session,
            params['myfriendship'],
          ),
        ),
        'DenyFriendship': _i1.MethodConnector(
          name: 'DenyFriendship',
          params: {
            'myfriendship': _i1.ParameterDescription(
              name: 'myfriendship',
              type: _i1.getType<_i9.FriendShipRequest>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['friendshipRequest'] as _i4.FriendshipRequestEndpoint)
                  .DenyFriendship(
            session,
            params['myfriendship'],
          ),
        ),
        'deleteFriendshipRequest': _i1.MethodConnector(
          name: 'deleteFriendshipRequest',
          params: {
            'friends': _i1.ParameterDescription(
              name: 'friends',
              type: _i1.getType<_i9.FriendShipRequest>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['friendshipRequest'] as _i4.FriendshipRequestEndpoint)
                  .deleteFriendshipRequest(
            session,
            params['friends'],
          ),
        ),
        'getAllFriendships': _i1.MethodConnector(
          name: 'getAllFriendships',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['friendshipRequest'] as _i4.FriendshipRequestEndpoint)
                  .getAllFriendships(session),
        ),
      },
    );
    connectors['posts'] = _i1.EndpointConnector(
      name: 'posts',
      endpoint: endpoints['posts']!,
      methodConnectors: {
        'createPost': _i1.MethodConnector(
          name: 'createPost',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i10.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i5.PostsEndpoint).createPost(
            session,
            params['post'],
          ),
        ),
        'deletePost': _i1.MethodConnector(
          name: 'deletePost',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i10.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i5.PostsEndpoint).deletePost(
            session,
            params['post'],
          ),
        ),
        'getAllPosts': _i1.MethodConnector(
          name: 'getAllPosts',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i5.PostsEndpoint).getAllPosts(session),
        ),
        'getPostsByUser': _i1.MethodConnector(
          name: 'getPostsByUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i5.PostsEndpoint).getPostsByUser(
            session,
            params['userId'],
          ),
        ),
      },
    );
    connectors['rooms'] = _i1.EndpointConnector(
      name: 'rooms',
      endpoint: endpoints['rooms']!,
      methodConnectors: {
        'example': _i1.MethodConnector(
          name: 'example',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rooms'] as _i6.RoomsEndpoint).example(session),
        ),
        'createRooms': _i1.MethodConnector(
          name: 'createRooms',
          params: {
            'room': _i1.ParameterDescription(
              name: 'room',
              type: _i1.getType<_i11.Room>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rooms'] as _i6.RoomsEndpoint).createRooms(
            session,
            params['room'],
          ),
        ),
        'deleteRoom': _i1.MethodConnector(
          name: 'deleteRoom',
          params: {
            'room': _i1.ParameterDescription(
              name: 'room',
              type: _i1.getType<_i11.Room>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rooms'] as _i6.RoomsEndpoint).deleteRoom(
            session,
            params['room'],
          ),
        ),
        'getAllRooms': _i1.MethodConnector(
          name: 'getAllRooms',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rooms'] as _i6.RoomsEndpoint).getAllRooms(session),
        ),
      },
    );
    connectors['users'] = _i1.EndpointConnector(
      name: 'users',
      endpoint: endpoints['users']!,
      methodConnectors: {
        'example': _i1.MethodConnector(
          name: 'example',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i7.UsersEndpoint).example(session),
        ),
        'createUser': _i1.MethodConnector(
          name: 'createUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i8.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i7.UsersEndpoint).createUser(
            session,
            params['user'],
          ),
        ),
        'deleteUser': _i1.MethodConnector(
          name: 'deleteUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i8.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i7.UsersEndpoint).deleteUser(
            session,
            params['user'],
          ),
        ),
        'getAllUsers': _i1.MethodConnector(
          name: 'getAllUsers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i7.UsersEndpoint).getAllUsers(session),
        ),
        'getFriendsbyUser': _i1.MethodConnector(
          name: 'getFriendsbyUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i8.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i7.UsersEndpoint).getFriendsbyUser(
            session,
            params['user'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i12.Endpoints()..initializeEndpoints(server);
  }
}
