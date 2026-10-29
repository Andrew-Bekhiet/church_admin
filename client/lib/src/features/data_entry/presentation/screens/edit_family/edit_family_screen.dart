import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class EditFamilyScreen extends StatefulWidget {
  static const String movedOutOfSightMessage = 'تم نقل العائلة';

  final FamilyEditIntent intent;

  const EditFamilyScreen({required this.intent, super.key});

  @override
  State<EditFamilyScreen> createState() => _EditFamilyScreenState();
}

class _EditFamilyScreenState extends State<EditFamilyScreen> {
  final User? _currentUser = AuthBloc.I.currentUserData;
  final PersonMetadataCatalog _metadata = PersonMetadataCatalog(
    DatabaseService.I.metadata,
    AnalyticsService.I,
  );
  late final FamilyFormController _form = FamilyFormController(
    intent: widget.intent,
    familiesDAO: DatabaseService.I.families,
    analyticsService: AnalyticsService.I,
    addressServices: AddressFormServices.backedBy(
      DatabaseService.I,
      geocoder: Geocoder.I,
      logging: LoggingService.I,
      analytics: AnalyticsService.I,
    ),
    currentUserId: _currentUser?.uid,
  );
  late final ObjectSaveCubit<Family> _saveCubit = ObjectSaveCubit(
    form: _form,
    dao: DatabaseService.I.families,
    photoUploader: FunctionsPhotoUploader(FunctionsService.I),
    analyticsService: AnalyticsService.I,
    outOfSight: OutOfSightAfterSave(_currentUser),
  );
  late final FamilyRelativesCubit _relatives = FamilyRelativesCubit(
    form: _form,
    familiesDAO: DatabaseService.I.families,
    logging: LoggingService.I,
  );
  late final FamilyRolesCubit _familyRoles = FamilyRolesCubit(
    DatabaseService.I.metadata.personTypes,
  );

  @override
  void initState() {
    super.initState();
    unawaited(_relatives.loadSavedRelatives());
    unawaited(_familyRoles.load());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _familyRoles),
        BlocProvider.value(value: _relatives),
      ],
      child: EditObjectScaffold<Family>(
        form: _form,
        saveCubit: _saveCubit,
        canDelete: (saved) => _currentUser?.canDeleteObject(saved) ?? false,
        detailsRouteOf: (family) =>
            ViewFamilyRoute(id: family.id, family: family),
        movedOutOfSightMessage: EditFamilyScreen.movedOutOfSightMessage,
        fields: FamilyEditFields(
          form: _form,
          metadata: _metadata,
          onChooseLocationOnMap: _chooseLocationOnMap,
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
    unawaited(_familyRoles.close());
    unawaited(_relatives.close());
    unawaited(_saveCubit.close());
    _form.dispose();
    super.dispose();
  }
}
