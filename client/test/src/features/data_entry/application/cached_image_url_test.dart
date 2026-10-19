import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final cached = CachedImageUrl(
    photoUpdatedAt: DateTime(2024, 3, 4, 5),
    expiresAt: DateTime.utc(2030, 5, 1, 12),
    url: 'https://api.example.com/api/files/token/photo',
  );

  group('CachedImageUrl', () {
    test('a stored entry is read back as written', () {
      expect(CachedImageUrl.parse(cached.toStoredString()), cached);
    });

    test('a url containing the separator survives the round trip', () {
      final withSeparator = CachedImageUrl(
        photoUpdatedAt: cached.photoUpdatedAt,
        expiresAt: cached.expiresAt,
        url: 'https://example.com/a|b?c=d|e',
      );

      expect(
        CachedImageUrl.parse(withSeparator.toStoredString()),
        withSeparator,
      );
    });

    test('an entry stored before links carried an expiry has none and counts as expired', () {
      final legacy = CachedImageUrl.parse(
        '${cached.photoUpdatedAt.toIso8601String()}|${cached.url}',
      );

      expect(legacy.url, cached.url);
      expect(legacy.photoUpdatedAt, cached.photoUpdatedAt);
      expect(legacy.expiresAt, isNull);
      expect(legacy.isExpired, isTrue);
    });

    test('a link is expired only after its expiry', () {
      final now = DateTime.now();

      expect(
        CachedImageUrl(
          photoUpdatedAt: now,
          expiresAt: now.add(const Duration(minutes: 1)),
          url: cached.url,
        ).isExpired,
        isFalse,
      );
      expect(
        CachedImageUrl(
          photoUpdatedAt: now,
          expiresAt: now.subtract(const Duration(minutes: 1)),
          url: cached.url,
        ).isExpired,
        isTrue,
      );
    });
  });
}
