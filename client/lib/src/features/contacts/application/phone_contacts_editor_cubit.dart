import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class PhoneContactsEditorCubit extends Cubit<PhoneContactsEditorState> {
  final PhoneNumberService _phones;
  final String Function() _newKey;

  Map<String, FamilyPhoneContact> _savedFamilyById;

  PhoneContactsEditorCubit({
    required List<PhoneContact> own,
    required List<FamilyPhoneContact> family,
    required bool hasFamily,
    bool familyOnly = false,
    Future<List<PersonType>> Function()? fetchFamilyRoles,
    PhoneNumberService? phones,
    String Function()? newKey,
  }) : _phones = phones ?? const PhoneNumberService(),
       _newKey = newKey ?? const Uuid().v4,
       _savedFamilyById = {for (final f in family) f.contact.id: f},
       super(
         const PhoneContactsEditorState(
           drafts: [],
           familyRoles: [],
           hasFamily: false,
           familyOnly: false,
           errors: {},
           ownContacts: [],
           familyContacts: [],
         ),
       ) {
    _emit(
      drafts: [
        for (final contact in own)
          PhoneContactDraft.ofOwn(
            contact,
            input: _phones.toDisplay(contact.phone),
          ),
        ...family.map(_familyDraftOf),
      ],
      hasFamily: hasFamily,
      familyOnly: familyOnly,
    );
    unawaited(
      (fetchFamilyRoles ??
              DatabaseService.I.metadata.personTypes.fetchFamilyRoles)()
          .then((roles) {
            if (isClosed) return;

            _emit(familyRoles: roles);
          }),
    );
  }

  void changeFamily({
    required List<FamilyPhoneContact> saved,
    required bool hasFamily,
  }) {
    final previousIds = _savedFamilyById.keys.toSet();
    _savedFamilyById = {for (final f in saved) f.contact.id: f};

    _emit(
      drafts: [
        ...state.drafts.whereNot((d) => previousIds.contains(d.contactId)),
        ...saved.map(_familyDraftOf),
      ],
      hasFamily: hasFamily,
    );
  }

  void changeFamilyAvailability({required bool hasFamily}) =>
      _emit(hasFamily: hasFamily);

  void add(PhoneContactLabel label) => _emit(
    drafts: [
      ...state.drafts,
      PhoneContactDraft(
        key: _newKey(),
        input: '',
        label: label,
        isMainPhone:
            label is FreePhoneContactLabel &&
            state.drafts.none((d) => d.isMainPhone),
      ),
    ],
  );

  void importNumbers(Iterable<({String label, String number})> numbers) =>
      _emit(
        drafts: [
          ...state.drafts,
          for (final number in numbers)
            PhoneContactDraft(
              key: _newKey(),
              input: number.number,
              phone: _phones.toE164(number.number),
              label: FreePhoneContactLabel(number.label),
            ),
        ],
      );

  void changeInput(String key, String input) => _updateDraft(
    key,
    (draft) => draft.withInput(input, phone: _phones.toE164(input)),
  );

  void changeLabel(String key, PhoneContactLabel label) => _updateDraft(
    key,
    (draft) => draft.copyWith(
      label: label,
      isMainPhone: label is FreePhoneContactLabel && draft.isMainPhone,
    ),
  );

  void toggleMain(String key) {
    final toggled = state.drafts.firstWhereOrNull((d) => d.key == key);
    if (toggled == null || !toggled.canBeMain) return;

    final becomesMain = !toggled.isMainPhone;

    _emit(
      drafts: [
        for (final draft in state.drafts)
          draft.key == key
              ? draft.copyWith(isMainPhone: becomesMain)
              : draft.copyWith(isMainPhone: draft.isMainPhone && !becomesMain),
      ],
    );
  }

  void remove(String key) =>
      _emit(drafts: state.drafts.whereNot((d) => d.key == key).toList());

  PhoneContactDraft _familyDraftOf(FamilyPhoneContact relative) =>
      PhoneContactDraft.ofFamily(
        relative,
        input: _phones.toDisplay(relative.contact.phone),
      );

  void _updateDraft(
    String key,
    PhoneContactDraft Function(PhoneContactDraft) change,
  ) => _emit(
    drafts: [
      for (final draft in state.drafts)
        draft.key == key ? change(draft) : draft,
    ],
  );

  void _emit({
    List<PhoneContactDraft>? drafts,
    List<PersonType>? familyRoles,
    bool? hasFamily,
    bool? familyOnly,
  }) {
    final effectiveDrafts = drafts ?? state.drafts;
    final effectiveHasFamily = hasFamily ?? state.hasFamily;

    emit(
      PhoneContactsEditorState(
        drafts: effectiveDrafts,
        familyRoles: familyRoles ?? state.familyRoles,
        hasFamily: effectiveHasFamily,
        familyOnly: familyOnly ?? state.familyOnly,
        errors: _errorsOf(effectiveDrafts, hasFamily: effectiveHasFamily),
        ownContacts: [
          for (final draft in effectiveDrafts)
            if (draft case PhoneContactDraft(
              :final phone?,
              label: FreePhoneContactLabel(:final text),
            ))
              PhoneContact(
                id: draft.key,
                phone: phone,
                label: (text?.trim().isEmpty ?? true) ? null : text?.trim(),
                isMainPhone: draft.isMainPhone,
              ),
        ],
        familyContacts: [
          for (final draft in effectiveDrafts)
            if (draft case PhoneContactDraft(
              :final phone?,
              label: RolePhoneContactLabel(:final role),
            ))
              switch (_savedFamilyById[draft.contactId]) {
                final saved? when saved.role.id == role.id => saved.copyWith(
                  contact: saved.contact.copyWith(phone: phone),
                ),
                _ => FamilyPhoneContact(
                  contact: PhoneContact(id: draft.key, phone: phone),
                  role: role,
                ),
              },
        ],
      ),
    );
  }

  Map<String, PhoneContactDraftError> _errorsOf(
    List<PhoneContactDraft> drafts, {
    required bool hasFamily,
  }) {
    final duplicateKeys = drafts
        .where((d) => d.phone != null)
        .groupListsBy(
          (d) => (
            switch (d.label) {
              FreePhoneContactLabel() => null,
              RolePhoneContactLabel(:final role) => role.id,
            },
            d.phone,
          ),
        )
        .values
        .expand((sameNumber) => sameNumber.skip(1))
        .map((d) => d.key)
        .toSet();

    return {
      for (final draft in drafts)
        if (switch (draft) {
              PhoneContactDraft(phone: null, :final input)
                  when input.trim().isNotEmpty =>
                PhoneContactDraftError.invalidPhone,
              PhoneContactDraft(phone: null) => null,
              PhoneContactDraft(label: RolePhoneContactLabel())
                  when !hasFamily =>
                PhoneContactDraftError.roleNeedsFamily,
              PhoneContactDraft(:final key) when duplicateKeys.contains(key) =>
                PhoneContactDraftError.duplicatePhone,
              _ => null,
            }
            case final error?)
          draft.key: error,
    };
  }
}
