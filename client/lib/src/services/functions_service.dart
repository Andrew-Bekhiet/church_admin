// coverage:ignore-file
import 'dart:async';
import 'dart:convert';

//TODO: support web

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class CAFunctionsService extends FunctionsService {
  final _pendingDownloadUrls = <int, Future<String>>{};

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
    final response = await GetIt.I<Dio>().getUri(
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
    return json.decode(response.data)['display_name'];
  }

  Future<Response> uploadPhoto({
    required String url,
    required Stream<List<int>> fileStream,
    String? contentType,
    int? fileLength,
    void Function(int, int)? onSendProgress,
  }) async {
    return GetIt.I<Dio>().put(
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
}
