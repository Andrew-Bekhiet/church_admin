import 'dart:convert';

import 'package:archive/archive.dart';
import 'package:http/http.dart' as http;

import 'e2e_backend.dart';

/// The `.xlsx` the `exportData` function saved for a user, read straight
/// from the Storage emulator: the file the app downloads next.
class ExportedWorkbook {
  static const _bucket = '${E2eBackend.projectId}.appspot.com';
  static final Uri _storageEmulator = Uri.http('localhost:9199');

  static Future<ExportedWorkbook> latestExportOf(String uid) async {
    final listed = await _get(
      ['storage', 'v1', 'b', _bucket, 'o'],
      queryParameters: {'prefix': 'exports/$uid/'},
    );
    final names = [
      for (final item in (jsonDecode(listed.body)['items'] as List?) ?? [])
        (item as Map)['name'] as String,
    ]..sort();

    if (names.isEmpty) {
      throw StateError('No export was saved for $uid: ${listed.body}');
    }

    final workbook = await _get(
      ['storage', 'v1', 'b', _bucket, 'o', names.last],
      queryParameters: {'alt': 'media'},
    );
    final xmlText = ZipDecoder()
        .decodeBytes(workbook.bodyBytes)
        .files
        .where((file) => file.isFile && file.name.endsWith('.xml'))
        .map((file) => utf8.decode(file.content))
        .join('\n');

    return ExportedWorkbook._(xmlText);
  }

  static Future<http.Response> _get(
    List<String> pathSegments, {
    required Map<String, String> queryParameters,
  }) async {
    final response = await http.get(
      _storageEmulator.replace(
        pathSegments: pathSegments,
        queryParameters: queryParameters,
      ),
    );

    if (response.statusCode != 200) {
      throw StateError(
        'Storage emulator ${pathSegments.join('/')} failed: ${response.body}',
      );
    }

    return response;
  }

  final String _xmlText;

  const ExportedWorkbook._(this._xmlText);

  bool mentions(String text) => _xmlText.contains(text);
}
