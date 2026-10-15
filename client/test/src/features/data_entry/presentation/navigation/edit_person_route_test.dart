import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

// GoRouterState overrides == and cannot be built without a RouteConfiguration; the route's build ignores it.
// ignore: avoid_implementing_value_types
class _MockGoRouterState extends Mock implements GoRouterState {}

void main() {
  group('EditPersonRoute', () {
    const service = Service(id: 'service', name: 'service');
    const family = Family(id: 'family', name: 'family');

    Future<EditPerson> buildScreen(
      WidgetTester tester,
      PersonEditIntent? intent,
    ) async {
      late Widget screen;
      await tester.pumpWidget(
        Builder(
          builder: (context) {
            screen = EditPersonRoute(
              $extra: intent,
            ).build(context, _MockGoRouterState());

            return const SizedBox.shrink();
          },
        ),
      );

      return screen as EditPerson;
    }

    testWidgets(
      'a new person without a starting point gets an address to hold a family phone',
      (tester) async {
        final screen = await buildScreen(tester, null);

        expect(screen.withAddress, isNotNull);
      },
    );

    testWidgets(
      'a new person in a service gets an address to hold a family phone',
      (tester) async {
        final screen = await buildScreen(
          tester,
          const CreatePersonInService(service: service),
        );

        expect(screen.withAddress, isNotNull);
      },
    );

    testWidgets(
      'a new person in a family gets an address to hold a family phone',
      (tester) async {
        final screen = await buildScreen(
          tester,
          const CreatePersonInFamily(family: family),
        );

        expect(screen.withAddress, isNotNull);
      },
    );

    testWidgets('editing a person gets no starting address', (tester) async {
      final screen = await buildScreen(
        tester,
        UpdatePerson(
          person: Person(id: 'person', name: 'person'),
        ),
      );

      expect(screen.withAddress, isNull);
    });
  });
}
