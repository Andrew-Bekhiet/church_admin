import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';

class NominatimGeocoder implements Geocoder {
  static const String _host = 'nominatim.openstreetmap.org';
  static const String _language = 'ar-EG';

  static final Options _requestOptions = Options(
    headers: {'User-Agent': 'church_admin'},
  );

  final Dio _dio;

  NominatimGeocoder({required this._dio});

  @override
  Future<Address?> addressAt(Point location) async {
    final Response<dynamic> response;
    try {
      response = await _dio.getUri(
        Uri(
          scheme: 'https',
          host: _host,
          path: 'reverse',
          queryParameters: {
            'lat': '${location.latitude}',
            'lon': '${location.longitude}',
            'accept-language': _language,
            'format': 'jsonv2',
            'addressdetails': '1',
          },
        ),
        options: _requestOptions,
      );
    } on DioException {
      return null;
    }

    return switch (response.data) {
      final Map<String, Object?> data when data['address'] != null =>
        Address.fromNominatimResponse(data),
      _ => null,
    };
  }

  @override
  Future<Point?> locationFromStreetAddress({
    required String houseCode,
    required Street street,
    required String countryIsoCode,
  }) async {
    final Response<dynamic> response;
    try {
      response = await _dio.getUri(
        Uri(
          scheme: 'https',
          host: _host,
          path: 'search',
          queryParameters: {
            'street': '$houseCode ${street.name}',
            'countrycodes': countryIsoCode.toLowerCase(),
            'accept-language': _language,
            'format': 'jsonv2',
            'limit': '1',
          },
        ),
        options: _requestOptions,
      );
    } on DioException {
      return null;
    }

    return switch (response.data) {
      [
        {'lat': final String latitude, 'lon': final String longitude},
        ...,
      ] =>
        switch ((double.tryParse(latitude), double.tryParse(longitude))) {
          (final parsedLatitude?, final parsedLongitude?) => Point(
            parsedLatitude,
            parsedLongitude,
          ),
          _ => null,
        },
      _ => null,
    };
  }
}
