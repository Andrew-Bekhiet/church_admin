import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'المتاجر', extensible: true)
class Store extends ViewableWithIDAndImage
    with _$Store
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
  @QueryableField(label: 'تفاصيل العنوان')
  final Address? address;

  @override
  @QueryableField(label: 'العائلة')
  final Family? family;

  @override
  @JsonKey(name: 'adminFamily')
  final String? familyId;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  @QueryableField(label: 'اللون')
  final Color? color;

  @override
  @QueryableField(label: 'أخر تحديث البيانات')
  final LastRecordedByInfo? lastEdit;

  @override
  @LocalDateTimeConverter()
  @QueryableField(label: 'أخر تحديث للصورة')
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @override
  @JsonKey(includeToJson: false)
  final bool userCanEdit;

  @QueryableField(label: 'الموقع')
  Point? get geolocation => address?.geolocation;

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('stores', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().store.name;

  const Store({
    required this.id,
    required this.name,
    this.userCanEdit = false,
    this.address,
    this.family,
    this.familyId,
    this.color,
    this.lastEdit,
    this.photoUpdatedAt,
    this.blurhash,
  });

  factory Store.fromJson(Map<String, Object?> json) => _$StoreFromJson(json);

  @override
  Json toJson() => _$StoreToJson(this);

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

class StoreFields extends _StoreFields with AddressDetailFields {
  @override
  FieldMetadata<Point> get geolocation =>
      address.redirectTo(AddressFields().geolocation, isExpandable: false);

  @override
  List<FieldMetadata<Object>> get allFields =>
      withAddressDetailFields(super.allFields);

  @override
  Map<String, FieldMetadata<Object>> get allFieldsByName =>
      withAddressDetailFieldsByName(super.allFieldsByName);

  StoreFields();
}
