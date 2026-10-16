import 'dart:io';

import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';

class LocationParsingService {
  static LocationParsingService get I =>
      globalProviderContainer.read(locationParsingServiceProvider);

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
    Uri(scheme: 'https', host: 'goo.gl', pathSegments: ['maps', _]) => true,
    _ => false,
  };

  Future<Point?> maybeParseLocationUri(Uri uri) async {
    try {
      switch (uri) {
        case Uri(scheme: 'geo', :final path):
          return _maybeParseCoordinates(path);

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
                    !segment.startsWith('@') && !segment.startsWith('data='),
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

          return await maybeParseLocationUri(redirectLocation);
      }

      return null;
    } catch (e) {
      return null;
    }
  }

  Point? _maybeParseCoordinates(String text) => switch (text.split(',')) {
    [final latitude, final longitude, ...] => Point.tryParse(
      latitude,
      longitude,
    ),
    _ => null,
  };
}
