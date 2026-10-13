import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';

class NominatimGeocoder implements Geocoder {
  final Dio _dio;

  NominatimGeocoder({required this._dio});

  @override
  Future<Address?> addressAt(Point location) async {
    final response = await _dio.getUri(
      Uri(
        scheme: 'https',
        host: 'nominatim.openstreetmap.org',
        path: 'reverse',
        queryParameters: {
          'lat': '${location.latitude}',
          'lon': '${location.longitude}',
          'accept-language': 'ar-EG',
          'format': 'jsonv2',
          'addressdetails': '1',
        },
      ),
      options: Options(headers: {'User-Agent': 'church_admin'}),
    );

    return switch (response.data) {
      final Map<String, Object?> data
          when response.statusCode == 200 && data['address'] != null =>
        Address.fromNominatimResponse(data),
      _ => null,
    };
  }
}
