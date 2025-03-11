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
import '../endpoints/post_endpoint.dart' as _i4;
import '../endpoints/rooms_enpoint.dart' as _i5;
import '../endpoints/users_endpoint.dart' as _i6;
import 'package:photopooserverpod_server/src/generated/user.dart' as _i7;
import 'package:photopooserverpod_server/src/generated/post.dart' as _i8;
import 'package:photopooserverpod_server/src/generated/room.dart' as _i9;

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
      'posts': _i4.PostsEndpoint()
        ..initialize(
          server,
          'posts',
          null,
        ),
      'rooms': _i5.RoomsEndpoint()
        ..initialize(
          server,
          'rooms',
          null,
        ),
      'users': _i6.UsersEndpoint()
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
              type: _i1.getType<_i7.User>(),
              nullable: false,
            ),
            'friendsby': _i1.ParameterDescription(
              name: 'friendsby',
              type: _i1.getType<_i7.User>(),
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
              type: _i1.getType<_i7.User>(),
              nullable: false,
            ),
            'friendsby': _i1.ParameterDescription(
              name: 'friendsby',
              type: _i1.getType<_i7.User>(),
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
              type: _i1.getType<_i8.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i4.PostsEndpoint).createPost(
            session,
            params['post'],
          ),
        ),
        'deletePost': _i1.MethodConnector(
          name: 'deletePost',
          params: {
            'post': _i1.ParameterDescription(
              name: 'post',
              type: _i1.getType<_i8.Post>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['posts'] as _i4.PostsEndpoint).deletePost(
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
              (endpoints['posts'] as _i4.PostsEndpoint).getAllPosts(session),
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
              (endpoints['posts'] as _i4.PostsEndpoint).getPostsByUser(
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
              (endpoints['rooms'] as _i5.RoomsEndpoint).example(session),
        ),
        'createRooms': _i1.MethodConnector(
          name: 'createRooms',
          params: {
            'room': _i1.ParameterDescription(
              name: 'room',
              type: _i1.getType<_i9.Room>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rooms'] as _i5.RoomsEndpoint).createRooms(
            session,
            params['room'],
          ),
        ),
        'deleteRoom': _i1.MethodConnector(
          name: 'deleteRoom',
          params: {
            'room': _i1.ParameterDescription(
              name: 'room',
              type: _i1.getType<_i9.Room>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['rooms'] as _i5.RoomsEndpoint).deleteRoom(
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
              (endpoints['rooms'] as _i5.RoomsEndpoint).getAllRooms(session),
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
              (endpoints['users'] as _i6.UsersEndpoint).example(session),
        ),
        'createUser': _i1.MethodConnector(
          name: 'createUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i7.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i6.UsersEndpoint).createUser(
            session,
            params['user'],
          ),
        ),
        'deleteUser': _i1.MethodConnector(
          name: 'deleteUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i7.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i6.UsersEndpoint).deleteUser(
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
              (endpoints['users'] as _i6.UsersEndpoint).getAllUsers(session),
        ),
        'getFriendsbyUser': _i1.MethodConnector(
          name: 'getFriendsbyUser',
          params: {
            'user': _i1.ParameterDescription(
              name: 'user',
              type: _i1.getType<_i7.User>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['users'] as _i6.UsersEndpoint).getFriendsbyUser(
            session,
            params['user'],
          ),
        ),
      },
    );
  }
}
