import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'persons_tags.g.dart';

@Queryable(label: 'شارات المخدوم')
@JsonSerializable()
class PersonsTags {
  @QueryableField(label: 'بيانات المخدوم')
  final Person person;
  @QueryableField(label: 'الشارة')
  final Tag tag;
  @QueryableField(label: 'personId')
  final String personId;
  @QueryableField(label: 'tagId')
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
