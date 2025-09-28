import 'package:serverpod/server.dart';
import '../generated/protocol.dart';

class SetupEndpoint extends Endpoint {
  Future<String> ping(Session session) async {
    return 'Setup endpoint is working!';
  }

  // TODO: Fix enum and model issues before implementing
  // Future<String> initializeDefaultData(Session session) async {
  //   ...
  // }
}