import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_by.freezed.dart';
part 'order_by.g.dart';

@freezed
class OrderBy with _$OrderBy {
  const factory OrderBy({
    required String field,
    @Default(Enum_OrderBy.ASC) Enum_OrderBy direction,
  }) = _OrderBy;
  const OrderBy._() : super();

  factory OrderBy.fromJson(Map<String, Object?> json) =>
      _$OrderByFromJson(json);

  Json toSearchJson() => {field: direction.name};
}
