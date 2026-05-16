import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:universal_io/universal_io.dart';

sealed class DataExportState with EquatableMixin {
  const DataExportState();

  @override
  List<Object?> get props => [];
}

sealed class DataExportStateBuilder extends DataExportState {
  const DataExportStateBuilder();
}

sealed class DataExportStateListener extends DataExportState {
  const DataExportStateListener();
}

final class DataExportMessage extends DataExportStateListener {
  final String message;

  const DataExportMessage(this.message);

  @override
  List<Object?> get props => [message];
}

final class DataExportException extends DataExportStateListener {
  final Object error;

  const DataExportException(this.error);
}

final class DataExportLoading extends DataExportStateBuilder {
  const DataExportLoading();
}

final class DataExportListSavedFiles extends DataExportStateBuilder {
  final List<File> files;

  const DataExportListSavedFiles({required this.files});

  @override
  List<Object?> get props => [files];
}

final class DataExportSelectingObjects extends DataExportStateBuilder {
  final ViewableObjectListController<Area> areasController;
  final ViewableObjectListController<Service> servicesController;
  final ViewableObjectListController<Class> classesController;
  final ViewableObjectListController<Group> groupsController;

  const DataExportSelectingObjects({
    required this.areasController,
    required this.servicesController,
    required this.classesController,
    required this.groupsController,
  });

  @override
  List<Object?> get props => [
    areasController,
    servicesController,
    classesController,
    groupsController,
  ];
}

final class DataExportInProgress extends DataExportStateBuilder {
  final double? progress;

  const DataExportInProgress({this.progress});

  @override
  List<Object?> get props => [progress];
}

final class DataExportCompleted extends DataExportStateBuilder {
  final File file;

  const DataExportCompleted({required this.file});

  @override
  List<Object?> get props => [file];
}
