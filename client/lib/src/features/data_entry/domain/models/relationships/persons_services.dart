import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'persons_services.g.dart';

@Queryable(classLabel: 'خدمات المخدوم', regexIgnoreFields: [])
@JsonSerializable()
class PersonsServices {
  final Person person;
  final Service service;
  final String personId;
  final String serviceId;

  const PersonsServices({
    required this.person,
    required this.service,
    required this.personId,
    required this.serviceId,
  });

  factory PersonsServices.fromJson(Map<String, dynamic> json) =>
      _$PersonsServicesFromJson(json);
}
