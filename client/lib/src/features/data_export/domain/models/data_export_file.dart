import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:universal_io/universal_io.dart';

@immutable
class DataExportFile with Equatable {
  final String path;
  final DateTime lastModified;

  const DataExportFile({required this.path, required this.lastModified});

  factory DataExportFile.fromFile(File file) => DataExportFile(
    path: file.path,
    lastModified: file.lastModifiedSync(),
  );

  @override
  List<Object?> get props => [path, lastModified];
}
