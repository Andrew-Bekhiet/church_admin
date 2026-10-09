import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'persons_groups.g.dart';

@Queryable(classLabel: 'مجموعات المخدوم', regexIgnoreFields: [])
@JsonSerializable()
class PersonsGroups {
  final Person person;
  final Group group;
  final String personId;
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
