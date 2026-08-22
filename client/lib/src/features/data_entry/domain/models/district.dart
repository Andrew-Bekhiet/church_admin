import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'district.freezed.dart';
part 'district.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'الأحياء السكنية')
class District extends ViewableWithID
    with _$District
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
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
