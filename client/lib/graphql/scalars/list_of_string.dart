import 'dart:convert';

typedef ListOfString = List<String>;

ListOfString fromGraphQL$textToDartListOfString(String data) =>
    jsonDecode(data);
String fromDartListOfStringToGraphQL$text(ListOfString data) =>
    '{${data.map((s) => "'${jsonEncode(s).replaceAll('"', "")}'").join(',')}}';

ListOfString? fromGraphQL$textNullableToDartListOfStringNullable(
        String? data) =>
    data == null ? null : fromGraphQL$textToDartListOfString(data);
String? fromDartListOfStringNullableToGraphQL$textNullable(
        ListOfString? data) =>
    data == null ? null : fromDartListOfStringToGraphQL$text(data);

List<ListOfString>? fromGraphQLListNullable$textToDartListNullableListOfString(
        List<String>? data) =>
    data?.map(fromGraphQL$textToDartListOfString).toList();
List<String>? fromDartListNullableListOfStringToGraphQLListNullable$text(
        List<ListOfString>? data) =>
    data?.map(fromDartListOfStringToGraphQL$text).toList();
