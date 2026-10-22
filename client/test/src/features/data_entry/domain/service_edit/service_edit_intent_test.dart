import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ServiceEditIntent roundTrip(ServiceEditIntent intent) =>
      ServiceEditIntent.fromJson(jsonDecode(jsonEncode(intent.toJson())));

  test('an update intent survives JSON with its service', () {
    const service = Service(id: 'service-1', name: 'ابتدائي');

    final restored = roundTrip(const UpdateService(service: service));

    expect((restored as UpdateService).service, service);
  });

  test('a blank create intent survives JSON', () {
    expect(roundTrip(const CreateBlankService()), isA<CreateBlankService>());
  });
}
