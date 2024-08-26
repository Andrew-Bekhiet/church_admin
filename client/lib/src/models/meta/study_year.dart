// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_year.freezed.dart';
part 'study_year.g.dart';

@freezed
@TypeMetadata(addFields: {'id': String})
class StudyYear extends ViewableWithID
    with _$StudyYear
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$StudyYearFields;

  static final QueryableType<StudyYear> queryableType =
      QueryableType<StudyYear>(
    name: 'StudyYear',
    label: 'السنوات الدراسية',
    fieldsMetadata: fieldsMetadata,
    fromJson: StudyYear.fromJson,
  );

  factory StudyYear({
    required int order,
    required String name,
  }) = _StudyYear;
  StudyYear._() : super();

  @override
  String get id => order.toString();

  factory StudyYear.fromJson(Map<String, Object?> json) =>
      _$StudyYearFromJson(json);

  @override
  String get typeName => StudyYear.queryableType.name;
}
