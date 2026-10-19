import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class PhotoLink with Equatable {
  final String url;
  final DateTime expiresAt;

  @override
  List<Object?> get props => [url, expiresAt];

  const PhotoLink({required this.url, required this.expiresAt});

  factory PhotoLink.fromJson(Json json) => PhotoLink(
    url: json['url'] as String,
    expiresAt: tstzFromString(json['expiresAt']),
  );
}
