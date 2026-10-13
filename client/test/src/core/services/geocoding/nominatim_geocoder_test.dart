import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  const location = Point(30.0444, 31.2357);

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

  setUpAll(() => registerFallbackValue(Uri()));

  setUp(() {
    dio = MockDio();
    geocoder = NominatimGeocoder(dio: dio);
  });

  test(
    'the road of the reverse geocoding response becomes the street name',
    () async {
      answerWith({
        'lat': '30.0444',
        'lon': '31.2357',
        'address': {'road': 'شارع الجمهورية', 'suburb': 'وسط البلد'},
      });

      final address = await geocoder.addressAt(location);

      expect(address?.street?.name, 'شارع الجمهورية');
    },
  );

  test('the suburb of the reverse geocoding response becomes the district '
      'name', () async {
    answerWith({
      'lat': '30.0444',
      'lon': '31.2357',
      'address': {'road': 'شارع الجمهورية', 'suburb': 'وسط البلد'},
    });

    final address = await geocoder.addressAt(location);

    expect(address?.district?.name, 'وسط البلد');
  });

  test('a failed response yields no address', () async {
    answerWith({'address': <String, Object?>{}}, statusCode: 500);

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
}
