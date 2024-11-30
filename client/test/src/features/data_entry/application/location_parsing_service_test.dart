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
