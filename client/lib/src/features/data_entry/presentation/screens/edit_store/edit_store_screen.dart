import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class EditStoreScreen extends StatefulWidget {
  final StoreEditIntent intent;

  const EditStoreScreen({required this.intent, super.key});

  @override
  State<EditStoreScreen> createState() => _EditStoreScreenState();
}

class _EditStoreScreenState extends State<EditStoreScreen> {
  final User? _currentUser = AuthBloc.I.currentUserData;
  late final StoreFormController _form = StoreFormController(
    intent: widget.intent,
    families: DatabaseService.I.families,
    addressServices: AddressFormServices.backedBy(
      DatabaseService.I,
      geocoder: Geocoder.I,
      logging: LoggingService.I,
    ),
    recordedByUserId: _currentUser?.uid,
  );
  late final ObjectSaveCubit<Store> _saveCubit = ObjectSaveCubit(
    form: _form,
    dao: DatabaseService.I.stores,
    photoUploader: FunctionsPhotoUploader(FunctionsService.I),
  );

  @override
  Widget build(BuildContext context) {
    return EditObjectScaffold<Store>(
      form: _form,
      saveCubit: _saveCubit,
      canDelete: (saved) => _currentUser?.canDeleteObject(saved) ?? false,
      detailsRouteOf: (store) => ViewStoreRoute(id: store.id, store: store),
      fields: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AddressFormSection(
            form: _form.address,
            onChooseLocationOnMap: _chooseLocationOnMap,
          ),
          AdvancedSingleObjectSelectionField<Family, ObjectEditError>(
            key: EditStoreScreenKeys.familyField,
            field: _form.family,
            label: 'العائلة المسؤولة',
            translateError: ObjectEditError.messageOf,
            listController: _form.familiesMatching,
            errorMaxLines: 2,
            previewBuilder: ObjectSelectionPreview.new,
          ),
          AdvancedColorField<ObjectEditError>(
            field: _form.color,
            translateError: ObjectEditError.messageOf,
          ),
        ],
      ),
    );
  }

  Future<Point?> _chooseLocationOnMap(BuildContext context) async {
    final store = _form.toObject();
    final placed = await Navigator.of(context).push<Store>(
      MaterialPageRoute(
        builder: (context) => EditStoreLocationMap(
          onSaved: Navigator.of(context).pop,
          initialStore: store,
          geomapOptions: GeomapOptions(
            layers: const {GeoMapLayer.stores},
            selectedStores: {store},
          ),
        ),
      ),
    );

    return placed?.geolocation;
  }

  @override
  void dispose() {
    unawaited(_saveCubit.close());
    _form.dispose();
    super.dispose();
  }
}

abstract final class EditStoreScreenKeys {
  static const Key familyField = ValueKey('Edit Store Family Field Key');
}
