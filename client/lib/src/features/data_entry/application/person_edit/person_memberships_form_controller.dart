import 'dart:async';

import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class PersonMembershipsFormController extends AdvancedFormController
    implements PersonFormSection {
  final PersonsDAO _persons;
  final User? _currentUser;
  final AnalyticsService _analyticsService;
  final ValueNotifier<MembershipsLoadState> _loadState;
  late final ValueListenable<MembershipsLoadState> loadState = _loadState;

  Person _loadedPerson;
  PersonMemberships _savedMemberships;

  late final memberships =
      AdvancedFieldController<PersonMemberships, PersonEditError>(
        initialValue: PersonMemberships.ofPerson(_loadedPerson),
        validator: _removesNothingTheUserCannotEdit,
      );

  Person get loadedPerson => _loadedPerson;

  PersonMemberships get savedMemberships => _savedMemberships;

  List<Service> get servicesWithTheirSelectedGroups =>
      memberships.fieldValue.servicesWithTheirSelectedGroups;

  PersonMembershipsFormController({
    required Person startingPerson,
    required bool isCreate,
    required this._persons,
    required this._currentUser,
    required this._analyticsService,
  }) : _loadedPerson = startingPerson,
       _savedMemberships = isCreate
           ? const PersonMemberships(services: {}, groups: {})
           : PersonMemberships.ofPerson(startingPerson),
       _loadState = ValueNotifier(
         isCreate
             ? MembershipsLoaded(classes: startingPerson.classes)
             : const MembershipsLoading(),
       ),
       super(debugName: 'memberships') {
    registerFields([memberships]);
  }

  Future<void> loadSavedMemberships() async {
    final Person? saved;
    try {
      saved = await _persons.personServicesClassesGroups(
        personId: _loadedPerson.id,
      );
    } on Exception catch (error, stackTrace) {
      if (!isDisposed) {
        _loadState.value = MembershipsLoadFailed(
          error: error,
          stackTrace: stackTrace,
        );
      }

      return;
    }
    if (isDisposed) return;

    _loadedPerson = _loadedPerson.copyWith(
      services: saved?.services ?? _loadedPerson.services,
      groups: saved?.groups ?? _loadedPerson.groups,
      classes: saved?.classes ?? _loadedPerson.classes,
    );
    _savedMemberships = PersonMemberships.ofPerson(_loadedPerson);

    if (!value.wasModified) {
      memberships.prefill(_savedMemberships);
      _adoptLoadedMembershipsAsBaseline();
    }

    _loadState.value = MembershipsLoaded(classes: _loadedPerson.classes);
  }

  void selectServices(Set<Service> services) {
    final selection = PersonMemberships.withAllGroupsOf(services);
    memberships.setValue(selection);
    _analyticsService.track(MembershipServiceSelect(selection));
  }

  @override
  Person editedVersionOf(Person person) {
    final selection = memberships.fieldValue;

    return person.copyWith(
      services: PersonFormValues.listOf(
        _loadedPerson.services,
        selection.services,
      ),
      groups: PersonFormValues.listOf(_loadedPerson.groups, selection.groups),
      classes: _loadedPerson.classes,
    );
  }

  void _adoptLoadedMembershipsAsBaseline() => registerFields(value.fields);

  PersonEditError? _removesNothingTheUserCannotEdit(
    PersonMemberships selection,
  ) {
    final keptIds = selection.servicesAndGroups.map((o) => o.id).toSet();
    final removed = _savedMemberships.servicesAndGroups.where(
      (o) => !keptIds.contains(o.id),
    );

    return removed.every((o) => _currentUser?.canEditObject(o) ?? false)
        ? null
        : PersonEditError.cannotRemoveServicesOrGroups;
  }

  @override
  void dispose() {
    _loadState.dispose();
    super.dispose();
  }
}
