import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class RoomsEndpoint extends Endpoint {
  // Endpoint implementation goes here

  Future<void> example(Session session) async {
  // Endpoint implementation goes here
}

Future<void> createRooms(Session session, Room room) async {
  await Room.db.insertRow(session, room);
}

Future<void> deleteRoom(Session session, Room room) async {
  await Room.db.deleteRow(session, room);
}

Future<List<Room>> getAllRooms(Session session) async {
  // By ordering by the id column, we always get the notes in the same order
  // and not in the order they were updated.
  return await Room.db.find(
    session,
    orderBy: (t) => t.id,
  );
}
}
