import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
@TypeMetadata()
abstract class Store extends ViewableWithIDAndImage
    with _$Store
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$StoreFields;

  static final QueryableType<Store> queryableType = QueryableType<Store>(
    name: 'Store',
    label: 'المتاجر',
    fieldsMetadata: fieldsMetadata,
    fromJson: Store.fromJson,
  );

  factory Store({
    required String id,
    required String name,
    Address? address,
    Family? family,
    @JsonKey(name: 'adminFamily') String? familyId,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    LastRecordedByInfo? lastEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
  }) = _Store;
  Store._() : super();

  factory Store.fromJson(Map<String, Object?> json) => _$StoreFromJson(json);

  Point? get geolocation => address?.geolocation;

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('stores', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => Store.queryableType.name;

  Input_StoresInsertInput toInsertInput() => Input_StoresInsertInput(
        name: name,
        address: address != null
            ? Input_AddressesObjRelInsertInput(data: address!.toInsertInput())
            : null,
        adminFamily: familyId?.toUuid(),
        color: colorToInt(color),
      );

  Input_StoresSetInput toUpdateInput(Store oldStore) => Input_StoresSetInput(
        name: name != oldStore.name ? name : null,
        adminFamily: familyId != oldStore.familyId ? familyId?.toUuid() : null,
        color: color != oldStore.color ? colorToInt(color) : null,
      );
}
