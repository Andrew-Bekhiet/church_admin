import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  const location = Point(30.0444, 31.2357);
  const road = 'شارع الجمهورية';
  const suburb = 'وسط البلد';
  const houseCode = '12';
  const houseStreet = Street(id: 'street-id', name: road);
  const countryIsoCode = 'EG';
  const placeName = 'القاهرة';
  final searchResult = {
    'lat': '${location.latitude}',
    'lon': '${location.longitude}',
  };
  final reverseResponse = {
    'lat': '${location.latitude}',
    'lon': '${location.longitude}',
    'address': {'road': road, 'suburb': suburb},
  };

  late MockDio dio;
  late NominatimGeocoder geocoder;

  void answerWith(Object? data, {int statusCode = 200}) {
    when(
      () => dio.getUri<dynamic>(any(), options: any(named: 'options')),
    ).thenAnswer(
      (_) async => Response<dynamic>(
        data: data,
        statusCode: statusCode,
        requestOptions: RequestOptions(),
      ),
    );
  }

  void failWithBadResponse() {
    when(
      () => dio.getUri<dynamic>(any(), options: any(named: 'options')),
    ).thenThrow(
      DioException.badResponse(
        statusCode: 503,
        requestOptions: RequestOptions(),
        response: Response<dynamic>(
          statusCode: 503,
          requestOptions: RequestOptions(),
        ),
      ),
    );
  }

  Future<Point?> locationOfHouse() => geocoder.locationFromStreetAddress(
    houseCode: houseCode,
    street: houseStreet,
    countryIsoCode: countryIsoCode,
  );

  setUpAll(() => registerFallbackValue(Uri()));

  setUp(() {
    dio = MockDio();
    geocoder = NominatimGeocoder(dio: dio);
  });

  test(
    'the road of the reverse geocoding response becomes the street name',
    () async {
      answerWith(reverseResponse);

      final address = await geocoder.addressAt(location);

      expect(address?.street?.name, road);
    },
  );

  test('the suburb of the reverse geocoding response becomes the district '
      'name', () async {
    answerWith(reverseResponse);

    final address = await geocoder.addressAt(location);

    expect(address?.district?.name, suburb);
  });

  test('a failed request yields no address', () async {
    failWithBadResponse();

    expect(await geocoder.addressAt(location), isNull);
  });

  test('a response without a body yields no address', () async {
    answerWith(null);

    expect(await geocoder.addressAt(location), isNull);
  });

  test(
    'a response reporting that nothing was found yields no address',
    () async {
      answerWith({'error': 'Unable to geocode'});

      expect(await geocoder.addressAt(location), isNull);
    },
  );

  test('the first result of a search response becomes the location', () async {
    answerWith([
      searchResult,
      {'lat': '${location.latitude + 1}', 'lon': '${location.longitude + 1}'},
    ]);

    expect(await locationOfHouse(), location);
  });

  test('the search request carries the house, street and country', () async {
    answerWith([searchResult]);

    await locationOfHouse();

    final request =
        verify(
              () => dio.getUri<dynamic>(
                captureAny(),
                options: any(named: 'options'),
              ),
            ).captured.single
            as Uri;
    expect(request.pathSegments, ['search']);
    expect(request.queryParameters['street'], '$houseCode ${houseStreet.name}');
    expect(
      request.queryParameters['countrycodes'],
      countryIsoCode.toLowerCase(),
    );
    expect(request.queryParameters['limit'], '1');
  });

  test(
    'a search result with a non-finite coordinate yields no location',
    () async {
      answerWith([
        {'lat': '${double.nan}', 'lon': double.infinity},
      ]);

      expect(await locationOfHouse(), isNull);
    },
  );

  test('numeric coordinates of a search result become the location', () async {
    answerWith([
      {'lat': location.latitude, 'lon': location.longitude},
    ]);

    expect(await locationOfHouse(), location);
  });

  test(
    'a search result with an unparseable coordinate yields no location',
    () async {
      answerWith([
        {'lat': 'north', 'lon': searchResult['lon']},
      ]);

      expect(await locationOfHouse(), isNull);
    },
  );

  test('a search response without results yields no location', () async {
    answerWith(<Object?>[]);

    expect(await locationOfHouse(), isNull);
  });

  test('a failed search response yields no location', () async {
    failWithBadResponse();

    expect(await locationOfHouse(), isNull);
  });

  test('a search result without coordinates yields no location', () async {
    answerWith([
      {'display_name': 'شارع الجمهورية'},
    ]);

    expect(await locationOfHouse(), isNull);
  });

  test('the first result of a place search becomes the location', () async {
    answerWith([
      searchResult,
      {'lat': '${location.latitude + 1}', 'lon': '${location.longitude + 1}'},
    ]);

    expect(await geocoder.locationOfPlace(placeName), location);
  });

  test('the place search request carries the place name', () async {
    answerWith([searchResult]);

    await geocoder.locationOfPlace(placeName);

    final request =
        verify(
              () => dio.getUri<dynamic>(
                captureAny(),
                options: any(named: 'options'),
              ),
            ).captured.single
            as Uri;
    expect(request.pathSegments, ['search']);
    expect(request.queryParameters['q'], placeName);
    expect(request.queryParameters['limit'], '1');
  });

  test('a failed place search yields no location', () async {
    failWithBadResponse();

    expect(await geocoder.locationOfPlace(placeName), isNull);
  });

  test('requests issued together start at least the minimum spacing apart', () {
    fakeAsync((async) {
      geocoder = NominatimGeocoder(dio: dio);
      final startTimes = <Duration>[];
      when(
        () => dio.getUri<dynamic>(any(), options: any(named: 'options')),
      ).thenAnswer((_) async {
        startTimes.add(async.elapsed);

        return Response<dynamic>(
          data: [searchResult],
          statusCode: 200,
          requestOptions: RequestOptions(),
        );
      });

      unawaited(geocoder.addressAt(location));
      unawaited(locationOfHouse());
      unawaited(locationOfHouse());
      async.elapse(NominatimGeocoder.minimumRequestSpacing * 3);

      expect(startTimes, hasLength(3));
      expect(
        startTimes[1] - startTimes[0],
        greaterThanOrEqualTo(NominatimGeocoder.minimumRequestSpacing),
      );
      expect(
        startTimes[2] - startTimes[1],
        greaterThanOrEqualTo(NominatimGeocoder.minimumRequestSpacing),
      );
    });
  });
}
