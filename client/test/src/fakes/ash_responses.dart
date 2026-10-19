import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class AshTestItem extends ViewableWithID with Equatable {
  static const typename = 'TestItem';
  static const pageTypename = 'KeysetPageOf$typename';

  @override
  final String id;
  @override
  final String name;

  @override
  List<Object?> get props => [id, name];

  const AshTestItem({required this.id, required this.name});

  factory AshTestItem.fromJson(Json json) =>
      AshTestItem(id: json['id'] as String, name: json['name'] as String);

  AshTestItem renamed(String name) => AshTestItem(id: id, name: name);

  Json toJson() => {'__typename': typename, 'id': id, 'name': name};
}

abstract final class AshResponses {
  static Json page(
    List<Json> results, {
    String typename = AshTestItem.pageTypename,
    int? count,
    String? endKeyset,
  }) => {
    '__typename': typename,
    'count': count ?? results.length,
    'endKeyset': endKeyset ?? results.lastOrNull?['id'],
    'results': results,
  };

  static Json mutationResult(Json? result) => {
    '__typename': 'MutationResult',
    'result': result,
  };

  static Json photoLink(String url, DateTime expiresAt) => {
    '__typename': 'PhotoLink',
    'url': url,
    'expiresAt': expiresAt.toUtc().toIso8601String(),
  };

  static Json exportDownloadLink(String downloadUrl, DateTime expiresAt) => {
    '__typename': 'ExportDownloadLink',
    'downloadUrl': downloadUrl,
    'expiresAt': expiresAt.toUtc().toIso8601String(),
  };

  static Json appDownloadLink({
    required String url,
    required String version,
    required DateTime expiresAt,
  }) => {
    '__typename': 'AppDownloadLink',
    'url': url,
    'version': version,
    'expiresAt': expiresAt.toUtc().toIso8601String(),
  };

  static Json claimedAccount(String uid) => {
    '__typename': 'ClaimedAccount',
    'uid': uid,
  };
}
