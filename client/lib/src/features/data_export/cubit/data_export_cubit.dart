import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_export/application/export_operations_storage.dart';
import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_file/open_file.dart';
import 'package:rxdart/rxdart.dart';

class DataExportCubit extends Cubit<DataExportState> {
  late final BehaviorSubject<String?> searchController = BehaviorSubject.seeded(
    null,
  );

  late final SelectionController<Area> _areasSelectionController =
      SelectionController(
        initialSelection: {},
        equality: EqualityBy((a) => a.id),
      );
  late final SelectionController<Service> _servicesSelectionController =
      SelectionController(
        initialSelection: {},
        equality: EqualityBy((s) => s.id),
      );
  late final SelectionController<Class> _classesSelectionController =
      SelectionController(
        initialSelection: {},
        equality: EqualityBy((c) => c.id),
      );
  late final SelectionController<Group> _groupsSelectionController =
      SelectionController(
        initialSelection: {},
        equality: EqualityBy((g) => g.id),
      );

  ViewableObjectListController<Area>? _areasController;
  ViewableObjectListController<Service>? _servicesController;
  ViewableObjectListController<Class>? _classesController;
  ViewableObjectListController<Group>? _groupsController;

  late final StreamSubscription<String> _selectionSearchSubscription;

  final FunctionsService _functionsService;
  final AuthBloc _authBloc;
  final ExportOperationsStorage _exportOperationsStorage;
  final DatabaseService _databaseService;
  final AnalyticsService _analyticsService;

  bool get _canExportAllData =>
      _authBloc.currentUserData?.permissions.exportAllData ?? false;

  DataExportCubit({
    FunctionsService? functionsService,
    AuthBloc? authBloc,
    ExportOperationsStorage? exportOperationsStorage,
    DatabaseService? databaseService,
    AnalyticsService? analyticsService,
  }) : _functionsService = functionsService ?? FunctionsService.I,
       _authBloc = authBloc ?? AuthBloc.I,
       _exportOperationsStorage =
           exportOperationsStorage ?? ExportOperationsStorage.I,
       _databaseService = databaseService ?? DatabaseService.I,
       _analyticsService = analyticsService ?? AnalyticsService.I,
       super(const DataExportLoading()) {
    _selectionSearchSubscription = searchController
        .debounceTime(HomeSearchCubit.debounceDuration)
        .whereNotNull()
        .where((query) => query.isNotEmpty)
        .distinct()
        .listen(
          (query) => _analyticsService.track(
            ExportSelectionSearchRun(queryLength: query.length),
          ),
        );
    unawaited(_showSavedFilesOrStartNewExport());
  }

  Future<void> _showSavedFilesOrStartNewExport() async {
    final files = await _exportOperationsStorage.listSavedFiles();

    _analyticsService.track(
      ExportLandingShow(
        files.isEmpty
            ? ExportLandingView.selection
            : ExportLandingView.savedFiles,
        savedFileCount: files.length,
      ),
    );

    if (files.isNotEmpty) {
      emit(DataExportListSavedFiles(files: _sortFilesByLastModified(files)));
    } else {
      _showSelection();
    }
  }

  List<DataExportFile> _sortFilesByLastModified(List<DataExportFile> files) =>
      files.sortedBy((file) => file.lastModified);

  Future<void> switchToSavedFiles() async {
    final files = await _exportOperationsStorage.listSavedFiles();

    emit(DataExportListSavedFiles(files: _sortFilesByLastModified(files)));
  }

  void startNewExport() {
    _analyticsService.track(const ExportNewExportTap());
    _showSelection();
  }

  void _showSelection() {
    _maybeInitControllers();
    emit(
      DataExportSelectingObjects(
        areasController: _areasController!,
        servicesController: _servicesController!,
        classesController: _classesController!,
        groupsController: _groupsController!,
      ),
    );
  }

  void _maybeInitControllers() {
    final userAdminOnStream = _canExportAllData
        ? null
        : _authBloc.userDataStream.map(
            (u) =>
                u?.adminOn?.map(UserAdminScope.fromAdminOnData).toList() ?? [],
          );

    _areasController ??= ViewableObjectListController(
      selectionController: _areasSelectionController,
      filterStream: searchController.stream,
      objectsPaginatableStream: _databaseService.areas.streamAll(
        searchQuery: searchController.stream,
        where: userAdminOnStream?.map(
          (adminOn) => [
            Filter(
              AreaFields().id,
              MultiSelectOperator.anyOf,
              _selectExportableIds<Area>(adminOn),
            ),
          ],
        ),
      ),
    );

    _servicesController ??= ViewableObjectListController(
      selectionController: _servicesSelectionController,
      filterStream: searchController.stream,
      objectsPaginatableStream: _databaseService.services.streamAll(
        searchQuery: searchController.stream,
        where: userAdminOnStream?.map(
          (adminOn) => [
            Filter(
              ServiceFields().id,
              MultiSelectOperator.anyOf,
              _selectExportableIds<Service>(adminOn),
            ),
          ],
        ),
      ),
    );

    _classesController ??= ViewableObjectListController(
      selectionController: _classesSelectionController,
      filterStream: searchController.stream,
      objectsPaginatableStream: _databaseService.classes.streamAll(
        searchQuery: searchController.stream,
        where: userAdminOnStream?.map(_exportableClassesFilters),
      ),
    );

    _groupsController ??= ViewableObjectListController(
      selectionController: _groupsSelectionController,
      filterStream: searchController.stream,
      objectsPaginatableStream: _databaseService.groups.streamAll(
        searchQuery: searchController.stream,
        where: userAdminOnStream?.map(
          (adminOn) => [
            Filter(
              GroupFields().id,
              MultiSelectOperator.anyOf,
              _selectExportableIds<Group>(adminOn),
            ),
          ],
        ),
      ),
    );
  }

