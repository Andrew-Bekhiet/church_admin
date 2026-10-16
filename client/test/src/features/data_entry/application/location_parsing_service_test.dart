import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  late _MockDio dio;

  setUp(() {
    dio = _MockDio();
    initGlobalProviderContainer([dioProvider.overrideWithValue(dio)]);
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
    ]) {
      test(description, () async {
        await expectLater(
          const LocationParsingService().maybeParseLocationUri(
            Uri.parse(link),
          ),
          completion(location),
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
