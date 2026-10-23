import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class EditStreetScreen extends StatefulWidget {
  final StreetEditIntent intent;

  const EditStreetScreen({required this.intent, super.key});

  @override
  State<EditStreetScreen> createState() => _EditStreetScreenState();
}

class _EditStreetScreenState extends State<EditStreetScreen> {
  final User? _currentUser = AuthBloc.I.currentUserData;
  late final StreetFormController _form = StreetFormController(
    intent: widget.intent,
    areasDAO: DatabaseService.I.areas,
    currentUserId: _currentUser?.uid,
  );
  late final ObjectSaveCubit<Street> _saveCubit = ObjectSaveCubit(
    form: _form,
    dao: DatabaseService.I.streets,
    photoUploader: RemotePhotoUploader(DatabaseService.I.photos),
  );

  @override
  Widget build(BuildContext context) {
    return EditObjectScaffold<Street>(
      form: _form,
      saveCubit: _saveCubit,
      canDelete: (saved) => _currentUser?.canDeleteObject(saved) ?? false,
      detailsRouteOf: (street) =>
          ViewStreetRoute(id: street.id, street: street),
      fields: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FilledButton.tonalIcon(
            key: EditStreetScreenKeys.lineButton,
            style: Theme.of(context).filledTonalButtonStyleWorkaround,
            onPressed: () => unawaited(_drawLineOnMap()),
            icon: const Icon(Symbols.edit_location),
            label: const Text('المكان على الخريطة'),
          ),
          AdvancedMultiObjectSelectionField<Area, ObjectEditError>(
            key: EditStreetScreenKeys.areasField,
            field: _form.areas,
            label: 'المناطق',
            translateError: ObjectEditError.messageOf,
            listController: _form.areasMatching,
            previewBuilder: (areas) => areas.isEmpty
                ? const Text('لا توجد مناطق')
                : Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      for (final area in areas) ViewableObjectCard(area),
                    ],
                  ),
          ),
          AdvancedDateField<ObjectEditError>(
            field: _form.lastVisit,
            label: 'أخر افتقاد',
            clearable: false,
            withTime: true,
            translateError: ObjectEditError.messageOf,
          ),
          AdvancedColorField<ObjectEditError>(
            field: _form.color,
            translateError: ObjectEditError.messageOf,
          ),
        ],
      ),
    );
  }

  Future<void> _drawLineOnMap() async {
    final street = _form.toObject();
    final drawn = await Navigator.of(context).push<Street>(
      MaterialPageRoute(
        builder: (context) => EditStreetLineMap(
          onSaved: Navigator.of(context).pop,
          initialStreet: street,
          geomapOptions: GeomapOptions(
            layers: const {GeoMapLayer.streets},
            selectedStreets: {street},
          ),
        ),
      ),
    );

    if (drawn != null && !_form.isDisposed) _form.line.setValue(drawn.line);
  }

  @override
  void dispose() {
    unawaited(_saveCubit.close());
    _form.dispose();
    super.dispose();
  }
}

abstract final class EditStreetScreenKeys {
  static const Key lineButton = ValueKey('Edit Street Line Button Key');
  static const Key areasField = ValueKey('Edit Street Areas Field Key');
}
