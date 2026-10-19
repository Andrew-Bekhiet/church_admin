import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/files/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/files/__generated__/queries.graphql.dart';
import 'package:dio/dio.dart';
import 'package:graphql/client.dart'
    show FetchPolicy, MutationOptions, QueryOptions;

class PhotosDAO {
  final DatabaseService _db;
  final Dio _dio;
  final _pendingDownloadLinks = <int, Future<PhotoLink>>{};

  DBGraphQLClient get graphQLClient => _db.graphQLClient;

  PhotosDAO({required this._db, required this._dio});

  Future<PhotoLink> photoDownloadUrl({
    required Enum_PhotoSubject subject,
    required String id,
    String? contentType,
  }) {
    final request = Object.hash(subject, id, contentType);

    return _pendingDownloadLinks[request] ??=
        _queryPhotoDownloadUrl(
          subject: subject,
          id: id,
          contentType: contentType,
        ).whenComplete(
          () => unawaited(_pendingDownloadLinks.remove(request)),
        );
  }

  Future<PhotoLink> requestPhotoUpload({
    required Enum_PhotoSubject subject,
    required String id,
    String? contentType,
  }) {
    const document = documentNodeMutationrequestPhotoUpload;

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: 'requestPhotoUpload',
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables_Mutation_requestPhotoUpload(
          subject: subject,
          id: id,
          contentType: contentType,
        ).toJson(),
        parserFn: AshResultParser(document).actionResult(_photoLinkOf),
      ),
      autoChangeFetchPolicy: false,
    );
  }

  Future<void> deletePhoto({
    required Enum_PhotoSubject subject,
    required String id,
  }) async {
    const document = documentNodeMutationdeletePhoto;

    await graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: 'deletePhoto',
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables_Mutation_deletePhoto(
          subject: subject,
          id: id,
        ).toJson(),
        parserFn: AshResultParser(document)
            .actionResult((value) => value == true),
      ),
      autoChangeFetchPolicy: false,
    );
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

  Future<PhotoLink> _queryPhotoDownloadUrl({
    required Enum_PhotoSubject subject,
    required String id,
    String? contentType,
  }) {
    const document = documentNodeQueryphotoDownloadUrl;

    return graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: document,
        operationName: 'photoDownloadUrl',
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables_Query_photoDownloadUrl(
          subject: subject,
          id: id,
          contentType: contentType,
        ).toJson(),
        parserFn: AshResultParser(document).actionResult(_photoLinkOf),
      ),
      autoChangeFetchPolicy: false,
    );
  }

  PhotoLink _photoLinkOf(Object? value) => switch (value) {
    final Json json => PhotoLink.fromJson(json),
    _ => throw StateError('A photo link was expected, got $value'),
  };
}
