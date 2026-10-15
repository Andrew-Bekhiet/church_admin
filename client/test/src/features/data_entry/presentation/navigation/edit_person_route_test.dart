import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockBuildContext extends Mock implements BuildContext {}

class MockGoRouterState extends Mock implements GoRouterState {}

void main() {
  final person = Person(id: 'person-id', name: 'مينا');

  Widget build(EditPersonRoute route) =>
      route.build(MockBuildContext(), MockGoRouterState());

  testWidgets('opening the route without an intent edits a blank new person', (
    tester,
  ) async {
    final screen = build(const EditPersonRoute());

    expect(
      screen,
      isA<EditPersonScreen>().having(
        (screen) => screen.intent,
        'intent',
        isA<CreateBlankPerson>(),
      ),
    );
  });

  testWidgets('opening the route with an intent passes it to the screen', (
    tester,
  ) async {
    final intent = UpdatePerson(person: person);

    final screen = build(EditPersonRoute($extra: intent));

    expect(
      screen,
      isA<EditPersonScreen>().having(
        (screen) => screen.intent,
        'intent',
        same(intent),
      ),
    );
  });
}
