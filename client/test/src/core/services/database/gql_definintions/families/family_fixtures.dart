import 'dart:convert';
import 'dart:ui';

import 'package:church_admin/church_admin.dart';

import '../../../../../fakes/fake_ash_tables_link.dart';
import '../places/place_fixtures.dart';

/// A [Family] as the Ash server stores it: the model's own JSON, the
/// children and parents as families, the data check with its details as JSON
/// strings, and the sort columns the server derives.
class FamilyRow implements ToJson, ID {
  static const _converter = LocalDateTimeConverter();

  final Family family;

  @override
  String get id => family.id;

  const FamilyRow(this.family);

  @override
  Json toJson() => {
    ...family.toJson(),
    'userCanEdit': family.userCanEdit,
    'status': family.status.name,
    'churchId': family.church?.id,
    'church': ?_typed(family.church?.toJson(), 'Church'),
    'address': ?_address(family.address),
    'dataCheck': ?_dataCheck(family.dataCheck),
    'children': [
      for (final child in family.children ?? const <Family>[])
        FamilyRow(child).toJson(),
    ],
    'parents': [
      for (final parent in family.parents ?? const <Family>[])
        FamilyRow(parent).toJson(),
    ],
    'contacts': [
      for (final (index, contact) in family.contacts.indexed)
        _contact(contact, index),
    ],
    'latestEdit': ?_recorded(family.lastEdit, 'LatestEdit'),
    'latestVisit': ?_recorded(family.lastVisit, 'LatestVisit'),
    'latestFatherVisit': ?_recorded(
      family.lastFatherVisit,
      'LatestFatherVisit',
    ),
    'lastEdit': family.lastEdit?.time.toUtc().toIso8601String(),
    'lastVisit': family.lastVisit?.time.toUtc().toIso8601String(),
    'lastFatherVisit': family.lastFatherVisit?.time.toUtc().toIso8601String(),
    'churchName': family.church?.name,
    'addressAreaName': family.address?.area?.name,
    'addressStreetName': family.address?.street?.name,
    'addressDistrictName': family.address?.district?.name,
    'addressFullAddressText': family.address?.fullAddressText,
    '__typename': 'Family',
  };

  static Json? _typed(Json? object, String typename) =>
      object == null ? null : {...object, '__typename': typename};

  static Json? _address(Address? address) {
    if (address == null) return null;

    return {
      ...address.toJson(),
      'area': _typed(address.area?.toJson(), 'Area'),
      'street': _typed(address.street?.toJson(), 'Street'),
      'district': _typed(address.district?.toJson(), 'District'),
      '__typename': 'Address',
    };
  }

  static Json? _dataCheck(DataCheck? check) => check == null
      ? null
      : {
          ...check.toJson(),
          'id': check.familyId,
          'details': [
            for (final detail in check.checksDetails)
              jsonEncode(detail.toJson()),
          ],
          '__typename': 'DataCheck',
        };

  static Json? _recorded(LastRecordedByInfo? info, String typename) {
    if (info == null) return null;

    return {
      'id': 'recorded-${info.time.microsecondsSinceEpoch}',
      'time': _converter.toJson(info.time),
      'user': info.user == null ? null : FamilyFixtures.userRow(info.user!),
      '__typename': typename,
    };
  }

  static Json _contact(FamilyPhoneContact contact, int index) => {
    'id': contact.contact.id,
    'personId': contact.personId,
    'label': contact.contact.label,
    'phone': contact.contact.phone,
    'isMainPhone': contact.contact.isMainPhone,
    'personType': _typed(contact.role.toJson(), 'PersonType'),
    'personTypeOrder': contact.role.order,
    'createdAt': DateTime.utc(2026, 1, 1, 0, index).toIso8601String(),
    '__typename': 'FamilyContact',
  };
}

abstract final class FamilyFixtures {
  static final DateTime editedAt = DateTime(2026, 3, 4, 5, 6, 7);
  static final DateTime visitedAt = DateTime(2026, 3, 5, 6, 7, 8);
  static final DateTime fatherVisitedAt = DateTime(2026, 3, 6, 7, 8, 9);

  static const User editor = User(uid: 'user-1', name: 'مينا جرجس');