  List<String> _selectExportableIds<T extends ViewableWithID>(
    List<UserAdminScope<ViewableWithID>> adminOn,
  ) {
    return adminOn
        .whereType<UserAdminScope<T>>()
        .where((adminOn) => adminOn.canExportData)
        .map((adminOn) => adminOn.object.id)
        .toList();
  }

  List<Filter> _exportableClassesFilters(
    List<UserAdminScope<ViewableWithID>> adminOn,
  ) {
    final exportableServiceScopes = adminOn
        .whereType<UserAdminScope<Service>>()
        .where((scope) => scope.canExportData)
        .toList();

    if (exportableServiceScopes.isEmpty) {
      return [
        Filter(ClassFields().id, MultiSelectOperator.anyOf, const <String>[]),
      ];
    }

    return [
      Filter(
        const DotField(),
        LogicalOperator.or,
        exportableServiceScopes
            .map(
              (scope) => Filter(const DotField(), LogicalOperator.and, [
                Filter(
                  ClassFields().service.redirectTo(ServiceFields().id),
                  PrimitiveOperator.eq,
                  scope.object.id,
                ),
                if (scope.gender case final gender?)
                  Filter(
                    ClassFields().serviceGender,
                    BooleanOperator.is$,
                    gender,
                  ),
                if (scope.studyYear case final studyYear?)
                  Filter(
                    ClassFields().studyYear.redirectTo(StudyYearFields().order),
                    PrimitiveOperator.eq,
                    studyYear.order,
                  ),
              ]),
            )
            .toList(),
      ),
    ];
  }

  Future<void> startExport() async {
    if (state is! DataExportSelectingObjects) return;

    final areasIds =
        _areasSelectionController.currentValue?.map((e) => e.id).toList() ?? [];
    final servicesIds =
        _servicesSelectionController.currentValue?.map((e) => e.id).toList() ??
        [];
    final classesIds =
        _classesSelectionController.currentValue?.map((e) => e.id).toList() ??
        [];
    final groupsIds =
        _groupsSelectionController.currentValue?.map((e) => e.id).toList() ??
        [];

    if (areasIds.isEmpty &&
        servicesIds.isEmpty &&
        classesIds.isEmpty &&
        groupsIds.isEmpty) {
      _analyticsService.track(const ExportEmptySelectionShow());
      _emitListenerState(
        const DataExportMessage('اختر عنصرًا واحدًا على الأقل للمتابعة'),
      );

      return;
    }

    _analyticsService.track(
      ExportStart(
        areaCount: areasIds.length,
        serviceCount: servicesIds.length,
        classCount: classesIds.length,
        groupCount: groupsIds.length,
        isScopedToOwn: !_canExportAllData,
      ),
    );
    final startedAt = clock.now();
    emit(const DataExportInProgress());
    try {
      final downloadUrl = await _functionsService.exportData(
        areasIds: areasIds,
        servicesIds: servicesIds,
        classesIds: classesIds,
        groupsIds: groupsIds,
      );
      final file = await _exportOperationsStorage.saveFile(
        downloadUrl: downloadUrl,
        onProgress: (progress) =>
            emit(DataExportInProgress(progress: progress)),
      );

      _trackExportFinish(startedAt, isSuccess: true);
      emit(DataExportCompleted(file: file));
    } catch (e, s) {
      _trackExportFinish(startedAt, isSuccess: false);
      unawaited(LoggingService.I.exception(LogRecord(error: e, stackTrace: s)));
      _emitListenerState(DataExportException(e));
      _showSelection();
    }
  }

  void _trackExportFinish(DateTime startedAt, {required bool isSuccess}) =>
      _analyticsService.track(
        ExportFinish(
          duration: clock.now().difference(startedAt),
          isSuccess: isSuccess,
        ),
      );

  void openExportedFile(DataExportFile file, ExportFileOpenSource source) {
    _analyticsService.track(ExportFileOpen(source));
    unawaited(OpenFile.open(file.path));
  }

  void _emitListenerState(DataExportStateListener listenerState) {
    final state = this.state;
    emit(listenerState);
    emit(state);
  }

  @override
  Future<void> close() async {
    await Future.wait(
      [
        _areasController?.dispose(),
        _servicesController?.dispose(),
        _classesController?.dispose(),
        _groupsController?.dispose(),
        _selectionSearchSubscription.cancel(),
        searchController.close(),
      ].nonNulls,
    );

    await super.close();
  }
}
