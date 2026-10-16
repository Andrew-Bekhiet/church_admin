import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_geocoder.dart';

void main() {
  const pyramids = Point(29.9776875, 31.1340625);
  const tahrirSquare = Point(30.0444375, 31.2356875);
  const downtownCairo = Point(30.05, 31.24);

  late _MockDio dio;
  late FakeGeocoder geocoder;

  setUp(() {
    dio = _MockDio();
    geocoder = FakeGeocoder();
    initGlobalProviderContainer([
      dioProvider.overrideWithValue(dio),
      geocoderProvider.overrideWithValue(geocoder),
    ]);
  });

  tearDown(resetGlobalProviderContainer);

  group('recognises maps links', () {
    for (final link in [
      'geo:30.0444,31.2357',
      'https://www.google.com/maps/search/30.0444,+31.2357',
      'https://google.com/maps/place/Cairo',
      'https://www.google.com/maps/place/30.0444,31.2357',
      'https://maps.google.com/?q=30.0444,31.2357',
      'https://maps.app.goo.gl/9ivZQ71CKMqRPDtQA',
      'https://goo.gl/maps/sXnse1erRvkA6aV99',
      'https://maps.apple.com/?ll=30.0444,31.2357',
      'https://maps.apple.com/place?coordinate=30.0444,31.2357',
      'https://maps.apple.com/directions?destination=30.0444,31.2357',
      'https://maps.apple.com/frame?center=30.0444,31.2357',
      'https://maps.apple.com/search?center=30.0444,31.2357',
      '7GXHX4HM+3J',
      '26VP+Q7 Cairo, Egypt',
      'https://plus.codes/7GXHX4HM+3J',
    ]) {
      test('$link is a maps link', () {
        expect(
          const LocationParsingService().isSupportedLocationUri(
            Uri.parse(link),
          ),
          isTrue,
        );
      });
    }

    for (final link in [
      'https://example.com/maps/search/30.0444,31.2357',
      'https://www.google.com/search?q=cairo',
      'https://goo.gl/abc',
      'http://maps.google.com/?q=30.0444,31.2357',
      'https://www.apple.com/maps/',
      'some copied text',
    ]) {
      test('$link is not a maps link', () {
        expect(
          const LocationParsingService().isSupportedLocationUri(
            Uri.parse(link),
          ),
          isFalse,
        );
      });
    }
  });

  group('reads the coordinates in', () {
    for (final (:description, :link, :location) in [
      (
        description: 'a geo URI',
        link: 'geo:30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'a Google Maps search link',
        link: 'https://www.google.com/maps/search/-35.2342,+30.67314',
        location: const Point(-35.2342, 30.67314),
      ),
      (
        description: 'a Google Maps search link without www',
        link: 'https://google.com/maps/search/30.0444,+31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'a Google Maps place link',
        link: 'https://www.google.com/maps/place/30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'a Google Maps directions link, as its destination',
        link:
            'https://www.google.com/maps/dir/30.0626,31.2497/30.0444,31.2357/@30.05,31.24,14z/data=!4m2!4m1!3e0',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'a Google Maps directions link ending in a slash',
        link:
            'https://www.google.com/maps/dir/30.0626,31.2497/30.0444,31.2357/',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'a Google Maps directions link from the current location',
        link: 'https://www.google.com/maps/dir//30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'a Google Maps link to a map view',
        link: 'https://www.google.com/maps/@30.0444,31.2357,15z',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'a Google Maps query link',
        link: 'https://www.google.com/maps?q=30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'a Google Maps URLs API search link',
        link: 'https://www.google.com/maps/search/?api=1&query=30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'a maps.google.com query link',
        link: 'https://maps.google.com/?q=30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'an Apple Maps link to a pinned location',
        link: 'https://maps.apple.com/?ll=30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'an Apple Maps query link',
        link: 'https://maps.apple.com/?q=30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'an Apple Maps directions link',
        link: 'https://maps.apple.com/?daddr=30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'an Apple Maps search link',
        link: 'https://maps.apple.com/?sll=30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'an Apple Maps named place link',
        link: 'https://maps.apple.com/?q=Tahrir+Square&ll=30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'an Apple Maps place link',
        link: 'https://maps.apple.com/place?coordinate=30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'an Apple Maps map view link',
        link: 'https://maps.apple.com/frame?center=30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'an Apple Maps directions destination link',
        link: 'https://maps.apple.com/directions?destination=30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'an Apple Maps search area link',
        link: 'https://maps.apple.com/search?center=30.0444,31.2357',
        location: const Point(30.0444, 31.2357),
      ),
      (
        description: 'a pasted full plus code',
        link: '7GXHX4HM+3J',
        location: pyramids,
      ),
      (
        description: 'a plus.codes link',
        link: 'https://plus.codes/7GXHX4HM+3J',
        location: pyramids,
      ),
      (
        description: 'a Google Maps place link to a plus code',
        link: 'https://www.google.com/maps/place/7GXHX4HM%2B3J',
        location: pyramids,
      ),
      (
        description: 'a maps.google.com query link to a plus code',
        link: 'https://maps.google.com/?q=7GXHX4HM%2B3J',
        location: pyramids,
      ),
    ]) {
      test(description, () async {
        await expectLater(
          const LocationParsingService().maybeParseLocationUri(
            Uri.parse(link),
          ),
          completion(_Locations.near(location)),
        );
      });
    }
  });

  group('short links', () {
    test(
      'a short link gives the coordinates of the place it redirects to',
      () async {
        final shortLink = Uri.parse('https://goo.gl/maps/sXnse1erRvkA6aV99');
        dio.replyWithRedirect(
          from: shortLink,
          to: Uri.parse(
            'https://www.google.com/maps/place/Falafel+M.+Sahyoun/@33.8904447,35.5066505,17z/data=!3m1!4b1!4m6!3m5!1s0x151f16e2123697fd:0x8e6626b678863990!8m2!3d33.8904447!4d35.5066505!16s%2Fg%2F1td7wffc?utm_source=mstt_1&coh=164777&entry=tt&shorturl=1',
          ),
        );

        await expectLater(
          const LocationParsingService().maybeParseLocationUri(shortLink),
          completion(const Point(33.8904447, 35.5066505)),
        );
      },
    );

    test(
      'a short link to a place without coordinates gives no location',
      () async {
        final shortLink = Uri.parse(
          'https://maps.app.goo.gl/9ivZQ71CKMqRPDtQA',
        );
        dio.replyWithRedirect(
          from: shortLink,
          to: Uri.parse(
            'https://www.google.com/maps/place/Mollafenari,+Elizi,+Bab-%C4%B1+Ali+Cd.+No:27,+34120+Fatih%2F%C4%B0stanbul,+Turkey/data=!4m2!3m1!1s0x14cab996a54299cb:0x40acb197d028d115?utm_source=mstt_1&entry=gps',
          ),
        );

        await expectLater(
          const LocationParsingService().maybeParseLocationUri(shortLink),
          completion(isNull),
        );
      },
    );
  });

  group('plus codes', () {
    test('a full plus code is its own location', () async {
      await expectLater(
        const LocationParsingService().maybeParsePlusCode('7GXHX4HM+3J'),
        completion(_Locations.near(pyramids)),
      );
    });

    test(
      'a short plus code is the matching location nearest the reference',
      () async {
        await expectLater(
          const LocationParsingService().maybeParsePlusCode(
            '26VP+Q7',
            reference: downtownCairo,
          ),
          completion(_Locations.near(tahrirSquare)),
        );
      },
    );

    test(
      'without a reference, a short plus code is the matching location nearest its locality',
      () async {
        geocoder.locationsByPlaceName['Cairo, Egypt'] = downtownCairo;

        await expectLater(
          const LocationParsingService().maybeParsePlusCode(
            '26VP+Q7 Cairo, Egypt',
          ),
          completion(_Locations.near(tahrirSquare)),
        );
      },
    );

    test('the reference takes precedence over the locality', () async {
      geocoder.locationsByPlaceName['Alexandria'] = const Point(31.2, 29.92);

      await expectLater(
        const LocationParsingService().maybeParsePlusCode(
          '26VP+Q7 Alexandria',
          reference: downtownCairo,
        ),
        completion(_Locations.near(tahrirSquare)),
      );
    });

    test(
      'a short plus code without a reference or a locality has no location',
      () async {
        await expectLater(
          const LocationParsingService().maybeParsePlusCode('26VP+Q7'),
          completion(isNull),
        );
      },
    );

    test(
      'a Google Maps search link to a short plus code is the matching location nearest its locality',
      () async {
        geocoder.locationsByPlaceName['Cairo'] = downtownCairo;

        await expectLater(
          const LocationParsingService().maybeParseLocationUri(
            Uri.parse('https://www.google.com/maps/search/26VP%2BQ7+Cairo'),
          ),
          completion(_Locations.near(tahrirSquare)),
        );
      },
    );

    test(
      'a pasted short plus code is the matching location nearest the reference',
      () async {
        await expectLater(
          const LocationParsingService().maybeParseLocationUri(
            Uri.parse('26VP+Q7'),
            reference: downtownCairo,
          ),
          completion(_Locations.near(tahrirSquare)),
        );
      },
    );
  });
}

class _MockDio extends Mock implements Dio {
  void replyWithRedirect({required Uri from, required Uri to}) {
    when(
      () => getUri(from, options: any(named: 'options')),
    ).thenAnswer(
      (_) async => Response(
        requestOptions: RequestOptions(),
        redirects: [RedirectRecord(302, 'GET', to)],
      ),
    );
  }
}

abstract final class _Locations {
  static Matcher near(Point expected) => isA<Point>()
      .having(
        (location) => location.latitude,
        'latitude',
        closeTo(expected.latitude, 1e-9),
      )
      .having(
        (location) => location.longitude,
        'longitude',
        closeTo(expected.longitude, 1e-9),
      );
}
