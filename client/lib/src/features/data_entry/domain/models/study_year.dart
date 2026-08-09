import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_year.freezed.dart';
part 'study_year.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'السنوات الدراسية', allowExtension: true)
class StudyYear extends ViewableWithID
    with _$StudyYear
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: 0)
  final int order;

  @override
  @JsonKey(defaultValue: '')
  final String name;

  @override
  String get id => order.toString();

  @override
  String get typeName => AdvancedQueriesMetadata().studyYear.name;

  StudyYear({required this.order, required this.name});

  factory StudyYear.fromJson(Map<String, Object?> json) =>
      _$StudyYearFromJson(json);

  @override
  Json toJson() => _$StudyYearToJson(this);
}

class StudyYearFields extends _StudyYearFields {
  static T _identity<T>(T value) => value;

  @override
  FieldMetadata<StudyYear> get id => const FieldMetadata<StudyYear>(
    parentType: StudyYear,
    name: 'id',
    label: '=',
    getValue: _identity,
  );

  @override
  List<FieldMetadata<Object>> get allFields => [id, ...super.allFields];

  @override
  Map<String, FieldMetadata<Object>> get allFieldsByName {
    return {
      id.name: id,
      ...super.allFieldsByName,
    };
  }

  StudyYearFields();
}
