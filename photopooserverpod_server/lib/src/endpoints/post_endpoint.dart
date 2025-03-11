import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class PostsEndpoint extends Endpoint {
  // Endpoint implementation goes here

 

Future<void> createPost(Session session, Post post) async {
  await Post.db.insertRow(session, post);
}

Future<void> deletePost(Session session, Post post) async {
  await Post.db.deleteRow(session, post);
}

Future<List<Post>> getAllPosts(Session session) async {
  // By ordering by the id column, we always get the notes in the same order
  // and not in the order they were updated.
  return await Post.db.find(
    session,
    orderBy: (t) => t.id,
  );
}

Future<List<Post>> getPostsByUser(Session session, int userId) async {
  return await Post.db.find(
    session,
    where: (t) => t.userId.equals(userId),
    orderBy: (t) => t.id,
  );
}

}