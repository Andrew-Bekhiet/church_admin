import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'church.freezed.dart';
part 'church.g.dart';

@freezed
@TypeMetadata()
abstract class Church extends ViewableWithID
    with _$Church
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$ChurchFields;

  static final QueryableType<Church> queryableType = QueryableType<Church>(
    name: 'Church',
    label: 'الكنائس',
    fieldsMetadata: fieldsMetadata,
    fromJson: Church.fromJson,
  );

  factory Church({
    required String id,
    required String name,
  }) = _Church;
  Church._();

  factory Church.fromJson(Map<String, Object?> json) => _$ChurchFromJson(json);

  @override
  String get typeName => Church.queryableType.name;
}
