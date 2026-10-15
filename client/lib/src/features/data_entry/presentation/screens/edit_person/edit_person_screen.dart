import 'dart:async';

import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:permission_handler/permission_handler.dart';

class EditPersonScreen extends StatefulWidget {
  final PersonEditIntent intent;

  const EditPersonScreen({required this.intent, super.key});

  @override
  State<EditPersonScreen> createState() => _EditPersonScreenState();
}

class _EditPersonScreenState extends State<EditPersonScreen> {
  late final PersonFormController _form;
  late final PhoneContactsEditorCubit _phoneContacts;
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? _progressSnackBar;
  String? _familyIdLastSeenByPhoneContacts;

  @override
  void initState() {
    super.initState();
    final databaseService = DatabaseService.I;
    _form = PersonFormController(
      intent: widget.intent,
      persons: databaseService.persons,
      families: databaseService.families,
      photoUploader: FunctionsPersonPhotoUploader(FunctionsService.I),
      currentUser: AuthBloc.I.currentUserData,
      addressServices: AddressFormServices(
        autofill: AddressAutofill(
          areas: databaseService.areas,
          streets: databaseService.streets,
          districts: databaseService.metadata.districts,
          geocoder: Geocoder.I,
        ),
        places: AddressPlaceCatalog(
          areas: databaseService.areas,
          streets: databaseService.streets,
          districts: databaseService.metadata.districts,
        ),
        logging: LoggingService.I,
      ),
    );
    final initialPerson = _form.initialPerson;
    _phoneContacts = PhoneContactsEditorCubit(
      own: initialPerson?.contacts ?? const [],
      family: initialPerson?.visibleFamilyContacts ?? const [],
      hasFamily: _form.household.canHaveFamilyNumbers,
      fetchFamilyRoles: switch (initialPerson?.personType) {
        PersonType(isFamilyAdmin: true) => () async => const [],
        _ => null,
      },
    );
    _familyIdLastSeenByPhoneContacts = _form.household.family.fieldValue?.id;
    _form.household.onValuesChanged.addListener(
      _followHouseholdInPhoneContacts,
    );
    _form.saveProgress.addListener(_showSaveProgressWhileSaving);
  }

