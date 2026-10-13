import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  const location = Point(30.0444, 31.2357);
  const road = 'شارع الجمهورية';
  const suburb = 'وسط البلد';
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
    houseCode: '12',
    street: const Street(id: 'street-id', name: 'شارع الجمهورية'),
    countryIsoCode: 'EG',
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
      {'lat': '30.0444', 'lon': '31.2357'},
      {'lat': '29.0', 'lon': '30.0'},
    ]);

    expect(await locationOfHouse(), location);
  });

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
}
