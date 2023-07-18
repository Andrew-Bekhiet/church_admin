import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class EditArea extends StatefulWidget {
  static final route = GoRoute(
    path: 'editArea',
    builder: (context, state) {
      return EditArea(
        area: (state.extra as Map?)?['area'] as Area?,
      );
    },
  );

  final Area? area;

  const EditArea({
    required this.area,
    super.key,
  });

  @override
  State<EditArea> createState() => _EditAreaState();
}

class _EditAreaState extends State<EditArea> {
  late final EditObjectController<Area> _controller = EditObjectController(
    onCreate: (object) => DatabaseService.I.areas.insertArea(newArea: object),
    onUpdate: (oldArea, newArea) => DatabaseService.I.areas.updateArea(
      oldArea: oldArea,
      newArea: newArea,
    ),
    onDelete: (object) => DatabaseService.I.areas.deleteArea(areaId: object.id),
    toJson: (object) => object.toJson(),
    newObject: widget.area ?? Area(id: const Uuid().v4(), name: 'منطقة جديدة'),
    initialObject: widget.area,
  );

  Area get initialArea => _controller.initialObject!;
  Area get newArea => _controller.newObject;
  set newArea(Area a) => _controller.newObject = a;

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.area,
      getController: () => _controller,
      objectOnEmptyPhoto: Area(id: '', name: ''),
      builder: (context, _controller) => Column(
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
            onPressed: _editGeolocation(context),
            icon: const Icon(Icons.edit_location),
            label: const Text('المكان على الخريطة'),
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