  @override
  Widget build(BuildContext context) {
    final intent = widget.intent;

    return BlocProvider.value(
      value: _phoneContacts,
      child: BlocListener<PhoneContactsEditorCubit, PhoneContactsEditorState>(
        listenWhen: (previous, current) =>
            previous.ownContacts != current.ownContacts ||
            previous.familyContacts != current.familyContacts,
        listener: (context, state) => _form.phoneContactsChanged(
          own: state.ownContacts,
          family: state.familyContacts,
        ),
        child:
            ValueListenableBuilder<AdvancedFieldState<Color?, PersonEditError>>(
              valueListenable: _form.hobbiesTagsAndNotes.color,
              builder: (context, color, child) => Theme(
                data: ThemingService.getDefault(seedOverride: color.value),
                child: child!,
              ),
              child: PopScope(
                canPop: false,
                onPopInvokedWithResult: _confirmExit,
                child: Scaffold(
                  body: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        stretch: true,
                        pinned: true,
                        expandedHeight: MediaQuery.sizeOf(context).width,
                        actions: [
                          if (intent case UpdatePerson(
                            :final person,
                          ) when person.user?.email == null)
                            IconButton(
                              onPressed: _delete,
                              icon: const Icon(Symbols.delete),
                              tooltip: 'حذف',
                            ),
                        ],
                        flexibleSpace: ListenableBuilder(
                          listenable: _form.identity.name,
                          builder: (context, _) =>
                              AdvancedPhotoField<PersonEditError>(
                                field: _form.photo,
                                object: _form.toPerson(),
                                canDelete: !_form.isCreate,
                                circleCrop: true,
                              ),
                        ),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.only(bottom: 120),
                        sliver: SliverToBoxAdapter(
                          child: FocusScope(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  PersonEditIdentitySection(
                                    form: _form.identity,
                                    onImportFromContacts: _importFromContacts,
                                  ),
                                  PersonEditHouseholdSection(
                                    form: _form.household,
                                    violations: _form.shownViolations,
                                    onChooseLocationOnMap: _chooseLocationOnMap,
                                  ),
                                  const Divider(),
                                  PersonEditMembershipsSection(
                                    form: _form.memberships,
                                    violations: _form.shownViolations,
                                  ),
                                  PersonEditWorkSection(form: _form.work),
                                  const Divider(),
                                  PersonEditMaritalStatusAndTypeSection(
                                    form: _form.maritalStatusAndType,
                                  ),
                                  const Divider(),
                                  PersonEditChurchAndSpiritualSection(
                                    form: _form.churchAndSpiritual,
                                    gender: _form.maritalStatusAndType.gender,
                                  ),
                                  const Divider(),
                                  PersonEditHobbiesTagsAndNotesSection(
                                    form: _form.hobbiesTagsAndNotes,
                                  ),
                                  PersonEditPastoralDatesSection(
                                    form: _form.pastoralDates,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  floatingActionButton:
                      ValueListenableBuilder<PersonSaveProgress>(
                        valueListenable: _form.saveProgress,
                        builder: (context, progress, _) =>
                            FloatingActionButton.extended(
                              key: EditPersonScreenKeys.saveButton,
                              label: const Text('حفظ'),
                              icon: switch (progress) {
                                NotSaving() => const Icon(Icons.save),
                                SavingPerson() ||
                                UploadingPhoto() => SizedBox.square(
                                  dimension: 18,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: ColorScheme.of(
                                      context,
                                    ).onPrimaryContainer,
                                  ),
                                ),
                              },
                              onPressed: switch (progress) {
                                NotSaving() => _save,
                                SavingPerson() || UploadingPhoto() => null,
                              },
                            ),
                      ),
                ),
              ),
            ),
      ),
    );
  }

  @override
  void dispose() {
    _progressSnackBar?.close();
    _form.saveProgress.removeListener(_showSaveProgressWhileSaving);
    _form.household.onValuesChanged.removeListener(
      _followHouseholdInPhoneContacts,
    );
    _form.dispose();
    unawaited(_phoneContacts.close());
    super.dispose();
  }

  void _followHouseholdInPhoneContacts() {
    final household = _form.household;
    final familyId = household.family.fieldValue?.id;

    if (familyId == _familyIdLastSeenByPhoneContacts) {
      _phoneContacts.changeFamilyAvailability(
        hasFamily: household.canHaveFamilyNumbers,
      );

      return;
    }

    _familyIdLastSeenByPhoneContacts = familyId;
    _phoneContacts.changeFamily(
      saved: household.savedFamilyContacts,
      hasFamily: household.canHaveFamilyNumbers,
    );
  }

  void _showSaveProgressWhileSaving() {
    switch (_form.saveProgress.value) {
      case NotSaving():
        _progressSnackBar?.close();
        _progressSnackBar = null;

      case SavingPerson() || UploadingPhoto():
        _progressSnackBar ??= ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(minutes: 30),
            content: ValueListenableBuilder<PersonSaveProgress>(
              valueListenable: _form.saveProgress,
              builder: (context, progress, _) => Row(
                children: [
                  Expanded(
                    child: Text(switch (progress) {
                      UploadingPhoto() => 'جار رفع الصورة ...',
                      NotSaving() || SavingPerson() => 'جار الحفظ ...',
                    }),
                  ),
                  CircularProgressIndicator(
                    value: switch (progress) {
                      UploadingPhoto(:final progress) => progress,
                      NotSaving() || SavingPerson() => null,
                    },
                  ),
                ],
              ),
            ),
          ),
        );
    }
  }

