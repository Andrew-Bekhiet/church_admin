import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'family.freezed.dart';
part 'family.g.dart';

@freezed
@JsonSerializable()
@Queryable(
  classLabel: 'العائلات',
  allowExtension: true,
  labelsOverrides: {
    'status': 'الحالة الاجتماعية',
    'deceasedSpouseName': 'اسم الزوج المتوفي',
    'marriageDate': 'تاريخ الزواج',
    'lastFatherVisit': 'آخر افتقاد للأب الكاهن',
    'children': 'عائلات الأبناء',
    'parents': 'عائلات الآباء',
  },
  ignoreFields: ['blurhash', 'familyAdminsPhones'],
)
class Family extends ViewableWithIDAndImage
    with _$Family
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
  @JsonKey(defaultValue: MartialStatus.married)
  final MartialStatus status;

  @override
  final DateTime? marriageDate;

  @override
  final String? deceasedSpouseName;

  @override
  final Church? church;

  @override
  final String? notes;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;

  @override
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @override
  @JsonKey(fromJson: familyChildrenFromJson, toJson: familyChildrenToJson)
  @QueryableField(
      manyToManyRelType: FamiliesFamilies, manyToManyRelSelectField: 'child')
  final List<Family>? children;

  @override
  @JsonKey(fromJson: familyParentsFromJson, toJson: familyParentsToJson)
  @QueryableField(
      manyToManyRelType: FamiliesFamilies, manyToManyRelSelectField: 'parent')
  final List<Family>? parents;

  @override
  @JsonKey(readValue: _readFamilyAdminsPhones)
  final Json? familyAdminsPhones;

  @override
  final LastRecordedByInfo? lastEdit;

  @override
  final LastRecordedByInfo? lastVisit;

  @override
  final LastRecordedByInfo? lastFatherVisit;

  const Family({
    required this.id,
    required this.name,
    this.address,
    this.status = MartialStatus.married,
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
    this.familyAdminsPhones,
  });

  factory Family.fromJson(Map<String, Object?> json) => _$FamilyFromJson(json);

  @override
  Json toJson() => _$FamilyToJson(this);

  Point? get geolocation => address?.geolocation;

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('families', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().family.name;

  Input_FamiliesInsertInput toInsertInput() => Input_FamiliesInsertInput(
        name: name,
        address: address != null
            ? Input_AddressesObjRelInsertInput(
                data: address!.copyWith(family: null).toInsertInput(),
              )
            : null,
        status: status.name,
        marriageDate: status == MartialStatus.widowed ? null : marriageDate,
        deceasedSpouseName:
            status == MartialStatus.widowed ? deceasedSpouseName : null,
        churchId: church?.id.toUuid(),
        notes: notes,
        color: colorToInt(color),
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
        marriageDate: status == MartialStatus.widowed ? null : marriageDate,
        deceasedSpouseName:
            status == MartialStatus.widowed ? deceasedSpouseName : null,
      );
    }

    return result;
  }
}

class FamilyFields extends _FamilyFields {
  FamilyFields();

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

List<Family>? familyChildrenFromJson(List? data) =>
    data?.map((e) => Family.fromJson(e['child'])).toList();
List<Json>? familyChildrenToJson(List<Family>? hobbies) =>
    hobbies?.map((e) => {'child': e.toJson()}).toList();

List<Family>? familyParentsFromJson(List? data) =>
    data?.map((e) => Family.fromJson(e['parent'])).toList();
List<Json>? familyParentsToJson(List<Family>? hobbies) =>
    hobbies?.map((e) => {'parent': e.toJson()}).toList();

Json? _readFamilyAdminsPhones(Map json, String key) =>
    json[key]?['aggregatedPhones'];
