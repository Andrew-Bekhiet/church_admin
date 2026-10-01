import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'location_parsing_service_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Dio>()])
void main() {
  tearDown(resetGlobalProviderContainer);

  group(
    'LocationParsingService',
    () {
      test(
        'Google Maps and geo links are recognised as location links',
        () {
          const unit = LocationParsingService();

          for (final link in [
            'geo:30.1,31.2',
            'https://www.google.com/maps/search/30.1,+31.2',
            'https://google.com/maps/place/Cairo',
            'https://maps.google.com/?q=30.1,31.2',
            'https://maps.app.goo.gl/jkBfnFhsrs4q9p5p7',
            'https://goo.gl/maps/jkBfnFhsrs4q9p5p7',
          ]) {
            expect(
              unit.isSupportedLocationUri(Uri.parse(link)),
              isTrue,
              reason: link,
            );
          }
        },
      );

      test(
        'links that are not maps links are not recognised as location links',
        () {
          const unit = LocationParsingService();

          for (final link in [
            'https://example.com/maps/search/30.1,31.2',
            'https://www.google.com/search?q=cairo',
            'https://goo.gl/abc',
            'http://maps.google.com/?q=30.1,31.2',
            'some copied text',
          ]) {
            expect(
              unit.isSupportedLocationUri(Uri.parse(link)),
              isFalse,
              reason: link,
            );
          }
        },
      );

      test(
        'geo URIs',
        () async {
          const unit = LocationParsingService();

          expect(
            unit.maybeParseLocationUri(Uri.parse('geo:0,0')),
            completion(const Point(0, 0)),
          );
          expect(
            unit.maybeParseLocationUri(Uri.parse('geo:54,34')),
            completion(const Point(54, 34)),
          );
        },
      );

      test(
        'https://google.com/maps/search URIs',
        () async {
          const unit = LocationParsingService();

          expect(
            unit.maybeParseLocationUri(
              Uri.parse(
                'https://www.google.com/maps/search/-35.2342,+30.67314',
              ),
            ),
            completion(const Point(-35.2342, 30.67314)),
          );
          expect(
            unit.maybeParseLocationUri(
              Uri.parse('https://google.com/maps/search/35.2342,+30.67314'),
            ),
            completion(const Point(35.2342, 30.67314)),
          );
        },
      );

      test(
        'https://maps.google.com/ URIs',
        () async {
          const unit = LocationParsingService();

          expect(
            unit.maybeParseLocationUri(
              Uri.parse(
                'https://maps.google.com/?q=-35.2342,+30.67314',
              ),
            ),
            completion(const Point(-35.2342, 30.67314)),
          );
        },
      );

      test(
        'Shortend GMaps URIs',
        () async {
          final mockDio = MockDio();
          initGlobalProviderContainer([dioProvider.overrideWithValue(mockDio)]);

          const unit = LocationParsingService();

          when(
            mockDio.getUri(
              any,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(),
              redirects: [
                RedirectRecord(
                  301,
                  'GET',
                  Uri.parse('https://maps.google.com/?q=-35.2342,+30.67314'),
                ),
              ],
            ),
          );

          await expectLater(
            unit.maybeParseLocationUri(
              Uri.parse(
                'https://goo.gl/maps/jkBfnFhsrs4q9p5p7',
              ),
            ),
            completion(const Point(-35.2342, 30.67314)),
          );

          when(
            mockDio.getUri(
              any,
              options: anyNamed('options'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(),
              redirects: [
                RedirectRecord(
                  301,
                  'GET',
                  Uri.parse(
                    'https://www.google.com/maps/search/-35.2342,+30.67314',
                  ),
                ),
              ],
            ),
          );

          await expectLater(
            unit.maybeParseLocationUri(
              Uri.parse(
                'https://goo.gl/maps/jkBfnFhsrs4q9p5p7',
              ),
            ),
            completion(const Point(-35.2342, 30.67314)),
          );
        },
      );
    },
  );
}
