import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class DataExportState with Equatable {
  @override
  List<Object?> get props => [];
  const DataExportState();
}

sealed class DataExportStateBuilder extends DataExportState {
  const DataExportStateBuilder();
}

sealed class DataExportStateListener extends DataExportState {
  const DataExportStateListener();
}

final class DataExportMessage extends DataExportStateListener {
  final String message;

  @override
  List<Object?> get props => [message];

  const DataExportMessage(this.message);
}

final class DataExportException extends DataExportStateListener {
  final Object error;

  @override
  List<Object?> get props => [error];

  const DataExportException(this.error);
}

final class DataExportLoading extends DataExportStateBuilder {
  const DataExportLoading();
}

final class DataExportListSavedFiles extends DataExportStateBuilder {
  final List<DataExportFile> files;

  @override
  List<Object?> get props => [files];

  const DataExportListSavedFiles({required this.files});
}

final class DataExportSelectingObjects extends DataExportStateBuilder {
  final ViewableObjectListController<Area> areasController;
  final ViewableObjectListController<Service> servicesController;
  final ViewableObjectListController<Class> classesController;
  final ViewableObjectListController<Group> groupsController;

  @override
  List<Object?> get props => [
    areasController,
    servicesController,
    classesController,
    groupsController,
  ];

  const DataExportSelectingObjects({
    required this.areasController,
    required this.servicesController,
    required this.classesController,
    required this.groupsController,
  });
}

final class DataExportInProgress extends DataExportStateBuilder {
  final double? progress;

  @override
  List<Object?> get props => [progress];

  const DataExportInProgress({this.progress});
}

final class DataExportCompleted extends DataExportStateBuilder {
  final DataExportFile file;

  @override
  List<Object?> get props => [file];

  const DataExportCompleted({required this.file});
}
