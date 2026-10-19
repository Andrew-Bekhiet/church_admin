import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ApiEndpoints', () {
    test('derives every endpoint from an http origin', () {
      const unit = ApiEndpoints('http://localhost:4100');

      expect(unit.graphql, Uri.parse('http://localhost:4100/gql'));
      expect(unit.healthCheck, Uri.parse('http://localhost:4100/healthz'));
      expect(
        unit.changeFeedSocket,
        Uri.parse('ws://localhost:4100/socket/websocket'),
      );
    });

    test('uses a secure socket for an https origin', () {
      const unit = ApiEndpoints('https://api.example.com/');

      expect(unit.graphql, Uri.parse('https://api.example.com/gql'));
      expect(
        unit.changeFeedSocket,
        Uri.parse('wss://api.example.com/socket/websocket'),
      );
    });
  });
}
