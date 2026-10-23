import 'dart:async';

import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:uuid/uuid.dart';

sealed class PhoneContactsFormController extends AdvancedFormController {
  static bool _always() => true;

  final PhoneNumberService _phones;
  final AnalyticsService _analyticsService;
  final String Function() _newKey;
  final bool Function() _canHaveFamilyNumbers;
  final Map<String, PhoneContactFormController> _familyContactsById = {};

  Set<String> _followedFamilyKeys;

  late final AdvancedFieldController<
    List<PhoneContactFormController>,
    PhoneContactError
  >
  contacts;

  List<PhoneContact> get ownContacts => [
    for (final contact in contacts.fieldValue)
      if (contact case PhoneContactFormController(
        e164: final phone?,
        label: AdvancedFieldController(
          fieldValue: FreePhoneContactLabel(:final text),
        ),
      ))
        PhoneContact(
          id: contact.key,
          phone: phone,
          label: (text?.trim().isEmpty ?? true) ? null : text?.trim(),
          isMainPhone: contact.isMainPhone.fieldValue,
        ),
  ];

  List<FamilyPhoneContact> get familyContacts => [
    for (final contact in contacts.fieldValue)
      if (contact case PhoneContactFormController(
        e164: final phone?,
        label: AdvancedFieldController(
          fieldValue: RolePhoneContactLabel(:final role),
        ),
      ))
        switch (contact.savedRelative) {
          final saved? when saved.role.id == role.id => saved.copyWith(
            contact: saved.contact.copyWith(phone: phone),
          ),
          _ => FamilyPhoneContact(
            contact: PhoneContact(id: contact.key, phone: phone),
            role: role,
          ),
        },
  ];

  PhoneContactsFormController._({
    required List<PhoneContact> own,
    required List<FamilyPhoneContact> family,
    required AnalyticsService analyticsService,
    PhoneNumberService phones = const PhoneNumberService(),
    bool Function()? canHaveFamilyNumbers,
    String Function()? newKey,
  }) : _phones = phones,
       _analyticsService = analyticsService,
       _newKey = newKey ?? const Uuid().v4,
       _canHaveFamilyNumbers = canHaveFamilyNumbers ?? _always,
       _followedFamilyKeys = {for (final f in family) f.contact.id},
       super(debugName: 'phones', validateAll: true) {
    contacts = AdvancedFieldController(
      initialValue: [
        for (final contact in own)
          _attachedContact(
            key: contact.id,
            input: phones.toDisplay(contact.phone),
            label: FreePhoneContactLabel(contact.label),
            isMainPhone: contact.isMainPhone,
            storedPhone: contact.phone,
          ),
        ...family.map(_followedFamilyContactOf),
      ],
    );
    registerFields([contacts]);
    onValuesChanged.addListener(_recheckContactsEditedOrShowingAnError);
  }

  void add(PhoneContactLabel label) {
    final isAutoMain =
        label is FreePhoneContactLabel &&
        contacts.fieldValue.none((contact) => contact.isMainPhone.fieldValue);

    _analyticsService.track(ContactsPhoneAdd(label, isAutoMain: isAutoMain));
    contacts.setValue([
      ...contacts.fieldValue,
      _attachedContact(
        key: _newKey(),
        input: '',
        label: label,
        isMainPhone: isAutoMain,
      ),
    ]);
  }

  void importNumbers(Iterable<({String label, String number})> numbers) =>
      contacts.setValue([
        ...contacts.fieldValue,
        for (final number in numbers)
          _attachedContact(
            key: _newKey(),
            input: number.number,
            label: FreePhoneContactLabel(number.label),
            isMainPhone: false,
          ),
      ]);

  void remove(PhoneContactFormController contact) {
    _analyticsService.track(ContactsPhoneRemove(contact.label.fieldValue));
    contacts.setValue(
      contacts.fieldValue.whereNot((other) => other == contact).toList(),
    );
    removeSubform(contact);
    _familyContactsById.removeWhere((_, cached) => cached == contact);
    contact.dispose();
  }