  static const Church church = Church(
    id: 'church-1',
    name: 'كنيسة السيدة العذراء',
  );

  static const PersonType father = PersonType(
    id: 'type-father',
    name: 'الأب',
    order: 1,
    isFamilyAdmin: true,
    isHidden: false,
  );

  static const PersonType mother = PersonType(
    id: 'type-mother',
    name: 'الأم',
    order: 2,
    isFamilyAdmin: true,
    isHidden: false,
  );

  static const PersonType daughter = PersonType(
    id: 'type-daughter',
    name: 'ابنة',
    order: 3,
    isHidden: false,
  );

  static const PhoneContact fatherPhone = PhoneContact(
    id: 'contact-father',
    phone: '+201001111111',
    isMainPhone: true,
  );

  static const PhoneContact motherPhone = PhoneContact(
    id: 'contact-mother',
    phone: '+201002222222',
    label: 'العمل',
  );

  static const PhoneContact daughterPhone = PhoneContact(
    id: 'contact-daughter',
    phone: '+201003333333',
  );

  static const Address address = Address(
    id: 'address-1',
    area: PlaceFixtures.newCairo,
    street: PlaceFixtures.ramses,
    district: District(id: 'district-1', name: 'الزيتون'),
    houseCode: '12',
    storeyNumber: 2,
    apartmentNumber: 5,
    specialLandmark: 'أمام المسجد',
    fullAddressText: '12 ش رمسيس حي الزيتون',
    geolocation: PlaceFixtures.tahrirSquare,
  );

  static final DataCheck completeCheck = DataCheck(
    familyId: 'family-1',
    completenessPercent: 100,
    isComplete: true,
    familyCheck: true,
    addressCheck: true,
    checksDetails: [
      const DataCheckDetail(
        group: DataCheckGroup.family,
        check: DataCheckRule.hasFamilyAdmin,
        passed: true,
      ),
      const DataCheckDetail(
        group: DataCheckGroup.address,
        check: DataCheckRule.hasArea,
        passed: true,
      ),
    ],
  );

  static final Family georgeFamily = Family(
    id: 'family-1',
    name: 'عائلة جرجس',
    color: const Color(0xFF2196F3),
    userCanEdit: true,
    dataCheck: completeCheck,
  );

  static const Family boulosFamily = Family(
    id: 'family-2',
    name: 'عائلة بولس',
    color: Color(0xFFF44336),
  );

  static const Family markFamily = Family(id: 'family-3', name: 'عائلة مرقس');

  static const Family atefFamily = Family(id: 'family-4', name: 'عائلة عاطف');

  static final Family georgeFamilyWithAddress = georgeFamily.copyWith(
    address: address,
    status: MartialStatus.widowed,
    deceasedSpouseName: 'جرجس',
  );

  static final Family georgeFamilyDetails = georgeFamilyWithAddress.copyWith(
    church: church,
    notes: 'تحتاج إلى افتقاد',
    marriageDate: null,
    contacts: [
      const FamilyPhoneContact(contact: motherPhone, role: mother),
      const FamilyPhoneContact(contact: fatherPhone, role: father),
    ],
    lastEdit: LastRecordedByInfo(time: editedAt, user: editor),
    lastVisit: LastRecordedByInfo(time: visitedAt, user: editor),
    lastFatherVisit: LastRecordedByInfo(time: fatherVisitedAt, user: editor),
  );

  static Json userRow(User user) => {
    'id': user.uid,
    'uid': user.uid,
    'name': user.name,
    'email': user.email,
    'photoUpdatedAt': null,
    'blurhash': null,
    '__typename': 'User',
  };

  static FakeAshTable familiesTable({
    Iterable<Family>? rows,
    bool projectsSelections = true,
  }) => FakeAshTable(
    typename: 'Family',
    listRoot: 'families',
    projectsSelections: projectsSelections,
    rows: (rows ?? [georgeFamily, boulosFamily, markFamily]).map(FamilyRow.new),
    commandOnlyKeys: {
      'address',
      'contacts',
      'parents',
      'children',
      'lastVisit',
      'lastFatherVisit',
    },
  );
}
