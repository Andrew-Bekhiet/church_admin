import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'college.freezed.dart';
part 'college.g.dart';

@freezed
@TypeMetadata()
class College extends ViewableWithID
    with _$College
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$CollegeFields;

  static final QueryableType<College> queryableType = QueryableType<College>(
    name: 'College',
    label: 'الكليات',
    fieldsMetadata: fieldsMetadata,
    fromJson: College.fromJson,
  );

  factory College({
    required String id,
    required String name,
    String? universityId,
  }) = _College;
  College._();

  factory College.fromJson(Map<String, Object?> json) =>
      _$CollegeFromJson(json);

  @override
  String get typeName => College.queryableType.name;
}
