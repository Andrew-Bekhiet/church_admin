import 'package:church_admin/church_admin.dart';

enum LocationLinkInputKind {
  url,
  plusCode,
  shortPlusCode,
  shortLink,
  geo,
  other;

  static final RegExp _wordSeparators = RegExp(r'[\s,،]+');

  static LocationLinkInputKind of(String input) =>
      switch (Uri.tryParse(input.trim())) {
        Uri(scheme: 'geo') => geo,
        Uri(host: 'maps.app.goo.gl') ||
        Uri(host: 'goo.gl', pathSegments: ['maps', ...]) => shortLink,
        Uri(scheme: 'http' || 'https') => url,
        _ => _plusCodeKindIn(input),
      };

  static LocationLinkInputKind _plusCodeKindIn(String input) => switch (input
      .split(_wordSeparators)
      .map(PlusCode.tryParse)
      .nonNulls
      .firstOrNull) {
    FullPlusCode() => plusCode,
    ShortPlusCode() => shortPlusCode,
    null => other,
  };
}
