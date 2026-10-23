import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:church_admin/src/features/data_export/application/export_operations_storage.dart';
import 'package:collection/collection.dart';

/// The `.xlsx` the app downloaded last through `exportData`, read from the
/// exports folder the app saved it in.
class ExportedWorkbook {
  static Future<ExportedWorkbook> latestSavedByTheApp() async {
    final saved = await ExportOperationsStorage.I.listSavedFiles();

    if (saved.isEmpty) {
      throw StateError('The app saved no export');
    }

    final latest = saved.sortedBy((file) => file.lastModified).last;
    final xmlText = ZipDecoder()
        .decodeBytes(await File(latest.path).readAsBytes())
        .files
        .where((file) => file.isFile && file.name.endsWith('.xml'))
        .map((file) => utf8.decode(file.content))
        .join('\n');

    return ExportedWorkbook._(xmlText);
  }

  final String _xmlText;

  const ExportedWorkbook._(this._xmlText);

  bool mentions(String text) => _xmlText.contains(text);

  List<String> mentionedAmong(Iterable<String> texts) =>
      texts.where(mentions).toList();
}
