import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_by.freezed.dart';
part 'order_by.g.dart';

@freezed
@JsonSerializable()
class OrderBy with _$OrderBy {
  @override
  @JsonKey(
    fromJson: fieldMetadataFromJson,
    toJson: fieldMetadataToJson,
  )
  final FieldMetadata field;

  /// [value] is either OrderBy or Enum_OrderBy
  @override
  @JsonKey(
    fromJson: orderByValueFromJson,
    toJson: orderByValueToJson,
  )
  final OrderByValue value;

  OrderBy({
    required this.field,
    this.value = OrderByValue.asc,
  }) : assert(field.isOrderable, 'Field ${field.name} is not orderable.');

  factory OrderBy.fromJson(Map<String, Object?> json) =>
      _$OrderByFromJson(json);

  Map<String, dynamic> toJson() => _$OrderByToJson(this);

  Json toSearchJson() {
    return field.serializeOrderBy(switch (field) {
      FieldMetadata<ShammasLevel>() || FieldMetadata<StudyYear>() => {
          'order': value.serializedName
        },
      FieldMetadata<ID>() => {'name': value.serializedName},
      _ => value.serializedName,
    });
  }
}

OrderByValue orderByValueFromJson(Object? data) =>
    data is String ? OrderByValue.values.byName(data) : OrderByValue.asc;

Object orderByValueToJson(OrderByValue value) => value.serializedName;

FieldMetadata fieldMetadataFromJson(Object? data) =>
    FieldMetadata.fromJson(Json.from(data! as Map));

Json fieldMetadataToJson(FieldMetadata field) => field.toJson();

enum OrderByValue {
  asc,
  desc;

  String get serializedName => name.toUpperCase();
}
