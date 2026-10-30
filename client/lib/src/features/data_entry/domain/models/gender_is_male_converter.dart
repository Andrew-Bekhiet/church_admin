import 'package:church_admin/church_admin.dart';
import 'package:json_annotation/json_annotation.dart';

class GenderIsMaleConverter implements JsonConverter<Gender, bool?> {
  const GenderIsMaleConverter();

  @override
  Gender fromJson(bool? json) => Gender.fromIsMale(json);

  @override
  bool? toJson(Gender object) => object.isMale;
}
