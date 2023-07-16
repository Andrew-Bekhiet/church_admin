import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
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
    final foregroundColor = newStore.color?.findInvert();

    return Theme(
      data: ThemingService.getDefault(primaryOverride: newStore.color),
      child: Scaffold(
        body: Form(
          key: _controller.formKey,
          onWillPop: () => _controller.confirmExit(context),
          child: CustomScrollView(
            slivers: [
              PhotoField(
                object: newStore,
                initialValue: _controller.photoFieldState,
                objectOnEmpty: Store(id: '', name: ''),
                canDelete: widget.store != null,
                backgroundColor: newStore.color,
                foregroundColor: foregroundColor,
                addActions: [
                  if (widget.store != null)
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
                  debugLabel: 'EditStoreFocusScope',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          key: ValueKey(newStore.name),
                          decoration: const InputDecoration(
                            labelText: 'الاسم',
                          ),
                          initialValue: newStore.name,
                          onChanged: (value) => newStore = newStore.copyWith(
                            name: value.trim(),
                          ),
                          textInputAction: TextInputAction.next,
                          textCapitalization: TextCapitalization.words,
                          validator: (value) {
                            if (value?.trim().isEmpty ?? true) {
                              return 'يجب ملئ الاسم';
                            }
                            return null;
                          },
                        ).withPadding(const EdgeInsets.symmetric(vertical: 8)),
                        FilledButton.tonalIcon(
                          onPressed: _editGeolocation(context),
                          icon: const Icon(Icons.edit_location),
                          label: const Text('المكان على الخريطة'),
                        ),
                        ObjectSelectionField<Family, Family?>(
                          decoration: const InputDecoration(errorMaxLines: 2),
                          initialValue: newStore.family,
                          listController: (s) => ViewableObjectListController(
                            objectsPaginatableStream: DatabaseService.I.families
                                .streamAll(searchQuery: s),
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
