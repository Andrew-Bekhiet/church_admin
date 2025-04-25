import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'district.freezed.dart';
part 'district.g.dart';

@freezed
@TypeMetadata()
class District extends ViewableWithID
    with _$District
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$DistrictFields;

  static final QueryableType<District> queryableType = QueryableType<District>(
    name: 'District',
    label: 'الحي',
    fieldsMetadata: fieldsMetadata,
    fromJson: District.fromJson,
  );

  factory District({required String id, required String name}) = _District;
  District._();

  factory District.fromJson(Map<String, Object?> json) =>
      _$DistrictFromJson(json);

  @override
  String get typeName => District.queryableType.name;
}
