import 'package:equatable/equatable.dart';

class CachedImageUrl with Equatable {
  static const _separator = '|';

  final DateTime photoUpdatedAt;

  /// Null for an entry stored before download links carried their expiry:
  /// such a link is treated as expired, so it is used only while the photo
  /// file it points at is still on disk.
  final DateTime? expiresAt;
  final String url;

  bool get isExpired => expiresAt?.isBefore(DateTime.now()) ?? true;

  @override
  List<Object?> get props => [photoUpdatedAt, expiresAt, url];

  const CachedImageUrl({
    required this.photoUpdatedAt,
    required this.expiresAt,
    required this.url,
  });

  factory CachedImageUrl.parse(String stored) {
    final fields = stored.split(_separator);
    final photoUpdatedAt = DateTime.parse(fields.first);
    final expiresAt = fields.length > 2 ? DateTime.tryParse(fields[1]) : null;

    return CachedImageUrl(
      photoUpdatedAt: photoUpdatedAt,
      expiresAt: expiresAt,
      url: fields.skip(expiresAt == null ? 1 : 2).join(_separator),
    );
  }

  String toStoredString() => [
    photoUpdatedAt.toIso8601String(),
    expiresAt?.toUtc().toIso8601String(),
    url,
  ].nonNulls.join(_separator);
}
