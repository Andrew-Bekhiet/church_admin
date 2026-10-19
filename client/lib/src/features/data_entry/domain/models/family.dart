import 'package:church_admin/church_admin.dart';
import 'package:church_admin_annotations/church_admin_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'family.freezed.dart';
part 'family.g.dart';

@freezed
@JsonSerializable()
@Queryable(label: 'العائلات', extensible: true)
class Family extends ViewableWithIDAndImage
    with _$Family
    implements SerializableExtra, HasDataCheck {
  @override
  @JsonKey(defaultValue: '')
  @QueryableField.self()
  final String id;

  @override
  @JsonKey(defaultValue: '')
  @QueryableField(label: 'الاسم')
  final String name;

  @QueryableField(label: 'تفاصيل العنوان', orderable: false)
  final Address? address;

  @JsonKey(defaultValue: MartialStatus.married)
  @QueryableField(label: 'الحالة الاجتماعية')
  final MartialStatus status;

  @LocalDateTimeConverter()
  @QueryableField(label: 'تاريخ الزواج', dateOnly: true)
  final DateTime? marriageDate;

  @QueryableField(label: 'اسم الزوج المتوفي')
  final String? deceasedSpouseName;

  @QueryableField(label: 'الكنيسة')
  final Church? church;

  @QueryableField(label: 'ملاحظات')
  final String? notes;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  @QueryableField(label: 'اللون')
  final Color? color;

  @LocalDateTimeConverter()
  @QueryableField(label: 'أخر تحديث للصورة')
  final DateTime? photoUpdatedAt;

  @override
  final String? blurhash;

  @QueryableField(label: 'الأبناء', orderable: false)
  final List<Family>? children;

  @QueryableField(label: 'الآباء', orderable: false)
  final List<Family>? parents;

  @JsonKey(defaultValue: <FamilyPhoneContact>[])
  final List<FamilyPhoneContact> contacts;

  @JsonKey(name: 'latestEdit')
  @QueryableField(label: 'أخر تحديث البيانات')
  final LastRecordedByInfo? lastEdit;

  @JsonKey(name: 'latestVisit')
  @QueryableField(label: 'أخر افتقاد')
  final LastRecordedByInfo? lastVisit;

  @JsonKey(name: 'latestFatherVisit')
  @QueryableField(label: 'آخر افتقاد للأب الكاهن')
  final LastRecordedByInfo? lastFatherVisit;

  @override
  @QueryableField(label: 'اكتمال البيانات', orderable: false)
  final DataCheck? dataCheck;

  @override
  @JsonKey(includeToJson: false)
  final bool userCanEdit;

  @QueryableField(label: 'الموقع')
  Point? get geolocation => address?.geolocation;

  @override
  ObjectImageInfo get imageInfo => ObjectPhotoInfo(
    Enum_PhotoSubject.FAMILIES,
    id,
    lastUpdatedTime: photoUpdatedAt,
  );

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
    this.dataCheck,
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

  Json toCommandInput() => {
    'name': name,
    'notes': notes,
    'color': colorToInt(color),
    'status': status.name,
    'deceasedSpouseName': deceasedSpouseName,
    'marriageDate': switch (marriageDate) {
      final date? => dateToString(date),
      null => null,
    },
    'churchId': church?.id,
    if (address case final address?)
      'address': address.toAddressInput().toJson(),
    'contacts': [
      for (final contact in contacts)
        if (contact.personId == null) contact.toFamilyContactInput().toJson(),
    ],
    if (parents case final parents?)
      'parents': [for (final parent in parents) parent.id],
    if (children case final children?)
      'children': [for (final child in children) child.id],
    if (lastVisit case LastRecordedByInfo(:final time))
      'lastVisit': tstzToString(time),
    if (lastFatherVisit case LastRecordedByInfo(:final time))
      'lastFatherVisit': tstzToString(time),
  };
}

// Extends the generated private base, which only this library can see
// ignore: solid_lints/avoid_multiple_declarations_per_file
class FamilyFields extends _FamilyFields with AddressDetailFields {
  @override
  FieldMetadata<Point> get geolocation => address.redirectTo(
    AddressFields().geolocation,
    isExpandable: false,
    isOrderable: false,
  );

  @override
  List<FieldMetadata<Object>> get allFields =>
      withAddressDetailFields(super.allFields);

  @override
  Map<String, FieldMetadata<Object>> get allFieldsByName =>
      withAddressDetailFieldsByName(super.allFieldsByName);

  FamilyFields();
}
