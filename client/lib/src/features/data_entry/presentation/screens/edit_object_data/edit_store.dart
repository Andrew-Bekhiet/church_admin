import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class EditStore extends StatefulWidget {
  final Store? store;
  final Family? family;

  const EditStore({
    required this.store,
    this.family,
    super.key,
  });

  @override
  State<EditStore> createState() => _EditStoreState();
}

class _EditStoreState extends State<EditStore> {
  late final EditObjectController<Store> _controller;

  @override
  void initState() {
    super.initState();
    final Store? oldStore = widget.store;

    _controller = EditObjectController(
      onCreate: (object) =>
          DatabaseService.I.stores.createObject(newObject: object),
      onUpdate: (oldStore, newStore) => DatabaseService.I.stores.updateObject(
        oldObject: oldStore,
        newObject: newStore,
      ),
      onDelete: (object) => DatabaseService.I.stores.deleteById(id: object.id),
      toJson: (object) => object.toJson(),
      newObject: oldStore ??
          Store(
            id: const Uuid().v4(),
            name: 'متجر جديد',
            family: widget.family,
            familyId: widget.family?.id,
          ),
      initialObject: oldStore,
    );
  }

  Store get initialStore => _controller.initialObject!;
  Store get newStore => _controller.newObject;
  set newStore(Store p) => _controller.newObject = p;

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
      objectData: widget.store,
      getController: () => _controller,
      builder: (context, controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NameField(
            initialValue: newStore.name,
            onValueChanged: (value) => newStore = newStore.copyWith(
              name: value.trim(),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8),
          ),
          AddressWithLocationField(
            initialAddress: newStore.address,
            onAddressChanged: (value) => setState(
              () => newStore = newStore.copyWith(address: value),
            ),
            onEditLocation: _editGeolocation,
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
                        isDense: true,
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

  Future<Point?> _editGeolocation(BuildContext context) async {
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
    return result?.geolocation;
  }
}
