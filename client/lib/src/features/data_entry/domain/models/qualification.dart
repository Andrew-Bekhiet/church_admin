import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qualification.freezed.dart';
part 'qualification.g.dart';

@freezed
@TypeMetadata()
class Qualification extends ViewableWithID
    with _$Qualification
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$QualificationFields;

  static final QueryableType<Qualification> queryableType =
      QueryableType<Qualification>(
    name: 'Qualification',
    label: 'المؤهلات',
    fieldsMetadata: fieldsMetadata,
    fromJson: Qualification.fromJson,
  );

  factory Qualification({
    required String id,
    required String name,
  }) = _Qualification;
  Qualification._();

  factory Qualification.fromJson(Map<String, Object?> json) =>
      _$QualificationFromJson(json);

  @override
  String get typeName => Qualification.queryableType.name;
}
