import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class EditStore extends StatefulWidget {
  static final route = GoRoute(
    path: 'editStore',
    builder: (context, state) {
      return EditStore(
        store: (state.extra as Map?)?['store'] as Store?,
      );
    },
  );

  final Store? store;

  const EditStore({
    required this.store,
    super.key,
  });

  @override
  State<EditStore> createState() => _EditStoreState();
}

class _EditStoreState extends State<EditStore> {
  late final EditObjectController<Store> _controller = EditObjectController(
    onCreate: (object) =>
        DatabaseService.I.stores.insertStore(newStore: object),
    onUpdate: (oldStore, newStore) => DatabaseService.I.stores.updateStore(
      oldStore: oldStore,
      newStore: newStore,
    ),
    onDelete: (object) =>
        DatabaseService.I.stores.deleteStore(storeId: object.id),
    toJson: (object) => object.toJson(),
    newObject: widget.store ?? Store(id: const Uuid().v4(), name: 'متجر جديد'),
    initialObject: widget.store,
  );

  Store get initialStore => _controller.initialObject!;
  Store get newStore => _controller.newObject;
  set newStore(Store p) => _controller.newObject = p;

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.store,
      getController: () => _controller,
      objectOnEmptyPhoto: Store(id: '', name: ''),
      builder: (context, _controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NameField(
            initialValue: newStore.name,
            onValueChanged: (value) => newStore = newStore.copyWith(
              name: value.trim(),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
          ),
          FilledButton.tonalIcon(
            onPressed: _editGeolocation(context),
            icon: const Icon(Icons.edit_location),
            label: const Text('المكان على الخريطة'),
          ),
          ObjectSelectionField<Family, Family?>(
            decoration: const InputDecoration(errorMaxLines: 2),
            initialValue: newStore.family,
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.families.streamAll(searchQuery: s),
            ),
            labelText: 'العائلة المسؤولة',
            onChanged: (value) => newStore = newStore.copyWith(
              family: value,
              familyId: value?.id,
            ),
            validator: (value) {
              if (value == null && newStore.geolocation == null) {
                return 'يجب اختيار عائلة أو تحديد الموقع';
              }
              return null;
            },
            builder: (context, state) {
              return state.value != null
                  ? IgnorePointer(
                      child: ViewableObjectWidget(
                        state.value!,
                        dense: true,
                      ),
                    )
                  : null;
            },
          ),
          ColorField(
            initialValue: newStore.color,
            onChanged: (value) => setState(
              () => newStore = newStore.copyWith(color: value),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }

  void Function() _editGeolocation(BuildContext context) => () async {
        final Store? result = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EditStoreLocationMap(
              onSaved: Navigator.of(context).pop,
              initialStore: newStore,
              geomapOptions: GeomapOptions(
                layers: const {
                  GeoMapLayer.stores,
                },
                selectedStores: {newStore},
              ),
            ),
          ),
        );
        if (result != null) {
          newStore = result;
        }
      };
}
