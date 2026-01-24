import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'المتاجر', allowExtension: true)
class Store extends ViewableWithIDAndImage
    with _$Store
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String id;

  @override
  @JsonKey(defaultValue: '')
  final String name;

  @override
  final Address? address;

  @override
  final Family? family;

  @override
  @JsonKey(name: 'adminFamily')
  @QueryableField(renameTo: 'adminFamily')
  final String? familyId;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;

  @override
  final LastRecordedByInfo? lastEdit;

  @override
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @override
  @JsonKey(includeToJson: false)
  final bool userCanEdit;

  const Store({
    required this.id,
    required this.name,
    this.address,
    this.family,
    this.familyId,
    this.color,
    this.lastEdit,
    this.photoUpdatedAt,
    this.blurhash,
    this.userCanEdit = false,
  });

  factory Store.fromJson(Map<String, Object?> json) => _$StoreFromJson(json);

  @override
  Json toJson() => _$StoreToJson(this);

  Point? get geolocation => address?.geolocation;

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('stores', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().store.name;

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

class StoreFields extends _StoreFields {
  StoreFields();

  @override
  FieldMetadata<Point> get geolocation =>
      address.redirectTo(AddressFields().geolocation, isExpandable: false);

  FieldMetadata<Area> get area =>
      address.redirectTo(AddressFields().area, isExpandable: false);

  FieldMetadata<Street> get street =>
      address.redirectTo(AddressFields().street, isExpandable: false);

  FieldMetadata<District> get district =>
      address.redirectTo(AddressFields().district, isExpandable: false);

  @override
  List<FieldMetadata<Object>> get allFields => [
    ...super.allFields,
    area,
    street,
    district,
  ];

  @override
  Map<String, FieldMetadata<Object>> get allFieldsByName {
    return {
      ...super.allFieldsByName,
      area.name: area,
      street.name: street,
      district.name: district,
    };
  }
}
