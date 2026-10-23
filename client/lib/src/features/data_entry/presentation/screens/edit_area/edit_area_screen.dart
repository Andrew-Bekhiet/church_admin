import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class EditAreaScreen extends StatefulWidget {
  final AreaEditIntent intent;

  const EditAreaScreen({required this.intent, super.key});

  @override
  State<EditAreaScreen> createState() => _EditAreaScreenState();
}

class _EditAreaScreenState extends State<EditAreaScreen> {
  final User? _currentUser = AuthBloc.I.currentUserData;
  late final AreaFormController _form = AreaFormController(
    intent: widget.intent,
    currentUserId: _currentUser?.uid,
  );
  late final ObjectSaveCubit<Area> _saveCubit = ObjectSaveCubit(
    form: _form,
    dao: DatabaseService.I.areas,
    photoUploader: RemotePhotoUploader(DatabaseService.I.photos),
  );

  @override
  Widget build(BuildContext context) {
    return EditObjectScaffold<Area>(
      form: _form,
      saveCubit: _saveCubit,
      canDelete: (saved) => _currentUser?.canDeleteObject(saved) ?? false,
      detailsRouteOf: (area) => ViewAreaRoute(id: area.id, area: area),
      fields: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FilledButton.tonalIcon(
            key: EditAreaScreenKeys.boundsButton,
            style: Theme.of(context).filledTonalButtonStyleWorkaround,
            onPressed: () => unawaited(_drawBoundsOnMap()),
            icon: const Icon(Symbols.edit_location),
            label: const Text('المكان على الخريطة'),
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

  Future<void> _drawBoundsOnMap() async {
    final area = _form.toObject();
    final drawn = await Navigator.of(context).push<Area>(
      MaterialPageRoute(
        builder: (context) => EditAreaPolygonMap(
          onSaved: Navigator.of(context).pop,
          initialArea: area,
          geomapOptions: GeomapOptions(
            layers: const {GeoMapLayer.areas},
            selectedAreas: {area},
          ),
        ),
      ),
    );

    if (drawn != null && !_form.isDisposed) _form.bounds.setValue(drawn.bounds);
  }

  @override
  void dispose() {
    unawaited(_saveCubit.close());
    _form.dispose();
    super.dispose();
  }
}

abstract final class EditAreaScreenKeys {
  static const Key boundsButton = ValueKey('Edit Area Bounds Button Key');
}
