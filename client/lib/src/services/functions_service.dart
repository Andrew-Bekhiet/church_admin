// coverage:ignore-file
import 'dart:async';

//TODO: support web

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dio/dio.dart';

class CAFunctionsService extends FunctionsService {
  static CAFunctionsService get I =>
      globalProviderContainer.read(functionsServiceProvider);

  final Dio _dio;

  CAFunctionsService({required Dio dio}) : _dio = dio;

  final _pendingDownloadUrls = <int, Future<String>>{};

  @override
  HttpsCallable httpsCallable(
    String functionName, {
    HttpsCallableOptions? options,
  }) {
    return globalProviderContainer
        .read(firebaseFunctionsProvider)
        .httpsCallable(functionName, options: options);
  }

  Future<String> getDownloadUrl(
    String table,
    String id, {
    String? contentType,
  }) async {
    final hash = Object.hash(table, id, contentType);
    _pendingDownloadUrls[hash] ??= httpsCallable('getDownloadUrl').call({
      'table': table,
      'id': id,
      'contentType': contentType,
    }).then((value) {
      _pendingDownloadUrls.remove(hash);
      return value.data;
    });

    try {
      return await _pendingDownloadUrls[hash]!;
    } catch (e) {
      unawaited(_pendingDownloadUrls.remove(hash));
      rethrow;
    }
  }

  Future<String> getUploadUrl(
    String table,
    String id, {
    String? contentType,
  }) async {
    return (await httpsCallable('getUploadUrl').call({
      'table': table,
      'id': id,
      'contentType': contentType,
    }))
        .data;
  }

  @override
  Future<HttpsCallableResult> recoverDocument(
    JsonRef deletedDoc, {
    bool keepBackup = true,
    bool nested = true,
  }) async {
    throw UnimplementedError();
  }

  Future<String?> getAddressFromLocation(Point location) async {
    final response = await _dio.getUri(
      Uri(
        scheme: 'https',
        host: 'nominatim.openstreetmap.org',
        path: 'reverse',
        queryParameters: {
          'lat': '${location.latitude}',
          'lon': '${location.longitude}',
          'accept': 'language=ar-EG',
          'format': 'jsonv2',
        },
      ),
    );
    return response.data['display_name'];
  }

  Future<Response> uploadPhoto({
    required String url,
    required Stream<List<int>> fileStream,
    String? contentType,
    int? fileLength,
    void Function(int, int)? onSendProgress,
  }) {
    return _dio.put(
      url,
      data: fileStream,
      options: Options(
        contentType: contentType,
        headers: {
          if (fileLength != null) 'content-length': fileLength,
        },
      ),
      onSendProgress: onSendProgress,
    );
  }

  Future<bool> checkHasuraHealth() async {
    final res = await _dio
        .getUri(
          Uri.parse(SecretsService.I.hasuraServer)
              .replace(pathSegments: ['healthz']),
        )
        .timeout(const Duration(seconds: 15));
    return res.data == 'OK';
  }
}
