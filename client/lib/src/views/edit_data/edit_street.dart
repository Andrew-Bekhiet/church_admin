import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
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
        DatabaseService.I.streets.insertStreet(newStreet: object),
    onUpdate: (oldStreet, newStreet) => DatabaseService.I.streets.updateStreet(
      oldStreet: oldStreet,
      newStreet: newStreet,
    ),
    onDelete: (object) =>
        DatabaseService.I.streets.deleteStreet(streetId: object.id),
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
    final foregroundColor = newStreet.color?.findInvert();

    return Theme(
      data: ThemingService.getDefault(primaryOverride: newStreet.color),
      child: Scaffold(
        body: Form(
          key: _controller.formKey,
          onWillPop: () => _controller.confirmExit(context),
          child: CustomScrollView(
            slivers: [
              PhotoField(
                object: newStreet,
                initialValue: _controller.photoFieldState,
                objectOnEmpty: Street(id: '', name: ''),
                canDelete: widget.street != null,
                backgroundColor: newStreet.color,
                foregroundColor: foregroundColor,
                addActions: [
                  if (widget.street != null)
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
                  debugLabel: 'EditStreetFocusScope',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        NameField(
                          initialValue: newStreet.name,
                          onValueChanged: (value) =>
                              newStreet = newStreet.copyWith(
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
                          initialValue: newStreet.color,
                          onChanged: (value) => setState(
                            () => newStreet = newStreet.copyWith(color: value),
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
