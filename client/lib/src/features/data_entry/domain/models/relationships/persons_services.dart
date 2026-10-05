import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'persons_services.g.dart';

@Queryable(label: 'خدمات المخدوم')
@JsonSerializable()
class PersonsServices {
  @QueryableField(label: 'بيانات المخدوم')
  final Person person;
  @QueryableField(label: 'الخدمة')
  final Service service;
  @QueryableField(label: 'personId')
  final String personId;
  @QueryableField(label: 'serviceId')
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
