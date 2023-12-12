import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class EditStreet extends StatefulWidget {
  static final route = GoRoute(
    path: 'editStreet',
    builder: (context, state) {
      return EditStreet(
        street: (state.extra as Map?)?['street'] as Street?,
      );
    },
  );

  final Street? street;

  const EditStreet({
    required this.street,
    super.key,
  });

  @override
  State<EditStreet> createState() => _EditStreetState();
}

class _EditStreetState extends State<EditStreet> {
  late final EditObjectController<Street> _controller = EditObjectController(
    onCreate: (object) =>
        DatabaseService.I.streets.createObject(newObject: object),
    onUpdate: (oldStreet, newStreet) => DatabaseService.I.streets.updateObject(
      oldObject: oldStreet,
      newObject: newStreet,
    ),
    onDelete: (object) => DatabaseService.I.streets.deleteById(id: object.id),
    toJson: (object) => object.toJson(),
    newObject:
        widget.street ?? Street(id: const Uuid().v4(), name: 'شارع جديد'),
    initialObject: widget.street,
  );

  Street get initialStreet => _controller.initialObject!;
  Street get newStreet => _controller.newObject;
  set newStreet(Street p) => _controller.newObject = p;

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.street,
      getController: () => _controller,
      objectOnEmptyPhoto: Street(id: '', name: ''),
      builder: (context, _controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NameField(
            initialValue: newStreet.name,
            onValueChanged: (value) => newStreet = newStreet.copyWith(
              name: value.trim(),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
          ),
          FilledButton.tonalIcon(
            onPressed: _editGeolocation(context),
            icon: const Icon(Icons.edit_location),
            label: const Text('المكان على الخريطة'),
          ),
          DateTimeField(
            label: 'أخر افتقاد',
            initialValue: newStreet.lastVisit?.time,
            onChanged: (v) {
              if (v != null) {
                newStreet = newStreet.copyWith(
                  lastVisit: LastRecordedByInfo(
                    time: v,
                    recordedBy: AuthService.I.currentUser?.uid,
                  ),
                );
              }
            },
            validator: (v) => null,
          ),
          ColorField(
            initialValue: newStreet.color,
            onChanged: (value) => setState(
              () => newStreet = newStreet.copyWith(color: value),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }

  void Function() _editGeolocation(BuildContext context) => () async {
        final Street? result = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EditStreetLineMap(
              onSaved: Navigator.of(context).pop,
              initialStreet: newStreet,
              geomapOptions: GeomapOptions(
                layers: const {
                  GeoMapLayer.streets,
                },
                selectedStreets: {newStreet},
              ),
            ),
          ),
        );
        if (result != null) {
          newStreet = result;
        }
      };
}
