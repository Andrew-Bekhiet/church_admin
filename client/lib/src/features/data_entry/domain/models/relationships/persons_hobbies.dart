import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'persons_hobbies.g.dart';

@Queryable(classLabel: 'هوايات المخدوم', regexIgnoreFields: [])
@JsonSerializable()
class PersonsHobbies {
  final Person person;
  final Hobby hobby;
  final String personId;
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
