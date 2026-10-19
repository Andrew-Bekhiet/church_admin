import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class AppDownloadLink with Equatable {
  final String url;
  final String version;
  final DateTime expiresAt;

  @override
  List<Object?> get props => [url, version, expiresAt];

  const AppDownloadLink({
    required this.url,
    required this.version,
    required this.expiresAt,
  });

  factory AppDownloadLink.fromJson(Json json) => AppDownloadLink(
    url: json['url'] as String,
    version: json['version'] as String,
    expiresAt: tstzFromString(json['expiresAt']),
  );
}