  void toggleMain(PhoneContactFormController contact) {
    if (!contact.canBeMain) return;

    final becomesMain = !contact.isMainPhone.fieldValue;
    _analyticsService.track(ContactsMainPhoneToggle(isMain: becomesMain));
    for (final other in contacts.fieldValue) {
      other.isMainPhone.setValue(
        other == contact
            ? becomesMain
            : other.isMainPhone.fieldValue && !becomesMain,
      );
    }
  }

  void changeLabel(
    PhoneContactFormController contact,
    PhoneContactLabel label,
  ) {
    _analyticsService.track(ContactsPhoneLabelChange(label));
    contact.label.setValue(label);
    contact.isMainPhone.setValue(
      label is FreePhoneContactLabel && contact.isMainPhone.fieldValue,
    );
    _validateIfFilledIn(contact);
  }

  void revalidateAfterFamilyAvailabilityChanged() =>
      _recheckContactsEditedOrShowingAnError();

  void followFamily({required List<FamilyPhoneContact> saved}) {
    final cachedBefore = _familyContactsById.values.toList();
    final dropped = contacts.fieldValue
        .where((contact) => _followedFamilyKeys.contains(contact.key))
        .toList();
    _followedFamilyKeys = {for (final f in saved) f.contact.id};
    final followed = saved.map(_followedFamilyContactOf).toList();
    final cachedNow = _familyContactsById.values.toSet();
    final replaced = cachedBefore.whereNot(cachedNow.contains);

    contacts.prefill([
      ...contacts.fieldValue.whereNot(dropped.contains),
      ...followed,
    ]);

    final detached = [...dropped, ...replaced].whereNot(followed.contains);
    detached.toList()
      ..forEach(removeSubform)
      ..whereNot(cachedNow.contains).forEach((contact) => contact.dispose());
  }

  PhoneContactFormController _followedFamilyContactOf(
    FamilyPhoneContact saved,
  ) {
    final cached = _familyContactsById[saved.contact.id];
    if (cached != null && cached.savedRelative == saved) {
      cached.resetAll();
      addSubform(cached);

      return cached;
    }

    return _familyContactsById[saved.contact.id] = _attachedContact(
      key: saved.contact.id,
      input: _phones.toDisplay(saved.contact.phone),
      label: RolePhoneContactLabel(saved.role),
      isMainPhone: false,
      savedRelative: saved,
      storedPhone: saved.contact.phone,
    );
  }

  PhoneContactFormController _attachedContact({
    required String key,
    required String input,
    required PhoneContactLabel label,
    required bool isMainPhone,
    FamilyPhoneContact? savedRelative,
    String? storedPhone,
  }) {
    final contact = PhoneContactFormController(
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
    addSubform(contact);

    return contact;
  }

  bool _isDuplicate(PhoneContactFormController contact) {
    final firstWithSameNumber = contacts.fieldValue.firstWhereOrNull(
      contact.isSameNumberAs,
    );

    return firstWithSameNumber != null && firstWithSameNumber != contact;
  }

  void _recheckContactsEditedOrShowingAnError() {
    for (final contact in contacts.fieldValue) {
      if (contact.phone.error == null && !contact.value.wasModified) continue;

      _validateIfFilledIn(contact);
    }
  }

  void _validateIfFilledIn(PhoneContactFormController contact) {
    if (contact.phone.fieldValue.trim().isEmpty) return;

    unawaited(contact.phone.validate());
  }

  @override
  void dispose() {
    onValuesChanged.removeListener(_recheckContactsEditedOrShowingAnError);
    super.dispose();
  }
}

class PersonPhoneContactsFormController extends PhoneContactsFormController {
  PersonPhoneContactsFormController({
    required super.own,
    required super.family,
    required super.analyticsService,
    super.phones,
    super.canHaveFamilyNumbers,
    super.newKey,
  }) : super._();
}

class FamilyPhoneContactsFormController extends PhoneContactsFormController {
  FamilyPhoneContactsFormController({
    required List<FamilyPhoneContact> saved,
    required super.analyticsService,
    super.phones,
    super.newKey,
  }) : super._(own: const [], family: saved);
}
