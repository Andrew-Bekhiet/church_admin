import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shammas_level.freezed.dart';
part 'shammas_level.g.dart';

@freezed
@TypeMetadata()
class ShammasLevel extends ViewableWithID
    with _$ShammasLevel
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$ShammasLevelFields;

  static final QueryableType<ShammasLevel> queryableType =
      QueryableType<ShammasLevel>(
    name: 'ShammasLevel',
    label: 'رتب الشموسية',
    fieldsMetadata: fieldsMetadata,
    fromJson: ShammasLevel.fromJson,
  );

  factory ShammasLevel({
    required int order,
    required String name,
    required String id,
  }) = _ShammasLevel;
  ShammasLevel._() : super();

  factory ShammasLevel.fromJson(Map<String, Object?> json) =>
      _$ShammasLevelFromJson(json);

  @override
  String get typeName => ShammasLevel.queryableType.name;
}
