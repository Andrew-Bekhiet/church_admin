import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:uuid/uuid.dart';

class PhoneContactsFormController extends AdvancedFormController
    implements PersonFormSection {
  static bool _always() => true;

  final bool familyOnly;

  final PhoneNumberService _phones;
  final String Function() _newKey;
  final bool Function() _canHaveFamilyNumbers;
  final Map<String, PhoneContactRowFormController> _familyRowsById = {};

  Set<String> _followedFamilyKeys;

  late final AdvancedFieldController<
    List<PhoneContactRowFormController>,
    PhoneContactError
  >
  rows;

  List<PhoneContact> get ownContacts => [
    for (final row in rows.fieldValue)
      if (row.e164 case final phone?)
        if (row.label.fieldValue case FreePhoneContactLabel(:final text))
          PhoneContact(
            id: row.key,
            phone: phone,
            label: (text?.trim().isEmpty ?? true) ? null : text?.trim(),
            isMainPhone: row.isMainPhone.fieldValue,
          ),
  ];

  List<FamilyPhoneContact> get familyContacts => [
    for (final row in rows.fieldValue)
      if (row.e164 case final phone?)
        if (row.label.fieldValue case RolePhoneContactLabel(:final role))
          switch (row.savedRelative) {
            final saved? when saved.role.id == role.id => saved.copyWith(
              contact: saved.contact.copyWith(phone: phone),
            ),
            _ => FamilyPhoneContact(
              contact: PhoneContact(id: row.key, phone: phone),
              role: role,
            ),
          },
  ];

  PhoneContactsFormController({
    required List<PhoneContact> own,
    required List<FamilyPhoneContact> family,
    this.familyOnly = false,
    PhoneNumberService phones = const PhoneNumberService(),
    bool Function()? canHaveFamilyNumbers,
    String Function()? newKey,
  }) : _phones = phones,
       _newKey = newKey ?? const Uuid().v4,
       _canHaveFamilyNumbers = canHaveFamilyNumbers ?? _always,
       _followedFamilyKeys = {for (final f in family) f.contact.id},
       super(debugName: 'phones', validateAll: true) {
    rows = AdvancedFieldController(
      initialValue: [
        for (final contact in own)
          _attachedRow(
            key: contact.id,
            input: phones.toDisplay(contact.phone),
            label: FreePhoneContactLabel(contact.label),
            isMainPhone: contact.isMainPhone,
            storedPhone: contact.phone,
          ),
        ...family.map(_followedFamilyRowOf),
      ],
    );
    registerFields([rows]);
  }

  @override
  Person editedVersionOf(Person person) =>
      person.copyWith(contacts: ownContacts, familyContacts: familyContacts);

  void add(PhoneContactLabel label) => rows.setValue([
    ...rows.fieldValue,
    _attachedRow(
      key: _newKey(),
      input: '',
      label: label,
      isMainPhone:
          label is FreePhoneContactLabel &&
          rows.fieldValue.none((row) => row.isMainPhone.fieldValue),
    ),
  ]);

  void importNumbers(Iterable<({String label, String number})> numbers) =>
      rows.setValue([
        ...rows.fieldValue,
        for (final number in numbers)
          _attachedRow(
            key: _newKey(),
            input: number.number,
            label: FreePhoneContactLabel(number.label),
            isMainPhone: false,
          ),
      ]);

  void remove(PhoneContactRowFormController row) {
    removeSubform(row);
    rows.setValue(rows.fieldValue.whereNot((other) => other == row).toList());
  }

  void toggleMain(PhoneContactRowFormController row) {
    if (!row.canBeMain) return;

    final becomesMain = !row.isMainPhone.fieldValue;
    for (final other in rows.fieldValue) {
      other.isMainPhone.setValue(
        other == row
            ? becomesMain
            : other.isMainPhone.fieldValue && !becomesMain,
      );
    }
  }

  void changeLabel(PhoneContactRowFormController row, PhoneContactLabel label) {
    row.label.setValue(label);
    row.isMainPhone.setValue(
      label is FreePhoneContactLabel && row.isMainPhone.fieldValue,
    );
  }

  void followFamily({required List<FamilyPhoneContact> saved}) {
    final dropped =
        rows.fieldValue
            .where((row) => _followedFamilyKeys.contains(row.key))
            .toList()
          ..forEach(removeSubform);
    _followedFamilyKeys = {for (final f in saved) f.contact.id};

    rows.prefill([
      ...rows.fieldValue.whereNot(dropped.contains),
      ...saved.map(_followedFamilyRowOf),
    ]);
  }

  PhoneContactRowFormController _followedFamilyRowOf(
    FamilyPhoneContact saved,
  ) {
    final cached = _familyRowsById[saved.contact.id];
    if (cached != null && cached.savedRelative == saved) {
      cached.resetAll();
      addSubform(cached);

      return cached;
    }

    return _familyRowsById[saved.contact.id] = _attachedRow(
      key: saved.contact.id,
      input: _phones.toDisplay(saved.contact.phone),
      label: RolePhoneContactLabel(saved.role),
      isMainPhone: false,
      savedRelative: saved,
      storedPhone: saved.contact.phone,
    );
  }

  PhoneContactRowFormController _attachedRow({
    required String key,
    required String input,
    required PhoneContactLabel label,
    required bool isMainPhone,
    FamilyPhoneContact? savedRelative,
    String? storedPhone,
  }) {
    final row = PhoneContactRowFormController(
      key: key,
      initialInput: input,
      initialLabel: label,
      initialIsMainPhone: isMainPhone,
      phones: _phones,
      isDuplicate: _isDuplicate,
      canHaveFamilyNumbers: _canHaveFamilyNumbers,
      savedRelative: savedRelative,
      storedPhone: storedPhone,
    );
    addSubform(row);

    return row;
  }

  bool _isDuplicate(PhoneContactRowFormController row) {
    final firstWithSameNumber = rows.fieldValue.firstWhereOrNull(
      row.isSameNumberAs,
    );

    return firstWithSameNumber != null && firstWithSameNumber != row;
  }
}