  Future<Point?> _chooseLocationOnMap(BuildContext context) async {
    final withDisplayedAddress = _form.toPerson().copyWith(
      address: _form.household.address.toAddress(),
    );
    final result = await Navigator.of(context).push<Person>(
      MaterialPageRoute(
        builder: (context) => EditPersonLocationMap(
          onSaved: Navigator.of(context).pop,
          initialPerson: withDisplayedAddress,
        ),
      ),
    );

    return result?.geolocation;
  }

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
    if (result == null || !mounted) return;

    _phoneContacts.importNumbers(result.numbers);
    if (result.useContactName) {
      _form.identity.name.setValue(contact.displayName ?? '');
    }
  }

  Future<void> _save({bool confirmedMove = false}) async {
    final outcome = await _form.submit(confirmedMove: confirmedMove);
    if (!mounted) return;

    switch (outcome) {
      case NeedsMoveConfirmation():
        final confirmed = await showDialog<bool>(
          context: context,
          builder: (context) => const MoveOutOfSightConfirmationDialog(),
        );
        if (confirmed ?? false) await _save(confirmedMove: true);

      case PersonSaved(:final person, :final movedOutOfSight):
        _leaveAfterSave(
          person,
          message: movedOutOfSight ? 'تم نقل المخدوم' : 'تم بنجاح',
          movedOutOfSight: movedOutOfSight,
        );

      case PersonSavedButPhotoFailed(
        :final person,
        :final movedOutOfSight,
        :final error,
        :final stackTrace,
      ):
        unawaited(
          LoggingService.I.error(
            LogRecord(
              error: error,
              stackTrace: stackTrace,
              data: {'objectType': 'Person', 'newObject': person.toJson()},
            ),
          ),
        );
        _leaveAfterSave(
          person,
          message: 'تم حفظ المخدوم لكن تعذر رفع الصورة',
          movedOutOfSight: movedOutOfSight,
        );

      case PersonSaveFailed(
        :final error,
        :final stackTrace,
        :final attemptedPerson,
      ):
        await LoggingService.I.showErrorDialogAndReport(
          context,
          LogRecord(
            error: error,
            stackTrace: stackTrace,
            data: {
              'objectType': 'Person',
              'initialObject': _form.initialPerson?.toJson(),
              'newObject': attemptedPerson.toJson(),
            },
          ),
        );

      case InvalidPerson() ||
          SaveAlreadyInProgress() ||
          SaveAbandonedBecauseFormWasDisposed():
        return;
    }
  }

  void _leaveAfterSave(
    Person person, {
    required String message,
    required bool movedOutOfSight,
  }) {
    final navigator = Navigator.of(context);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Expanded(child: Text(message)),
            Icon(Symbols.done, color: Theme.of(context).primaryIconTheme.color),
          ],
        ),
      ),
    );

    if (_form.isCreate) {
      ViewPersonRoute(id: person.id, $extra: person).pushReplacement(context);

      return;
    }

    navigator.pop();
    if (movedOutOfSight) {
      WidgetsBinding.instance.addPostFrameCallback((_) => navigator.pop());
    }
  }

  Future<void> _confirmExit(bool didPop, Object? result) async {
    if (didPop) return;

    final navigator = Navigator.of(context);
    if (!_form.wasModified && !_phoneContacts.hasUnsavedInput) {
      navigator.pop(result);

      return;
    }

    final discard = await showDialog<bool>(
      context: context,
      builder: (context) => const DiscardChangesDialog(),
    );

    if (discard ?? false) navigator.pop(result);
  }

  Future<void> _delete() async {
    final navigator = Navigator.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final iconColor = Theme.of(context).primaryIconTheme.color;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => DeleteConfirmationDialog(
        objectName: _form.initialPerson?.name ?? '',
      ),
    );
    if (confirmed != true) return;

    await _form.deletePerson();

    messenger.showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Expanded(child: Text('تم الحذف بنجاح')),
            Icon(Symbols.done, color: iconColor),
          ],
        ),
      ),
    );

    navigator.pop();
    WidgetsBinding.instance.addPostFrameCallback((_) => navigator.pop());
  }
}

abstract final class EditPersonScreenKeys {
  static const Key saveButton = ValueKey('Edit Person Save Button Key');
}
