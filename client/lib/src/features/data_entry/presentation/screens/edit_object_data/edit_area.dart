import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:uuid/uuid.dart';

class EditArea extends StatefulWidget {
  final Area? area;

  const EditArea({
    required this.area,
    super.key,
  });

  @override
  State<EditArea> createState() => _EditAreaState();
}

class _EditAreaState extends State<EditArea> {
  late final EditObjectController<Area> _controller;

  @override
  void initState() {
    super.initState();

    final Area? oldArea = widget.area;

    _controller = EditObjectController(
      afterCreate: (object) =>
          ViewAreaRoute(id: object.id, $extra: object).pushReplacement(context),
      onCreate: (object) =>
          DatabaseService.I.areas.createObject(newObject: object),
      onUpdate: (oldArea, newArea) => DatabaseService.I.areas.updateObject(
        oldObject: oldArea,
        newObject: newArea,
      ),
      onDelete: (object) => DatabaseService.I.areas.deleteById(id: object.id),
      toJson: (object) => object.toJson(),
      newObject: oldArea ?? Area(id: const Uuid().v4(), name: ''),
      initialObject: oldArea,
    );
  }

  Area get initialArea => _controller.initialObject!;
  Area get newArea => _controller.newObject;
  set newArea(Area a) => _controller.newObject = a;

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.area,
      getController: () => _controller,
      builder: (context, controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NameField(
            initialValue: newArea.name,
            onValueChanged: (value) => newArea = newArea.copyWith(
              name: value.trim(),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
          ),
          FilledButton.tonalIcon(
            style: Theme.of(context).filledTonalButtonStyleWorkaround,
            onPressed: _editGeolocation(context),
            icon: const Icon(Symbols.edit_location),
            label: const Text('المكان على الخريطة'),
          ),
          DateTimeField(
            label: 'أخر افتقاد',
            initialValue: newArea.lastVisit?.time,
            onChanged: (v) {
              if (v != null) {
                newArea = newArea.copyWith(
                  lastVisit: LastRecordedByInfo(
                    time: v,
                    recordedBy: AuthBloc.I.currentUser?.uid,
                  ),
                );
              }
            },
            validator: (v) => null,
          ),
          ColorField(
            initialValue: newArea.color,
            onChanged: (value) => setState(
              () => newArea = newArea.copyWith(color: value),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }

  void Function() _editGeolocation(BuildContext context) => () async {
        final Area? result = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EditAreaPolygonMap(
              onSaved: Navigator.of(context).pop,
              initialArea: newArea,
              geomapOptions: GeomapOptions(
                layers: const {
                  GeoMapLayer.areas,
                },
                selectedAreas: {newArea},
              ),
            ),
          ),
        );
        if (result != null) {
          newArea = result;
        }
      };
}
