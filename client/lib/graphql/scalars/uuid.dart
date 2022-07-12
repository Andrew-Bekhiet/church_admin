import 'package:uuid/uuid.dart';

String fromDartUuidValueToGraphQLUuid(UuidValue data) => data.toString();
UuidValue fromGraphQLUuidToDartUuidValue(dynamic data) =>
    UuidValue(data, true, ValidationMode.nonStrict);

String? fromDartUuidValueNullableToGraphQLUuidNullable(UuidValue? data) =>
    data?.toString();
UuidValue? fromGraphQLUuidNullableToDartUuidValueNullable(dynamic data) =>
    data == null ? null : UuidValue(data, true, ValidationMode.nonStrict);

List<String>? fromDartListNullableUuidValueToGraphQLListNullableUuid(
        List<UuidValue>? data) =>
    data?.map(fromDartUuidValueToGraphQLUuid).toList();
List<UuidValue>? fromGraphQLListNullableUuidToDartListNullableUuidValue(
        List? data) =>
    data?.map(fromGraphQLUuidToDartUuidValue).toList();
