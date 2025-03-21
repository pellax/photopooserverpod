import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class FriendsEndpoint extends Endpoint {
  // Endpoint implementation goes here

 
Future<void> createFriendship(Session session, User friendsof, User friendsby) async {
Friends friends = Friends(
  friendsById: friendsby.id??0,
  friendsId: friendsof.id??0,
  friendsBy: friendsby,
  friends: friendsof,


);
  await Friends.db.insertRow(session, friends);
}

Future<void> deleteFriendship(Session session, User friendof,User friendsby) async {
  await Friends.db.find(
    session,
    where: (t) => t.friendsId.equals(friendof.id??0) & t.friendsById.equals(friendsby.id??0),
  ).then((value)=> Friends.db.delete(session, value));
  

  
  
}

Future<List<Friends>> getAllFriendships(Session session) async {
  // By ordering by the id column, we always get the notes in the same order
  // and not in the order they were updated.
  return await Friends.db.find(
    session,
    orderBy: (t) => t.id,
  );
}
Map<String, dynamic> toJson() {
return {
    name: 'John Doe',
};
}
}
