import 'dart:async';

import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class EditPersonScreen extends StatefulWidget {
  final PersonEditIntent intent;

  const EditPersonScreen({required this.intent, super.key});

  @override
  State<EditPersonScreen> createState() => _EditPersonScreenState();
}

class _EditPersonScreenState extends State<EditPersonScreen> {
  late final PersonFormController _form;
  final _metadata = PersonMetadataCatalog(
    DatabaseService.I.metadata,
    AnalyticsService.I,
  );
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
      photoUploader: FunctionsPhotoUploader(FunctionsService.I),
      currentUser: AuthBloc.I.currentUserData,
      analyticsService: AnalyticsService.I,
      addressServices: AddressFormServices.backedBy(
        databaseService,
        geocoder: Geocoder.I,
        logging: LoggingService.I,
        analytics: AnalyticsService.I,
      ),
    );
    final savedPerson = _form.savedPerson;
    _phoneContacts = PhoneContactsEditorCubit(
      own: savedPerson?.contacts ?? const [],
      family: savedPerson?.visibleFamilyContacts ?? const [],
      hasFamily: _form.household.canHaveFamilyNumbers,
      fetchFamilyRoles: switch (savedPerson?.personType) {
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
              valueListenable: _form.color,
              builder: (context, color, child) => Theme(
                data: ThemingService.getDefault(seedOverride: color.value),
                child: child!,
              ),
              child: PopScope(
                canPop: false,
                onPopInvokedWithResult: _confirmExit,
                child: Scaffold(
                  body: EditPersonScrollView(
                    form: _form,
                    metadata: _metadata,
                    onImportFromContacts: () => unawaited(
                      EditPersonContactsImport(
                        phoneContacts: _phoneContacts,
                        name: _form.identity.name,
                      ).run(context),
                    ),
                    onChooseLocationOnMap: _chooseLocationOnMap,
                    onDelete: switch (intent) {
                      UpdatePerson(:final person)
                          when person.user?.email == null =>
                        _delete,
                      _ => null,
                    },
                  ),
                  floatingActionButton: EditPersonSaveButton(
                    progress: _form.saveProgress,
                    membershipsLoadState: _form.memberships.loadState,
                    onPressed: _save,
                  ),
                ),
              ),
            ),
      ),
    );
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
      case NotSaving() || AwaitingMoveConfirmation():
        _progressSnackBar?.close();
        _progressSnackBar = null;

      case SavingPerson() || UploadingPhoto():
        _progressSnackBar ??= _replaceSnackBarsWithSaveProgress();
    }
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
  _replaceSnackBarsWithSaveProgress() {
    final messenger = ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..removeCurrentSnackBar();

    return messenger.showSnackBar(
      SnackBar(
        duration: const Duration(minutes: 30),
        content: EditPersonSaveProgressMessage(progress: _form.saveProgress),
      ),
    );
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

  Future<void> _save() async {
    final outcome = await _form.submit(
      confirmMoveOutOfSight: _confirmMoveOutOfSight,
    );
    if (!mounted) return;

    switch (outcome) {
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
              'initialObject': _form.savedPerson?.toJson(),
              'newObject': attemptedPerson.toJson(),
            },
          ),
        );

      case MembershipsNotLoadedYet():
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'جاري تحميل عضويات المخدوم، انتظر قليلاً ثم حاول مرة أخرى',
            ),
          ),
        );

      case MembershipsFailedToLoad():
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('تعذر تحميل عضويات المخدوم، لا يمكن الحفظ الآن'),
          ),
        );

      case InvalidPerson():
        _focusFirstInvalidField();

      case MoveOutOfSightDeclined() ||
          SaveAlreadyInProgress() ||
          SaveAbandonedBecauseFormWasDisposed():
        return;
    }
  }

  Future<bool> _confirmMoveOutOfSight() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => const MoveOutOfSightConfirmationDialog(),
    );

    return confirmed ?? false;
  }

  void _focusFirstInvalidField() {
    final invalidFields = _form.value.allFields
        .where((field) => field.value.isInvalid)
        .toList();
    final firstInvalidField = invalidFields.firstOrNull;
    if (firstInvalidField == null) return;

    firstInvalidField.focus();
    AnalyticsService.I.track(
      FirstInvalidFieldFocus(
        _form.toPerson(),
        invalidFieldCount: invalidFields.length,
      ),
    );
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
      unawaited(
        ViewPersonRoute(id: person.id, person: person).pushReplacement(context),
      );

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

    final editedPerson = _form.toPerson();
    AnalyticsService.I.track(DiscardPromptShow(editedPerson));
    final discard = await showDialog<bool>(
      context: context,
      builder: (context) => const DiscardChangesDialog(),
    );
    final isDiscarded = discard ?? false;
    AnalyticsService.I.track(
      DiscardPromptAnswer(editedPerson, isDiscarded: isDiscarded),
    );

    if (isDiscarded) navigator.pop(result);
  }

  Future<void> _delete() async {
    final navigator = Navigator.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final iconColor = Theme.of(context).primaryIconTheme.color;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => DeleteConfirmationDialog(
        objectName: _form.savedPerson?.name ?? '',
      ),
    );
    if (confirmed != true || !mounted) return;

    try {
      await _form.deletePerson();
    } on Exception catch (error, stackTrace) {
      if (!mounted) return;

      await LoggingService.I.showErrorDialogAndReport(
        context,
        LogRecord(
          error: error,
          stackTrace: stackTrace,
          data: {
            'objectType': 'Person',
            'initialObject': _form.savedPerson?.toJson(),
          },
        ),
      );

      return;
    }

    if (!mounted) return;

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
}
