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

Future<void> deleteUser(Session session, User user) async {
  await User.db.deleteRow(session, user);
}

Future<List<User>> getAllUsers(Session session) async {
  // By ordering by the id column, we always get the notes in the same order
  // and not in the order they were updated.
  return await User.db.find(
    session,
    orderBy: (t) => t.id,
  );
}
Future<List<Friends>> getFriendsbyUser(Session session, User user)async{
  return await Friends.db.find(
    session,
    where: (t) => t.friendsId.equals(user.id),
    orderBy: (t) => t.id,
  );
}

Map<String, dynamic> toJson() {
return {
    name: 'John Doe',
};
}

}
