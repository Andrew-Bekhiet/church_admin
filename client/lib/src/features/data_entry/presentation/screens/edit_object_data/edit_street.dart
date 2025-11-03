import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:uuid/uuid.dart';

class EditStreet extends StatefulWidget {
  final Street? street;
  final Area? withArea;

  const EditStreet({
    required this.street,
    this.withArea,
    super.key,
  });

  @override
  State<EditStreet> createState() => _EditStreetState();
}

class _EditStreetState extends State<EditStreet> {
  late final EditObjectController<Street> _controller;

  @override
  void initState() {
    super.initState();
    final Street? oldStreet = widget.street;

    _controller = EditObjectController(
      afterCreate: (object) => ViewStreetRoute(id: object.id, $extra: object)
          .pushReplacement(context),
      onCreate: (object) =>
          DatabaseService.I.streets.createObject(newObject: object),
      onUpdate: (oldStreet, newStreet) =>
          DatabaseService.I.streets.updateObject(
        oldObject: oldStreet,
        newObject: newStreet,
      ),
      onDelete: (object) => DatabaseService.I.streets.deleteById(id: object.id),
      toJson: (object) => object.toJson(),
      newObject: oldStreet ??
          Street(
            id: const Uuid().v4(),
            name: '',
            areas: [if (widget.withArea != null) widget.withArea!],
          ),
      initialObject: oldStreet,
    );
  }

  Street get initialStreet => _controller.initialObject!;
  Street get newStreet => _controller.newObject;
  set newStreet(Street p) => _controller.newObject = p;

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.street,
      getController: () => _controller,
      builder: (context, controller) => Column(
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
            style: Theme.of(context).filledTonalButtonStyleWorkaround,
            onPressed: _editGeolocation(context),
            icon: const Icon(Symbols.edit_location),
            label: const Text('المكان على الخريطة'),
          ),
          MultiObjectSelectionField<Area>(
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.areas.streamAll(searchQuery: s),
            ),
            initialValue: newStreet.areas?.toSet() ?? {},
            onChanged: (value) => setState(
              () => newStreet = newStreet.copyWith(areas: value?.toList()),
            ),
            builder: (context, state) => state.value?.isEmpty ?? true
                ? const Text('لا توجد مناطق')
                : Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      for (final area in state.value!) ViewableObjectCard(area),
                    ],
                  ),
            nullable: false,
            validator: (v) =>
                v?.isEmpty ?? true ? 'يجب اختيار منطقة واحدة على الأقل' : null,
            labelText: 'المناطق',
          ),
          DateTimeField(
            label: 'أخر افتقاد',
            initialValue: newStreet.lastVisit?.time,
            onChanged: (v) {
              if (v != null) {
                newStreet = newStreet.copyWith(
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
            initialValue: newStreet.color,
            onChanged: (value) => setState(
              () => newStreet = newStreet.copyWith(color: value),
            ),
          ),
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
