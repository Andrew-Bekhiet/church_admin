import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'classes_persons.g.dart';

@Queryable(classLabel: 'فصول المخدوم', regexIgnoreFields: [])
@JsonSerializable()
class ClassesPersons {
  final Person person;
  @QueryableField(renameTo: 'class')
  final Class class$;
  final String personId;
  final String classId;

  const ClassesPersons({
    required this.person,
    required this.class$,
    required this.personId,
    required this.classId,
  });

  factory ClassesPersons.fromJson(Map<String, dynamic> json) =>
      _$ClassesPersonsFromJson(json);
}
