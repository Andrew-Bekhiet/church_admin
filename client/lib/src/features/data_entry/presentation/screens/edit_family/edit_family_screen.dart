import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class EditFamilyScreen extends StatefulWidget {
  final FamilyEditIntent intent;

  const EditFamilyScreen({required this.intent, super.key});

  @override
  State<EditFamilyScreen> createState() => _EditFamilyScreenState();
}

class _EditFamilyScreenState extends State<EditFamilyScreen> {
  final User? _currentUser = AuthBloc.I.currentUserData;
  final PersonMetadataCatalog _metadata = PersonMetadataCatalog(
    DatabaseService.I.metadata,
  );
  late final FamilyFormController _form = FamilyFormController(
    intent: widget.intent,
    families: DatabaseService.I.families,
    addressServices: AddressFormServices.backedBy(
      DatabaseService.I,
      geocoder: Geocoder.I,
      logging: LoggingService.I,
    ),
    recordedByUserId: _currentUser?.uid,
  );
  late final ObjectSaveCubit<Family> _saveCubit = ObjectSaveCubit(
    form: _form,
    dao: DatabaseService.I.families,
    photoUploader: FunctionsPhotoUploader(FunctionsService.I),
    outOfSight: OutOfSightAfterSave(_currentUser),
  );
  late final FamilyRelativesCubit _relatives = FamilyRelativesCubit(
    form: _form,
    families: DatabaseService.I.families,
    logging: LoggingService.I,
  );
  late final PhoneContactsEditorCubit _phoneContacts = PhoneContactsEditorCubit(
    own: const [],
    family: _form.startingObject.contacts,
    hasFamily: true,
    familyOnly: true,
  );

  @override
  void initState() {
    super.initState();
    unawaited(_relatives.loadSavedRelatives());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _phoneContacts),
        BlocProvider.value(value: _relatives),
      ],
      child: BlocListener<PhoneContactsEditorCubit, PhoneContactsEditorState>(
        listenWhen: (previous, current) =>
            previous.familyContacts != current.familyContacts,
        listener: (context, state) =>
            _form.contacts.setValue(state.familyContacts),
        child: EditObjectScaffold<Family>(
          form: _form,
          saveCubit: _saveCubit,
          canDelete: (saved) => _currentUser?.canDeleteObject(saved) ?? false,
          detailsRouteOf: (family) =>
              ViewFamilyRoute(id: family.id, family: family),
          movedOutOfSightMessage: 'تم نقل العائلة',
          hasUnsavedInput: () => _phoneContacts.hasUnsavedInput,
          fields: FamilyEditFields(
            form: _form,
            metadata: _metadata,
            onChooseLocationOnMap: _chooseLocationOnMap,
          ),
        ),
      ),
    );
  }

  Future<Point?> _chooseLocationOnMap(BuildContext context) async {
    final family = _form.toObject();
    final placed = await Navigator.of(context).push<Family>(
      MaterialPageRoute(
        builder: (context) => EditFamilyLocationMap(
          onSaved: Navigator.of(context).pop,
          initialFamily: family,
          geomapOptions: GeomapOptions(
            layers: const {GeoMapLayer.families},
            selectedFamilies: {family},
          ),
        ),
      ),
    );

    return placed?.geolocation;
  }

  @override
  void dispose() {
    unawaited(_phoneContacts.close());
    unawaited(_relatives.close());
    unawaited(_saveCubit.close());
    _form.dispose();
    super.dispose();
  }
}
