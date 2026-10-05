import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'classes_persons.g.dart';

@Queryable(label: 'فصول المخدوم')
@JsonSerializable()
class ClassesPersons {
  @QueryableField(label: 'بيانات المخدوم')
  final Person person;
  @QueryableField(label: 'الفصل', graphqlName: 'class')
  final Class class$;
  @QueryableField(label: 'personId')
  final String personId;
  @QueryableField(label: 'classId')
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
