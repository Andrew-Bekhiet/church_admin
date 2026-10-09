import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'family.freezed.dart';
part 'family.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'العائلات', extensible: true)
class Family extends ViewableWithIDAndImage
    with _$Family
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
  @JsonKey(defaultValue: MartialStatus.married)
  @QueryableField(label: 'الحالة الاجتماعية')
  final MartialStatus status;

  @override
  @LocalDateTimeConverter()
  @QueryableField(label: 'تاريخ الزواج')
  final DateTime? marriageDate;

  @override
  @QueryableField(label: 'اسم الزوج المتوفي')
  final String? deceasedSpouseName;

  @override
  @QueryableField(label: 'الكنيسة')
  final Church? church;

  @override
  @QueryableField(label: 'ملاحظات')
  final String? notes;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  @QueryableField(label: 'اللون')
  final Color? color;

  @override
  @LocalDateTimeConverter()
  @QueryableField(label: 'أخر تحديث للصورة')
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @override
  @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
  @QueryableField.manyToMany(through: FamiliesFamilies, select: 'child')
  final List<Family>? children;

  @override
  @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
  @QueryableField.manyToMany(through: FamiliesFamilies, select: 'parent')
  final List<Family>? parents;

  @override
  @JsonKey(defaultValue: <FamilyPhoneContact>[])
  final List<FamilyPhoneContact> contacts;

  @override
  @QueryableField(label: 'أخر تحديث البيانات')
  final LastRecordedByInfo? lastEdit;

  @override
  @QueryableField(label: 'أخر افتقاد')
  final LastRecordedByInfo? lastVisit;

  @override
  @QueryableField(label: 'آخر افتقاد للأب الكاهن')
  final LastRecordedByInfo? lastFatherVisit;

  @override
  @JsonKey(includeToJson: false)
  final bool userCanEdit;

  @QueryableField(label: 'الموقع')
  Point? get geolocation => address?.geolocation;

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('families', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().family.name;

  const Family({
    required this.id,
    required this.name,
    this.status = MartialStatus.married,
    this.userCanEdit = false,
    this.contacts = const [],
    this.address,
    this.marriageDate,
    this.deceasedSpouseName,
    this.church,
    this.notes,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    this.children,
    this.parents,
    this.lastEdit,
    this.lastVisit,
    this.lastFatherVisit,
  });

  factory Family.fromJson(Map<String, Object?> json) => _$FamilyFromJson(json);

  @override
  Json toJson() => _$FamilyToJson(this);

  Input_FamiliesInsertInput toInsertInput() => Input_FamiliesInsertInput(
    name: name,
    address: address != null
        ? Input_AddressesObjRelInsertInput(
            data: address!.copyWith(family: null).toInsertInput(),
          )
        : null,
    status: status.name,
    marriageDate:
        status == MartialStatus.widowed ||
            status == MartialStatus.widowedWithoutChildren
        ? null
        : marriageDate,
    deceasedSpouseName:
        status == MartialStatus.widowed ||
            status == MartialStatus.widowedWithoutChildren
        ? deceasedSpouseName
        : null,
    churchId: church?.id.toUuid(),
    notes: notes,
    color: colorToInt(color),
    unclaimedContacts: Input_ContactsArrRelInsertInput(
      data: contacts.map((f) => f.toInsertInput()).toList(),
    ),
    visitHistory: Input_HistoryVisitHistoryArrRelInsertInput(
      data: [
        if (lastVisit != null)
          Input_HistoryVisitHistoryInsertInput(
            isFatherVisit: false,
            table: 'families',
            time: lastVisit!.time,
          ),
        if (lastFatherVisit != null)
          Input_HistoryVisitHistoryInsertInput(
            isFatherVisit: true,
            table: 'families',
            time: lastFatherVisit!.time,
          ),
      ],
    ),
  );

  Input_FamiliesSetInput toUpdateInput(Family oldFamily) {
    Input_FamiliesSetInput result = Input_FamiliesSetInput();

    if (name != oldFamily.name) {
      result = result.copyWith(
        name: name,
      );
    }

    if (notes != oldFamily.notes) {
      result = result.copyWith(
        notes: notes,
      );
    }

    if (church?.id != oldFamily.church?.id) {
      result = result.copyWith(
        churchId: church?.id.toUuid(),
      );
    }

    if (color != oldFamily.color) {
      result = result.copyWith(
        color: colorToInt(color),
      );
    }

    if (marriageDate != oldFamily.marriageDate) {
      result = result.copyWith(
        marriageDate: marriageDate,
      );
    }

    if (deceasedSpouseName != oldFamily.deceasedSpouseName) {
      result = result.copyWith(
        deceasedSpouseName: deceasedSpouseName,
      );
    }

    if (status != oldFamily.status) {
      result = result.copyWith(
        status: status.name,
        marriageDate:
            status == MartialStatus.widowed ||
                status == MartialStatus.widowedWithoutChildren
            ? null
            : marriageDate,
        deceasedSpouseName:
            status == MartialStatus.widowed ||
                status == MartialStatus.widowedWithoutChildren
            ? deceasedSpouseName
            : null,
      );
    }

    return result;
  }
}

class FamilyFields extends _FamilyFields with AddressDetailFields {
  @override
  FieldMetadata<Point> get geolocation =>
      address.redirectTo(AddressFields().geolocation, isExpandable: false);

  @override
  List<FieldMetadata<Object>> get allFields =>
      withAddressDetailFields(super.allFields);

  @override
  Map<String, FieldMetadata<Object>> get allFieldsByName =>
      withAddressDetailFieldsByName(super.allFieldsByName);

  FamilyFields();
}

List<Family>? familyChildrenFromJson(List? data) =>
    data?.map((e) => Family.fromJson(e['child'])).toList();
List<Json>? familyChildrenToJson(List<Family>? hobbies) =>
    hobbies?.map((e) => {'child': e.toJson()}).toList();

List<Family>? familyParentsFromJson(List? data) =>
    data?.map((e) => Family.fromJson(e['parent'])).toList();
List<Json>? familyParentsToJson(List<Family>? hobbies) =>
    hobbies?.map((e) => {'parent': e.toJson()}).toList();
