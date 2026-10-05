import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'district.freezed.dart';
part 'district.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'الأحياء السكنية')
class District extends ViewableWithID
    with _$District
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
  String get typeName => AdvancedQueriesMetadata().district.name;

  const District({
    required this.id,
    required this.name,
  });

  factory District.fromJson(Map<String, Object?> json) =>
      _$DistrictFromJson(json);

  @override
  Json toJson() => _$DistrictToJson(this);
}
