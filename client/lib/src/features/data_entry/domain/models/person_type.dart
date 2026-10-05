import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_type.freezed.dart';
part 'person_type.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'نوع الفرد في العائلة', extensible: true)
class PersonType extends ViewableWithID
    with _$PersonType
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  @QueryableField.self()
  final String id;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @override
  @QueryableField(label: 'الترتيب')
  final int order;

  @override
  @QueryableField(label: 'مسؤول عن العائلة')
  final bool isFamilyAdmin;

  @override
  @QueryableField(label: 'مخفي')
  final bool isHidden;

  @override
  String get typeName => AdvancedQueriesMetadata().personType.name;

  const PersonType({
    required this.id,
    required this.name,
    this.order = 0,
    this.isFamilyAdmin = false,
    this.isHidden = true,
  });

  factory PersonType.fromJson(Map<String, Object?> json) =>
      _$PersonTypeFromJson(json);

  @override
  Json toJson() => _$PersonTypeToJson(this);
}

class PersonTypeFields extends _PersonTypeFields {
  @override
  FieldMetadata<bool> get isHidden => FieldMetadata<bool>(
    getValue: super.isHidden.getValue,
    parentType: super.isHidden.parentType,
    name: super.isHidden.name,
    label: super.isHidden.label,
    operators: super.isHidden.operators,
    isCodeOnly: true,
  );
  PersonTypeFields();
}
