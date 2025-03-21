import 'dart:vmservice_io';

import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class FriendshipRequestEndpoint extends Endpoint {
  // Endpoint implementation goes here

 
Future<void> createFriendshipRequest(Session session, String message, User friendsof, User friendsby) async {
FriendShipRequest friends = FriendShipRequest(
  friendbyId: friendsby.id??0,
  friendId: friendsof.id??0,
  friendby: friendsby,
  friend: friendsof,
  createdAt: DateTime.now(),
  message: message,
  updatedAt: DateTime.now(),
  status: StatusEnum.PENDING





);
  await FriendShipRequest.db.insertRow(session, friends);
}

Future<void> AcceptFriendship(Session session,FriendShipRequest myfriendship) async {
  var acceptFriendship = await FriendShipRequest.db.findById(session, myfriendship.id??0); 
acceptFriendship!.status = StatusEnum.ACCEPTED;
acceptFriendship.updatedAt = DateTime.now();
await FriendShipRequest.db.updateRow(session, acceptFriendship);


  
  
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
