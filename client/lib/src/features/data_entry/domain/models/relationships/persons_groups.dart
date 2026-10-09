import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'persons_groups.g.dart';

@Queryable(label: 'مجموعات المخدوم')
@JsonSerializable()
class PersonsGroups {
  @QueryableField(label: 'بيانات المخدوم')
  final Person person;
  @QueryableField(label: 'المجموعة')
  final Group group;
  @QueryableField(label: 'personId')
  final String personId;
  @QueryableField(label: 'groupId')
  final String groupId;

  const PersonsGroups({
    required this.person,
    required this.group,
    required this.personId,
    required this.groupId,
  });

  factory PersonsGroups.fromJson(Map<String, dynamic> json) =>
      _$PersonsGroupsFromJson(json);
}
