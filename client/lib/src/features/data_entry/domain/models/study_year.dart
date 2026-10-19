import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_year.freezed.dart';
part 'study_year.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'السنوات الدراسية', keyField: 'order', extensible: true)
class StudyYear extends ViewableWithID
    with _$StudyYear
    implements SerializableExtra {
  @JsonKey(defaultValue: 0)
  @QueryableField(label: 'الترتيب')
  final int order;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @override
  @QueryableField.self()
  String get id => order.toString();

  @override
  String get typeName => AdvancedQueriesMetadata().studyYear.name;

  StudyYear({required this.order, required this.name});

  factory StudyYear.fromJson(Map<String, Object?> json) =>
      _$StudyYearFromJson(json);

  @override
  Json toJson() => _$StudyYearToJson(this);
}

// Extends the generated private base, which only this library can see
// ignore: solid_lints/avoid_multiple_declarations_per_file
class StudyYearFields extends _StudyYearFields {
  static T _identity<T>(T value) => value;

  @override
  FieldMetadata<StudyYear> get id => const FieldMetadata<StudyYear>(
    parentType: StudyYear,
    name: 'id',
    label: '=',
    getValue: _identity,
    isOrderable: false,
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
