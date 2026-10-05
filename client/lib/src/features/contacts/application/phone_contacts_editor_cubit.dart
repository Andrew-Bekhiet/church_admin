import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class PhoneContactsEditorCubit extends Cubit<PhoneContactsEditorState> {
  final ContactsDAO _dao;
  final PhoneNumberService _phones;
  final String Function() _newKey;

  String? _personId;
  PersonPhoneBook _saved = const PersonPhoneBook();

  PhoneContactsEditorReady? get _ready => switch (state) {
    final PhoneContactsEditorReady ready => ready,
    PhoneContactsEditorLoading() => null,
  };

  PhoneContactsEditorCubit({
    ContactsDAO? dao,
    PhoneNumberService? phones,
    String Function()? newKey,
  }) : _dao = dao ?? DatabaseService.I.contacts,
       _phones = phones ?? const PhoneNumberService(),
       _newKey = newKey ?? const Uuid().v4,
       super(const PhoneContactsEditorLoading());

  Future<void> load({
    required String? personId,
    required String? familyId,
  }) async {
    final (own, family, familyRoles) = await (
      switch (personId) {
        final personId? => _dao.fetchOwnContacts(personId: personId),
        null => Future.value(const <PhoneContact>[]),
      },
      _fetchFamily(familyId: familyId, excludedPersonId: personId),
      _dao.fetchFamilyRoles(),
    ).wait;

    _personId = personId;
    _saved = PersonPhoneBook(own: own, family: family);
    _emit(
      drafts: [...own.map(_ownDraftOf), ...family.map(_familyDraftOf)],
      familyRoles: familyRoles,
      familyId: familyId,
    );
  }

  Future<void> changeFamily(String? familyId) async {
    final ready = _ready;
    if (ready == null || familyId == ready.familyId) return;

    final family = await _fetchFamily(
      familyId: familyId,
      excludedPersonId: _personId,
    );
    final previousFamilyIds = _saved.family.map((r) => r.contact.id).toSet();

    _saved = PersonPhoneBook(own: _saved.own, family: family);
    _emit(
      drafts: [
        ...ready.drafts.whereNot(
          (d) => previousFamilyIds.contains(d.contactId),
        ),
        ...family.map(_familyDraftOf),
      ],
      familyId: familyId,
    );
  }

  void add(PhoneContactLabel label) => _updateDrafts(
    (drafts) => [
      ...drafts,
      PhoneContactDraft(
        key: _newKey(),
        input: '',
        label: label,
        isMainPhone:
            label is FreePhoneContactLabel && drafts.none((d) => d.isMainPhone),
      ),
    ],
  );

  void importNumbers(Iterable<({String label, String number})> numbers) =>
      _updateDrafts(
        (drafts) => [
          ...drafts,
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

  void toggleMain(String key) => _updateDrafts((drafts) {
    final toggled = drafts.firstWhereOrNull((d) => d.key == key);
    if (toggled == null || !toggled.canBeMain) return drafts;

    final becomesMain = !toggled.isMainPhone;

    return [
      for (final draft in drafts)
        draft.key == key
            ? draft.copyWith(isMainPhone: becomesMain)
            : draft.copyWith(isMainPhone: draft.isMainPhone && !becomesMain),
    ];
  });

  void remove(String key) =>
      _updateDrafts((drafts) => drafts.whereNot((d) => d.key == key).toList());

  Future<void> save({
    required String personId,
    required String? familyId,
  }) async {
    final ready = _ready;
    if (ready == null) return;

    final changes = PhoneContactChanges.between(
      initial: _saved,
      drafts: ready.drafts,
      personId: personId,
      familyId: familyId,
    );
    if (changes.isEmpty) return;

    await _dao.applyChanges(changes);
    await load(personId: personId, familyId: familyId);
  }

  Future<List<FamilyPhoneContact>> _fetchFamily({
    required String? familyId,
    required String? excludedPersonId,
  }) => switch (familyId) {
    final familyId? => _dao.fetchFamilyContacts(
      familyId: familyId,
      excludedPersonId: excludedPersonId,
    ),
    null => Future.value(const <FamilyPhoneContact>[]),
  };

  PhoneContactDraft _ownDraftOf(PhoneContact contact) => PhoneContactDraft(
    key: contact.id,
    contactId: contact.id,
    input: _phones.toDisplay(contact.phone),
    phone: contact.phone,
    label: FreePhoneContactLabel(contact.label),
    isMainPhone: contact.isMainPhone,
  );

  PhoneContactDraft _familyDraftOf(FamilyPhoneContact relative) =>
      PhoneContactDraft(
        key: relative.contact.id,
        contactId: relative.contact.id,
        input: _phones.toDisplay(relative.contact.phone),
        phone: relative.contact.phone,
        label: RolePhoneContactLabel(relative.role),
      );

  void _updateDraft(
    String key,
    PhoneContactDraft Function(PhoneContactDraft) change,
  ) => _updateDrafts(
    (drafts) => [
      for (final draft in drafts) draft.key == key ? change(draft) : draft,
    ],
  );

  void _updateDrafts(
    List<PhoneContactDraft> Function(List<PhoneContactDraft>) change,
  ) {
    final ready = _ready;
    if (ready == null) return;

    _emit(drafts: change(ready.drafts), familyId: ready.familyId);
  }

  void _emit({
    required List<PhoneContactDraft> drafts,
    required String? familyId,
    List<PersonType>? familyRoles,
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

    final errors = {
      for (final draft in drafts)
        if (switch (draft) {
              PhoneContactDraft(label: RolePhoneContactLabel())
                  when familyId == null =>
                PhoneContactDraftError.roleNeedsFamily,
              PhoneContactDraft(phone: null) =>
                PhoneContactDraftError.invalidPhone,
              PhoneContactDraft(:final key) when duplicateKeys.contains(key) =>
                PhoneContactDraftError.duplicatePhone,
              _ => null,
            }
            case final error?)
          draft.key: error,
    };

    emit(
      PhoneContactsEditorReady(
        drafts: drafts,
        familyRoles: familyRoles ?? _ready?.familyRoles ?? const [],
        familyId: familyId,
        errors: errors,
      ),
    );
  }
}
