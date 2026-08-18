import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dio/dio.dart';

class FunctionsService {
  static FunctionsService get I =>
      globalProviderContainer.read(functionsServiceProvider);

  final Dio _dio;

  FunctionsService({required this._dio});

  final _pendingDownloadUrls = <int, Future<String>>{};

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
    _pendingDownloadUrls[hash] ??= httpsCallable('getDownloadUrl')
        .call({'table': table, 'id': id, 'contentType': contentType})
        .then((value) {
          // Map.remove returns the removed value
          // which the analyzer marks as unawaited
          unawaited(_pendingDownloadUrls.remove(hash));
          return value.data;
        });

    try {
      return await _pendingDownloadUrls[hash]!;
    } catch (e) {
      // Map.remove returns the removed value
      // which the analyzer marks as unawaited
      unawaited(_pendingDownloadUrls.remove(hash));
      rethrow;
    }
  }

  Future<String> getUploadUrl(
    String table,
    String id, {
    String? contentType,
  }) async {
    return (await httpsCallable(
      'getUploadUrl',
    ).call({'table': table, 'id': id, 'contentType': contentType})).data;
  }

  Future<void> deletePhoto(String table, String id) async {
    await httpsCallable('deletePhoto').call({'table': table, 'id': id});
  }

  Future<bool> tryClaimInvitation() async {
    try {
      await httpsCallable('tryClaimInvitation').call<void>();

      return true;
    } on FirebaseFunctionsException catch (e) {
      if (e.code == 'unauthenticated') {
        return false;
      }

      rethrow;
    }
  }

  Future<Address?> getAddressFromLocation(Point location) async {
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
          'addressdetails': '1',
        },
      ),
      options: Options(headers: {'User-Agent': 'church_admin'}),
    );

    if (response.statusCode != 200 || response.data == null) {
      return null;
    }

    return Address.fromNominatimResponse(response.data);
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
        headers: {'content-length': ?fileLength},
      ),
      onSendProgress: onSendProgress,
    );
  }

  Future<bool> checkHasuraHealth() async {
    final res = await _dio
        .getUri(
          Uri.parse(
            SecretsService.I.hasuraServer,
          ).replace(pathSegments: ['healthz']),
        )
        .timeout(const Duration(seconds: 15));
    return res.data == 'OK';
  }

  Future<void> registerUserWithCode(String? registerCode) async {
    await httpsCallable(
      'registerUserWithCode',
    ).call({'registerCode': registerCode});
  }

  Future<String> getAppDownloadLink(String platform) async {
    final response = await httpsCallable(
      'getAppDownloadLink',
    ).call({'platform': platform});

    return response.data;
  }

  Future<void> deleteMyAccount() async {
    await httpsCallable('deleteMyAccount').call();
  }

  Future<String> exportData({
    List<String> areasIds = const [],
    List<String> servicesIds = const [],
    List<String> classesIds = const [],
    List<String> groupsIds = const [],
  }) async {
    final response = await httpsCallable('exportData').call({
      'areasIds': areasIds,
      'servicesIds': servicesIds,
      'classesIds': classesIds,
      'groupsIds': groupsIds,
    });

    if (response.data case {'downloadUrl': final String downloadUrl}) {
      return downloadUrl;
    }

    throw Exception(
      'Failed to parse export data response, expected Map<String, dynamic> got ${response.data}',
    );
  }
}
