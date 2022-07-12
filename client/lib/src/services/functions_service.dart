// coverage:ignore-file
import 'package:churchdata_core/churchdata_core.dart';
import 'package:cloud_functions/cloud_functions.dart';

class CAFunctionsService extends FunctionsService {
  Future<String> getDownloadUrl(
    String table,
    String id, {
    String? contentType,
  }) async {
    return (await httpsCallable('getDownloadUrl').call({
      'table': table,
      'id': id,
      'contentType': contentType,
    }))
        .data;
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
}
