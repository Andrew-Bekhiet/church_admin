import 'dart:io';

import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';

class LocationParsingService {
  static LocationParsingService get I =>
      globalProviderContainer.read(locationParsingServiceProvider);

  static final RegExp _plusCodePattern = RegExp(
    r'(?<![0-9A-Z])[23456789CFGHJMPQRVWX0]{2,8}\+[23456789CFGHJMPQRVWX]*(?![0-9A-Z])',
    caseSensitive: false,
  );
  static final RegExp _localityPadding = RegExp(r'^[\s,،]+|[\s,،]+$');

  static const _appleMapsLocationParametersByPrecision = [
    'll',
    'coordinate',
    'destination',
    'daddr',
    'center',
    'sll',
    'q',
  ];

  const LocationParsingService();

  bool isSupportedLocationUri(Uri uri) => switch (uri) {
    Uri(scheme: 'geo') ||
    Uri(
      scheme: 'https',
      host: 'www.google.com' || 'google.com',
      pathSegments: ['maps', ...],
    ) ||
    Uri(scheme: 'https', host: 'maps.google.com' || 'maps.apple.com') ||
    Uri(scheme: 'https', host: 'maps.app.goo.gl', pathSegments: [_]) ||
    Uri(scheme: 'https', host: 'goo.gl', pathSegments: ['maps', _]) ||
    Uri(scheme: 'https', host: 'plus.codes') => true,
    Uri(scheme: '', :final path) => _plusCodePattern.hasMatch(
      Uri.decodeFull(path),
    ),
    _ => false,
  };

  Future<Point?> maybeParseLocationUri(Uri uri, {Point? reference}) async {
    try {
      switch (uri) {
        case Uri(scheme: 'geo', :final path):
          return _maybeParseCoordinates(path);

        case Uri(scheme: '', :final path):
          return await maybeParsePlusCode(
            Uri.decodeFull(path),
            reference: reference,
          );

        case Uri(scheme: 'https', host: 'plus.codes', :final path):
          return await maybeParsePlusCode(
            Uri.decodeComponent(path),
            reference: reference,
          );

        case Uri(
              scheme: 'https',
              host: 'www.google.com' || 'google.com',
              pathSegments: ['maps', 'search' || 'place', final location, ...],
            )
            when _plusCodePattern.hasMatch(location):
          return await maybeParsePlusCode(location, reference: reference);

        case Uri(
                  scheme: 'https',
                  host: 'www.google.com' || 'google.com',
                  pathSegments: ['maps', ...],
                ) ||
                Uri(scheme: 'https', host: 'maps.google.com')
            when _maybePlusCodeQuery(uri) != null:
          return await maybeParsePlusCode(
            _maybePlusCodeQuery(uri) ?? '',
            reference: reference,
          );

        case Uri(
                  scheme: 'https',
                  host: 'www.google.com' || 'google.com',
                  pathSegments: ['maps', ...],
                  queryParameters: {'q': final String location},
                ) ||
                Uri(
                  scheme: 'https',
                  host: 'www.google.com' || 'google.com',
                  pathSegments: ['maps', ...],
                  queryParameters: {'query': final String location},
                )
            when _maybeParseCoordinates(location) != null:
          return _maybeParseCoordinates(location);

        case Uri(
          scheme: 'https',
          host: 'www.google.com' || 'google.com',
          pathSegments: ['maps', 'dir', ...final segments],
        ):
          return segments
              .where(
                (segment) =>
                    segment.isNotEmpty &&
                    !segment.startsWith('@') &&
                    !segment.startsWith('data='),
              )
              .map(_maybeParseCoordinates)
              .lastOrNull;

        case Uri(
              scheme: 'https',
              host: 'www.google.com' || 'google.com',
              pathSegments: [
                'maps',
                'search' || 'place',
                final String location,
                ...,
              ],
            )
            when _maybeParseCoordinates(location) != null:
          return _maybeParseCoordinates(location);

        case Uri(
          scheme: 'https',
          host: 'www.google.com' || 'google.com',
          pathSegments: ['maps', ...final segments],
        ):
          return segments
              .where((segment) => segment.startsWith('@'))
              .map((camera) => _maybeParseCoordinates(camera.substring(1)))
              .firstOrNull;

        case Uri(
              scheme: 'https',
              host: 'maps.google.com',
              queryParameters: {'q': final String location},
            )
            when _maybeParseCoordinates(location) != null:
          return _maybeParseCoordinates(location);

        case Uri(
          scheme: 'https',
          host: 'maps.apple.com',
          :final queryParameters,
        ):
          return _appleMapsLocationParametersByPrecision
              .map((name) => queryParameters[name])
              .nonNulls
              .map(_maybeParseCoordinates)
              .nonNulls
              .firstOrNull;

        case Uri(scheme: 'https', host: 'maps.app.goo.gl', pathSegments: [_]) ||
            Uri(scheme: 'https', host: 'goo.gl', pathSegments: ['maps', _]):
          Uri? redirectLocation;

          try {
            final redirectResponse = await globalProviderContainer
                .read(dioProvider)
                .getUri(
                  uri,
                  options: Options(followRedirects: true, maxRedirects: 1),
                );

            redirectLocation =
                redirectResponse.redirects.singleOrNull?.location;
          } on DioException catch (e) {
            if (e.error is! RedirectException) rethrow;

            redirectLocation = (e.error! as RedirectException)
                .redirects
                .singleOrNull
                ?.location;
          } on RedirectException catch (e) {
            redirectLocation = e.redirects.singleOrNull?.location;
          }

          if (redirectLocation == null) return null;

          return await maybeParseLocationUri(
            redirectLocation,
            reference: reference,
          );
      }

      return null;
    } catch (e) {
      return null;
    }
  }

  Future<Point?> maybeParsePlusCode(String text, {Point? reference}) async {
    final codeMatch = _plusCodePattern.firstMatch(text);
    if (codeMatch == null) return null;

    final locality = text
        .replaceRange(codeMatch.start, codeMatch.end, ' ')
        .replaceAll('+', ' ')
        .replaceAll(_localityPadding, ' ')
        .trim();

    switch (PlusCode.tryParse(codeMatch[0] ?? '')) {
      case FullPlusCode(:final center):
        return center;

      case final ShortPlusCode code:
        final nearby =
            reference ??
            (locality.isEmpty
                ? null
                : await globalProviderContainer
                      .read(geocoderProvider)
                      .locationOfPlace(locality));

        return nearby == null ? null : code.locationNearest(nearby);

      case null:
        return null;
    }
  }

  String? _maybePlusCodeQuery(Uri uri) =>
      switch (Uri.splitQueryString(uri.query.replaceAll('+', '%2B'))) {
        {'q': final query} ||
        {'query': final query} when _plusCodePattern.hasMatch(query) => query,
        _ => null,
      };

  Point? _maybeParseCoordinates(String text) => switch (text.split(',')) {
    [final latitude, final longitude, ...] => Point.tryParse(
      latitude,
      longitude,
    ),
    _ => null,
  };
}
