import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'persons_hobbies.g.dart';

@Queryable(label: 'هوايات المخدوم')
@JsonSerializable()
class PersonsHobbies {
  @QueryableField(label: 'بيانات المخدوم')
  final Person person;
  @QueryableField(label: 'الهواية')
  final Hobby hobby;
  @QueryableField(label: 'personId')
  final String personId;
  @QueryableField(label: 'hobbyId')
  final String hobbyId;

  const PersonsHobbies({
    required this.person,
    required this.hobby,
    required this.personId,
    required this.hobbyId,
  });

  factory PersonsHobbies.fromJson(Map<String, dynamic> json) =>
      _$PersonsHobbiesFromJson(json);
}
