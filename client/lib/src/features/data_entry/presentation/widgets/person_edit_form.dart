import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PersonEditForm extends StatefulWidget {
  final EditObjectController<Person> controller;
  final bool classesAndGroupsLoaded;
  final Family? withFamily;
  const PersonEditForm({
    required this.controller,
    required this.classesAndGroupsLoaded,
    required this.withFamily,
    super.key,
  });
  @override
  State<PersonEditForm> createState() => _PersonEditFormState();
}

class _PersonEditFormState extends State<PersonEditForm> {
  void _update(Person Function(Person) change) {
    widget.controller.newObject = change(widget.controller.newObject);
  }

  void _updateAndRebuild(Person Function(Person) change) {
    setState(() => _update(change));
  }

  @override
  Widget build(BuildContext context) {
    final person = widget.controller.newObject;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PersonContactFields(
          person: person,
          onNameChanged: (value) =>
              _update((p) => p.copyWith(name: value.trim())),
          onNationalIdChanged: (value) =>
              _update((p) => p.copyWith(nationalId: int.tryParse(value))),
          onImportFromContacts: _importFromContacts,
          onMainPhoneChanged: (value) => _update(
            (p) => p.copyWith(
              mainPhone: PhoneNumberService.I
                  .formatInternational(value)
                  .replaceAll('+20', '0'),
            ),
          ),
          validatePhone: validatePhoneField,
          onEditPhoneName: _onEditPhoneFieldName,
          onOtherPhoneChanged: (key, value) => _update(
            (p) => p.copyWith(
              otherPhones: {
                ...p.otherPhones,
                key: PhoneNumberService.I
                    .formatInternational(value)
                    .replaceAll('+20', '0'),
              },
            ),
          ),
          onAddOtherPhone: _addOtherPhone,
          onBirthdateChanged: (value) =>
              _update((p) => p.copyWith(birthdate: value)),
        ),
        PersonFamilyAndAddressFields(
          person: person,
          isCreate: widget.controller.isCreate,
          onAddressChanged: (value) =>
              _update((p) => p.copyWith(address: value)),
          onEditLocation: _editGeoLocation,
          familyValidator: (value) => familyValidator(
            value,
            person.address,
            widget.controller.isCreate,
          ),
          onFamilyChanged: _changeFamily,
        ),
        const Divider(),
        PersonServicesAndGroupsField(
          person: person,
          classesAndGroupsLoaded: widget.classesAndGroupsLoaded,
          onTap: _selectServices,
          combineGroupsWithServices: combineGroupsWithServices,
        ),
        PersonWorkAndEducationFields(
          person: person,
          onWorkStatusChanged: (value) =>
              _updateAndRebuild((p) => p.copyWith(workStatus: value)),
          onStudyYearChanged: (value) => _updateAndRebuild(
            (p) => p.copyWith(studyYear: value, studyYearId: value?.order),
          ),
          onCollegeChanged: (value) =>
              _update((p) => p.copyWith(college: value, collegeId: value?.id)),
          onSchoolChanged: (value) =>
              _update((p) => p.copyWith(school: value, schoolId: value?.id)),
          onQualificationChanged: (value) => _update(
            (p) => p.copyWith(qualification: value, qualificationId: value?.id),
          ),
          onJobChanged: (value) =>
              _update((p) => p.copyWith(job: value, jobId: value?.id)),
          onJobDescriptionChanged: (value) =>
              _update((p) => p.copyWith(jobDescription: value.trim())),
        ),
        const Divider(),
        PersonMaritalAndTypeFields(
          person: person,
          onGenderChanged: (value) => _updateAndRebuild(
            (p) => value!
                ? p.copyWith(gender: value)
                : p.copyWith(gender: value, isShammas: false),
          ),
          onMartialStatusChanged: (value) =>
              _update((p) => p.copyWith(martialStatus: value)),
          onPersonTypeChanged: (value) => _update(
            (p) => p.copyWith(personType: value, personTypeId: value?.id),
          ),
        ),
        const Divider(),
        PersonChurchAndSpiritualFields(
          person: person,
          onChurchChanged: (value) =>
              _update((p) => p.copyWith(church: value, churchId: value?.id)),
          onFatherChanged: (value) =>
              _update((p) => p.copyWith(father: value, fatherId: value?.id)),
          onIsServantChanged: (value) =>
              _updateAndRebuild((p) => p.copyWith(isServant: value)),
          onServingChurchChanged: (value) =>
              _update((p) => p.copyWith(servingChurch: value)),
          onServiceTypeChanged: (value) =>
              _update((p) => p.copyWith(serviceType: value.trim())),
          onIsShammasChanged: (value) =>
              _updateAndRebuild((p) => p.copyWith(isShammas: value)),
          onShammasLevelChanged: (value) => _update(
            (p) => p.copyWith(shammasLevel: value, shammasLevelId: value?.id),
          ),
          onStateChanged: (value) =>
              _update((p) => p.copyWith(state: value, stateId: value?.id)),
        ),
        const Divider(),
        PersonHobbiesTagsAndNotesFields(
          person: person,
          generalCheckValidator: ([value]) =>
              personGeneralCheckValidator(widget.controller.newObject, value),
          onHobbiesChanged: (value) =>
              _update((p) => p.copyWith(hobbies: value?.toList())),
          onTagsChanged: (value) =>
              _update((p) => p.copyWith(tags: value?.toList())),
          onNotesChanged: (value) =>
              _update((p) => p.copyWith(notes: value.trim())),
          onColorChanged: (value) => _update((p) => p.copyWith(color: value)),
        ),
        PersonPastoralDatesFields(
          person: person,
          onLastKodasChanged: (value) => _update(
            (p) => p.copyWith(lastKodas: recordedByCurrentUser(value)),
          ),
          onLastConfessionChanged: (value) => _update(
            (p) => p.copyWith(lastConfession: recordedByCurrentUser(value)),
          ),
          onLastVisitChanged: (value) => _update(
            (p) => p.copyWith(lastVisit: recordedByCurrentUser(value)),
          ),
          onLastCallChanged: (value) => _update(
            (p) => p.copyWith(lastCall: recordedByCurrentUser(value)),
          ),
        ),
      ],
    );
  }

  void Function() _onEditPhoneFieldName(MapEntry<String, dynamic> phone) =>
      () async {
        final name = await _renamePhoneFieldName(true, phone.key);
        if (name == true && mounted) {
          _updateAndRebuild(
            (p) => p.copyWith(
              otherPhones: {
                for (final entry in p.otherPhones.entries)
                  if (entry.key != phone.key) entry.key: entry.value,
              },
            ),
          );
        } else if (name is String && mounted) {
          _updateAndRebuild(
            (p) => p.copyWith(
              otherPhones: {
                for (final entry in p.otherPhones.entries)
                  if (entry.key != phone.key) entry.key: entry.value,
                name: phone.value,
              },
            ),
          );
        }
      };
  Future<void> _addOtherPhone() async {
    final name = await _renamePhoneFieldName();
    if (name is String && mounted) {
      _updateAndRebuild(
        (p) => p.copyWith(otherPhones: {...p.otherPhones, name: ''}),
      );
    }
  }

  Future<Object?> _renamePhoneFieldName([
    bool canDelete = false,
    String? initialName,
  ]) => showDialog(
    context: context,
    builder: (context) => PhoneFieldNameDialog(
      canDelete: canDelete,
      initialName: initialName,
    ),
  );

  Future<void> _importFromContacts() async {
    FocusScope.of(context).requestFocus();
    final permissionStatus = await Permission.contacts.request();
    if (permissionStatus != PermissionStatus.granted &&
        permissionStatus != PermissionStatus.limited) {
      return;
    }
    final contact = await ContactsService.I.pickContact();
    if (contact == null || !mounted) return;

    final result =
        await showDialog<
          ({bool useContactName, Set<({String label, String number})> numbers})
        >(
          context: context,
          builder: (context) => ContactImportDialog(contact: contact),
        );
    if (result != null && mounted) {
      _updateAndRebuild(
        (p) => p.copyWith(
          name: result.useContactName ? (contact.displayName ?? '') : p.name,
          otherPhones: {
            ...p.otherPhones,
            for (final number in result.numbers) number.label: number.number,
          },
        ),
      );
    }
  }

  void _changeFamily(Family? family) {
    final initialFamilyId =
        widget.controller.initialObject?.family?.id ?? widget.withFamily?.id;
    if (family?.id == initialFamilyId) {
      _updateAndRebuild(
        (p) => p.copyWith(
          family: widget.controller.initialObject?.family,
          familyId: widget.controller.initialObject?.family?.id,
          address: widget.controller.initialObject?.address,
        ),
      );

      return;
    }
    _updateAndRebuild(
      (p) => p.copyWith(
        family: family,
        familyId: family?.id,
        address: switch (family) {
          Family(:final address) => address,
          null => p.family?.address ?? p.address,
        },
      ),
    );
  }

  Future<void> _selectServices(
    FormFieldState<(Set<Service>, Set<Group>)> state,
  ) async {
    final focusScope = FocusScope.of(state.context);
    final result = await Navigator.of(context).push<Set<Service>>(
      MaterialPageRoute(
        builder: (context) => PersonServiceSelectionPage(
          selected: state.value != null
              ? combineGroupsWithServices(
                  state.value!.$1,
                  state.value!.$2,
                ).toSet()
              : {},
        ),
      ),
    );
    if (result != null) {
      final groups = result
          .map(
            (service) =>
                service.groups?.map(
                  (group) => group.copyWith(service: service),
                ) ??
                [],
          )
          .expand((entry) => entry)
          .toSet();
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => state.mounted ? state.didChange((result, groups)) : null,
      );
      _update(
        (p) => p.copyWith(
          services: result.toList(),
          groups: groups.toList(),
        ),
      );
      focusScope.nextFocus();
    }
  }

  Future<Point?> _editGeoLocation(BuildContext context) async {
    final result = await Navigator.of(context).push<Person>(
      MaterialPageRoute(
        builder: (context) => EditPersonLocationMap(
          onSaved: Navigator.of(context).pop,
          initialPerson: widget.controller.newObject,
        ),
      ),
    );
    if (result != null) _update((_) => result);

    return result?.geolocation;
  }
}
