import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_by.freezed.dart';
part 'order_by.g.dart';

@freezed
abstract class OrderBy with _$OrderBy {
  @Assert('value is OrderBy || value is Enum_OrderBy')
  factory OrderBy({
    required String fieldName,

    /// [value] is either OrderBy or Enum_OrderBy
    @Default(Enum_OrderBy.ASC)
    @JsonKey(
      fromJson: orderByValueFromJson,
      toJson: orderByValueToJson,
    )
    Object value,
  }) = _OrderBy;
  OrderBy._() : super();

  factory OrderBy.fromJson(Map<String, Object?> json) =>
      _$OrderByFromJson(json);

  Json toSearchJson() => {
        fieldName: value is OrderBy
            ? (value as OrderBy).toSearchJson()
            : (value as Enum_OrderBy).name,
      };
}

Object orderByValueFromJson(Object? data) => data is String
    ? Enum_OrderBy.values.byName(data)
    : OrderBy.fromJson(Json.from(data! as Map));

Object orderByValueToJson(Object value) =>
    value is Enum_OrderBy ? value.name : (value as OrderBy).toJson();
