import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class PhotoUploadLink with Equatable {
  final String url;
  final DateTime expiresAt;
  final Map<String, String> headers;
  final String confirmationToken;

  @override
  List<Object?> get props => [url, expiresAt, headers, confirmationToken];

  const PhotoUploadLink({
    required this.url,
    required this.expiresAt,
    required this.headers,
    required this.confirmationToken,
  });

  factory PhotoUploadLink.fromJson(Json json) => PhotoUploadLink(
    url: json['url'] as String,
    expiresAt: tstzFromString(json['expiresAt']),
    headers: {
      for (final header in json['headers'] as List)
        (header as Json)['name'] as String: header['value'] as String,
    },
    confirmationToken: json['confirmationToken'] as String,
  );
}
