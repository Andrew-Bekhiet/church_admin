import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_export/application/export_operations_storage.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

import '../../../utils.dart';

void main() {
  group('DataExportCubit', () {
    late _DataExportCubitFixture fixture;
    const downloadUrl = 'https://example.com/export.xlsx';
    const area = Area(id: 'area-id', name: 'Area');
    final exportedFile = DataExportFile(
      path: '/exports/export.xlsx',
      lastModified: DateTime.now(),
    );

    setUp(() {
      fixture = _DataExportCubitFixture();
    });

    tearDown(defaultTearDown);

    blocTest<DataExportCubit, DataExportState>(
      'shows saved files sorted by last modified date when exports already exist',
      setUp: () {
        fixture.savedFiles = [
          DataExportFile(
            path: 'newer.xlsx',
            lastModified: DateTime(2024, 4, 2),
          ),
          DataExportFile(path: 'older.xlsx', lastModified: DateTime(2024)),
        ];
      },
      build: () => fixture.createCubit(),
      expect: () => [
        isA<DataExportListSavedFiles>().having(
          (state) => state.files,
          'files',
          fixture.savedFiles.sortedBy((file) => file.lastModified),
        ),
      ],
    );

    blocTest<DataExportCubit, DataExportState>(
      'starts a new export when there are no saved files',
      build: () => fixture.createCubit(),
      expect: () => [
        isA<DataExportSelectingObjects>(),
      ],
    );

    blocTest<DataExportCubit, DataExportState>(
      'asks the user to select something before exporting',
      build: () => fixture.createCubit(),
      act: (cubit) async {
        await cubit.stream.whereType<DataExportSelectingObjects>().first;

        await cubit.startExport();
      },
      expect: () => [
        isA<DataExportSelectingObjects>(),
        isA<DataExportMessage>(),
        isA<DataExportSelectingObjects>(),
      ],
      verify: (_) {
        verifyNever(
          () => fixture.functionsService.exportData(
            areasIds: any(named: 'areasIds'),
            servicesIds: any(named: 'servicesIds'),
            classesIds: any(named: 'classesIds'),
            groupsIds: any(named: 'groupsIds'),
          ),
        );
      },
    );

    blocTest<DataExportCubit, DataExportState>(
      'exports selected objects and saves the downloaded file',
      setUp: () {
        when(
          () => fixture.functionsService.exportData(
            areasIds: [area.id],
            servicesIds: any(named: 'servicesIds'),
            classesIds: any(named: 'classesIds'),
            groupsIds: any(named: 'groupsIds'),
          ),
        ).thenAnswer((_) async => downloadUrl);

        when(
          () => fixture.exportOperationsStorage.saveFile(
            downloadUrl: downloadUrl,
            onProgress: any(named: 'onProgress'),
          ),
        ).thenAnswer((invocation) async {
          final onProgress =
              invocation.namedArguments[#onProgress] as void Function(double);
          onProgress(0.3);
          onProgress(0.5);
          onProgress(1);

          return exportedFile;
        });
      },
      build: () => fixture.createCubit(),
      act: (cubit) async {
        final selectingState = await cubit.stream
            .whereType<DataExportSelectingObjects>()
            .first;

        selectingState.areasController.selectionController.select(area);
        await cubit.startExport();
      },
      expect: () => [
        isA<DataExportSelectingObjects>(),
        const DataExportInProgress(),
        const DataExportInProgress(progress: 0.3),
        const DataExportInProgress(progress: 0.5),
        const DataExportInProgress(progress: 1),
        isA<DataExportCompleted>().having(
          (state) => state.file,
          'file',
          exportedFile,
        ),
      ],
      verify: (_) {
        verify(
          () => fixture.functionsService.exportData(
            areasIds: [area.id],
            servicesIds: captureAny(named: 'servicesIds'),
            classesIds: captureAny(named: 'classesIds'),
            groupsIds: captureAny(named: 'groupsIds'),
          ),
        );
        verify(
          () => fixture.exportOperationsStorage.saveFile(
            downloadUrl: downloadUrl,
            onProgress: any(named: 'onProgress'),
          ),
        ).called(1);
      },
    );

    blocTest<DataExportCubit, DataExportState>(
      'Switches between selecting objects and saved files',
      build: () => fixture.createCubit(),
      act: (cubit) async {
        await cubit.stream.whereType<DataExportSelectingObjects>().first;
        await cubit.switchToSavedFiles();
        cubit.switchToSelectingObjects();
      },
      expect: () => [
        isA<DataExportSelectingObjects>(),
        isA<DataExportListSavedFiles>(),
        isA<DataExportSelectingObjects>(),
      ],
    );
  });
}

final class _DataExportCubitFixture {
  final authBloc = MockAuthBloc();
  final functionsService = MockFunctionsService();
  final exportOperationsStorage = MockExportOperationsStorage();
  final databaseService = MockDatabaseService();
  final areasDao = MockAreasDAO();
  final servicesDao = MockServicesDAO();
  final classesDao = MockClassesDAO();
  final groupsDao = MockGroupsDAO();

  List<DataExportFile> savedFiles = const [];

  _DataExportCubitFixture() {
    when(() => authBloc.currentUserData).thenReturn(
      User(
        uid: 'uid',
        name: 'User',
        person: Person(id: 'person-id', name: 'Person'),
        permissions: const PermissionsSet.fromSet({
          UserPermission.exportAllData,
        }),
        photoUpdatedAt: DateTime.now(),
        lastEdit: LastRecordedByInfo(
          time: DateTime.now(),
          recordedBy: 'recordedBy',
        ),
      ),
    );
    when(
      exportOperationsStorage.listSavedFiles,
    ).thenAnswer((_) async => savedFiles);

    when(() => databaseService.areas).thenReturn(areasDao);
    when(() => databaseService.services).thenReturn(servicesDao);
    when(() => databaseService.classes).thenReturn(classesDao);
    when(() => databaseService.groups).thenReturn(groupsDao);

    _stubStreamAll(areasDao.streamAll, _emptyPaginatableStream<Area>);
    _stubStreamAll(servicesDao.streamAll, _emptyPaginatableStream<Service>);
    _stubStreamAll(classesDao.streamAll, _emptyPaginatableStream<Class>);
    _stubStreamAll(groupsDao.streamAll, _emptyPaginatableStream<Group>);
  }

  PaginatableStreamBase<T> _emptyPaginatableStream<T>() =>
      PaginatableStream<T, Object?>.simple(
        factory: (_) => Stream.value(
          const PaginatableStreamResponse(data: []),
        ),
      );

  DataExportCubit createCubit() {
    return DataExportCubit(
      authBloc: authBloc,
      functionsService: functionsService,
      exportOperationsStorage: exportOperationsStorage,
      databaseService: databaseService,
    );
  }
}

void _stubStreamAll<T extends ViewableWithID>(
  PaginatableStreamBase<T> Function({
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<String?>? searchQuery,
  })
  streamAll,
  PaginatableStreamBase<T> Function() streamFactory,
) {
  when(
    () => streamAll(
      searchQuery: any(named: 'searchQuery'),
      where: any(named: 'where'),
      orderBy: any(named: 'orderBy'),
    ),
  ).thenAnswer((_) => streamFactory());
}

final class MockAuthBloc extends Mock implements AuthBloc {}

final class MockFunctionsService extends Mock implements FunctionsService {}

final class MockExportOperationsStorage extends Mock
    implements ExportOperationsStorage {}

final class MockDatabaseService extends Mock implements DatabaseService {}

final class MockAreasDAO extends Mock implements AreasDAO {}

final class MockServicesDAO extends Mock implements ServicesDAO {}

final class MockClassesDAO extends Mock implements ClassesDAO {}

final class MockGroupsDAO extends Mock implements GroupsDAO {}
