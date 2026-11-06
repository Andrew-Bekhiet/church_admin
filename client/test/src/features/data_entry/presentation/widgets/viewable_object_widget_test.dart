import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/mock_viewable_object_service.dart';
import '../../../../utils.dart';

void main() {
  group('ViewableObjectWidget data check', () {
    final editableFamily = Family(
      id: 'family',
      name: 'عائلة',
      userCanEdit: true,
      dataCheck: DataCheck(familyId: 'family', completenessPercent: 50),
    );
    final readOnlyFamily = Family(
      id: 'family',
      name: 'عائلة',
      dataCheck: DataCheck(familyId: 'family', completenessPercent: 50),
    );

    late _MockAuthBloc authBloc;
    late MockViewableObjectService viewableObjects;

    setUp(() {
      authBloc = _MockAuthBloc();
      viewableObjects = MockViewableObjectService();
      for (final family in [editableFamily, readOnlyFamily]) {
        when(
          () => viewableObjects.getFormattedValue(family, any()),
        ).thenReturn(null);
      }
      final database = _MockDatabaseService();
      when(() => database.dataChecks).thenReturn(_MockDataChecksDAO());
      initGlobalProviderContainer([
        authBlocProvider.overrideWithValue(authBloc),
        databaseServiceProvider.overrideWithValue(database),
      ]);
    });
    tearDown(defaultTearDown);

    Future<void> openReportFor(WidgetTester tester, Family family) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ViewableObjectWidget(
              family,
              photo: const SizedBox(),
              viewableObjectService: viewableObjects,
            ),
          ),
        ),
      );
      await tester.tap(find.byType(DataCheckIndicator));
      await tester.pumpAndSettle();
    }

    testWidgets(
      'a user holding the data checks permission can override an editable family',
      (tester) async {
        when(() => authBloc.currentUserData).thenReturn(
          const User(
            uid: 'uid',
            name: 'servant',
            permissions: PermissionsSet.fromSet({
              UserPermission.approved,
              UserPermission.changeDataChecks,
            }),
          ),
        );

        await openReportFor(tester, editableFamily);

        expect(find.byType(SegmentedButton<DataCheckOverride>), findsOneWidget);
      },
    );

    testWidgets(
      'a user holding the data checks permission cannot override a family they cannot edit',
      (tester) async {
        when(() => authBloc.currentUserData).thenReturn(
          const User(
            uid: 'uid',
            name: 'servant',
            permissions: PermissionsSet.fromSet({
              UserPermission.approved,
              UserPermission.changeDataChecks,
            }),
          ),
        );

        await openReportFor(tester, readOnlyFamily);

        expect(find.byKey(DataCheckReportDialogKeys.dialog), findsOneWidget);
        expect(find.byType(SegmentedButton<DataCheckOverride>), findsNothing);
      },
    );

    testWidgets(
      'a user without the data checks permission cannot override an editable family',
      (tester) async {
        when(() => authBloc.currentUserData).thenReturn(
          const User(
            uid: 'uid',
            name: 'servant',
            permissions: PermissionsSet.fromSet({
              UserPermission.approved,
              UserPermission.readAllData,
              UserPermission.writeAllData,
            }),
          ),
        );

        await openReportFor(tester, editableFamily);

        expect(find.byKey(DataCheckReportDialogKeys.dialog), findsOneWidget);
        expect(find.byType(SegmentedButton<DataCheckOverride>), findsNothing);
      },
    );

    testWidgets('a signed-out viewer cannot override a family', (
      tester,
    ) async {
      when(() => authBloc.currentUserData).thenReturn(null);

      await openReportFor(tester, editableFamily);

      expect(find.byKey(DataCheckReportDialogKeys.dialog), findsOneWidget);
      expect(find.byType(SegmentedButton<DataCheckOverride>), findsNothing);
    });
  });
}

class _MockAuthBloc extends Mock implements AuthBloc {}

class _MockDatabaseService extends Mock implements DatabaseService {}

class _MockDataChecksDAO extends Mock implements DataChecksDAO {}
