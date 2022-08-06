Json fromDartJsonToGraphQLGeography(Json data) =>
    fromDartJsonToGraphQLJsonb(data);
Json fromGraphQLGeographyToDartJson(dynamic data) =>
    fromGraphQLJsonbToDartJson(data);

Json? fromDartJsonNullableToGraphQLGeographyNullable(Json? data) =>
    data != null ? fromDartJsonToGraphQLJsonb(data) : null;
Json? fromGraphQLGeographyNullableToDartJsonNullable(dynamic data) =>
    data != null ? fromGraphQLJsonbToDartJson(data) : null;

Json fromDartJsonToGraphQLGeometry(Json data) =>
    fromDartJsonToGraphQLJsonb(data);
Json fromGraphQLGeometryToDartJson(dynamic data) =>
    fromGraphQLJsonbToDartJson(data);

Json? fromDartJsonNullableToGraphQLGeometryNullable(Json? data) =>
    data != null ? fromDartJsonToGraphQLJsonb(data) : null;
Json? fromGraphQLGeometryNullableToDartJsonNullable(dynamic data) =>
    data != null ? fromGraphQLJsonbToDartJson(data) : null;

Json fromDartJsonToGraphQLJsonb(Json data) => data;
Json fromGraphQLJsonbToDartJson(dynamic data) =>
    data is Json ? data : (data as Map).cast<String, dynamic>();

Json? fromDartJsonNullableToGraphQLJsonbNullable(Json? data) =>
    data != null ? fromDartJsonToGraphQLJsonb(data) : null;
Json? fromGraphQLJsonbNullableToDartJsonNullable(dynamic data) =>
    data != null ? fromGraphQLJsonbToDartJson(data) : null;

List<Json>? fromDartListNullableJsonToGraphQLListNullableJsonb(
        List<Json>? data) =>
    data;
List<Json>? fromGraphQLListNullableJsonbToDartListNullableJson(
        List<Map>? data) =>
    data?.map((j) => j.cast<String, dynamic>()).toList();

List<Json>? fromGraphQLListNullableGeographyToDartListNullableJson(
        List<Map>? data) =>
    fromGraphQLListNullableJsonbToDartListNullableJson(data);
List<Json>? fromDartListNullableJsonToGraphQLListNullableGeography(
        List<Json>? data) =>
    fromDartListNullableJsonToGraphQLListNullableJsonb(data);

List<Json>? fromDartListNullableJsonToGraphQLListNullableGeometry(
        List<Json>? data) =>
    fromDartListNullableJsonToGraphQLListNullableJsonb(data);
List<Json>? fromGraphQLListNullableGeometryToDartListNullableJson(
        List<Map>? data) =>
    fromGraphQLListNullableJsonbToDartListNullableJson(data);

typedef Json = Map<String, dynamic>;
