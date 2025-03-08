import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class UsersEndpoint extends Endpoint {
  // Endpoint implementation goes here

  Future<void> example(Session session) async {
  // Endpoint implementation goes here
}

Future<void> createUser(Session session, User user) async {
  await User.db.insertRow(session, user);
}
}
