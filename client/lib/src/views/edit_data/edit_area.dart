import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
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
    final foregroundColor = newArea.color?.findInvert();

    return Theme(
      data: ThemingService.getDefault(primaryOverride: newArea.color),
      child: Scaffold(
        body: Form(
          key: _controller.formKey,
          onWillPop: () => _controller.confirmExit(context),
          child: CustomScrollView(
            slivers: [
              PhotoField(
                object: newArea,
                initialValue: _controller.photoFieldState,
                objectOnEmpty: Area(id: '', name: ''),
                canDelete: _controller.isUpdate,
                backgroundColor: newArea.color,
                foregroundColor: foregroundColor,
                addActions: [
                  if (_controller.isUpdate)
                    IconButton(
                      onPressed: () => _controller.delete(context),
                      icon: const Icon(Icons.delete),
                      tooltip: 'حذف',
                    ),
                ],
                onSaved: (v) => v?.hasChanged ?? false
                    ? _controller.photoFieldState = v!
                    : null,
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: FocusScope(
                  debugLabel: 'EditAreaFocusScope',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        NameField(
                          initialValue: newArea.name,
                          onValueChanged: (value) => newArea = newArea.copyWith(
                            name: value.trim(),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 8),
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
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _controller.save(context),
          tooltip: 'حفظ',
          child: const Icon(Icons.save),
        ),
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
