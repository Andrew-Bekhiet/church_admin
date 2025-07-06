import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'persons_tags.g.dart';

@Queryable(classLabel: 'شارات المخدوم', regexIgnoreFields: [])
@JsonSerializable()
class PersonsTags {
  final Person person;
  final Tag tag;
  final String personId;
  final String tagId;

  const PersonsTags({
    required this.person,
    required this.tag,
    required this.personId,
    required this.tagId,
  });

  factory PersonsTags.fromJson(Map<String, dynamic> json) =>
      _$PersonsTagsFromJson(json);
}
