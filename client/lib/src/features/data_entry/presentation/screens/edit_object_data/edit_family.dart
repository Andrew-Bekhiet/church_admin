import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class EditFamily extends StatefulWidget {
  final Family? family;
  final Set<Family>? withChildren;
  final Set<Family>? withParents;
  final Address? withAddress;

  const EditFamily({
    required this.family,
    this.withChildren,
    this.withParents,
    this.withAddress,
    super.key,
  });

  @override
  State<EditFamily> createState() => _EditFamilyState();
}

class _EditFamilyState extends State<EditFamily> {
  late EditObjectController<Family> _controller;
  late final PhoneContactsEditorCubit _phoneContacts = PhoneContactsEditorCubit(
    own: const [],
    family: widget.family?.contacts ?? const [],
    hasFamily: true,
    familyOnly: true,
  );

  bool _relatedFamiliesLoaded = false;

  Family get initialFamily => _controller.initialObject!;
  Family get newFamily => _controller.newObject;
  set newFamily(Family f) => _controller.newObject = f;

  @override
  void initState() {
    super.initState();

    final oldFamily = widget.family;

    _controller = EditObjectController(
      afterCreate: (object) => ViewFamilyRoute(
        id: object.id,
        $extra: object,
      ).pushReplacement(context),
      onCreate: (object) =>
          DatabaseService.I.families.createObject(newObject: object),
      onUpdate: (oldFamily, newFamily) =>
          DatabaseService.I.families.updateFamily(
            oldFamily: oldFamily,
            newFamily: newFamily,
          ),
      onDelete: (object) =>
          DatabaseService.I.families.deleteById(id: object.id),
      toJson: (object) => object.toJson(),
      hasUnsavedInput: () => _phoneContacts.hasUnsavedInput,
      newObject:
          oldFamily ??
          Family(
            id: const Uuid().v4(),
            name: '',
            children: widget.withChildren?.toList() ?? [],
            parents: widget.withParents?.toList() ?? [],
            address: widget.withAddress,
          ),
      initialObject: oldFamily,
    );

    _loadRelatedFamilies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _phoneContacts,
      child: EditObjectData(
        objectData: widget.family,
        getController: () => _controller,
        builder: (context, controller) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NameField(
              initialValue: newFamily.name,
              onValueChanged: (value) => newFamily = newFamily.copyWith(
                name: value.trim(),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8),
            ),
            AddressWithLocationField(
              initialAddress: newFamily.address,
              onAddressChanged: (value) =>
                  newFamily = newFamily.copyWith(address: value),
              onEditLocation: _editGeolocation,
            ),
            BlocListener<PhoneContactsEditorCubit, PhoneContactsEditorState>(
              listenWhen: (previous, current) =>
                  previous.familyContacts != current.familyContacts,
              listener: (context, state) => newFamily = newFamily.copyWith(
                contacts: state.familyContacts,
              ),
              child: const PhoneContactsEditor(),
            ),
            ObjectSelectionField<Church, Church?>(
              initialValue: newFamily.church,
              onCreateCustom: MetadataQuickCreate.church,
              listController: (s) => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.metadata.churches
                    .streamAll(searchQuery: s),
              ),
              dialogFieldLabel: 'الكنيسة',
              onChanged: (value) =>
                  newFamily = newFamily.copyWith(church: value),
              builder: (context, state) {
                return state.value != null ? Text(state.value!.name) : null;
              },
              validator: (v) => null,
            ),
            ObjectSelectionField(
              nullable: false,
              initialValue: ViewableEnumWithID.wrap(newFamily.status),
              listController: (s) => ViewableObjectListController(
                objectsPaginatableStream:
                    ViewableEnumWithID.createPaginatableStream(
                      MartialStatus.values,
                      s,
                    ),
              ),
              onChanged: (value) => setState(
                () => newFamily = newFamily.copyWith(status: value!.enumValue),
              ),
              dialogFieldLabel: 'الحالة الاجتماعية',
              builder: (context, state) => Text(state.value?.name ?? ''),
            ),
            if (newFamily.status == MartialStatus.widowed ||
                newFamily.status == MartialStatus.widowedWithoutChildren)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFormField(
                  key: const ValueKey('deceasedSpouseName'),
                  decoration: const InputDecoration(
                    labelText: 'اسم المتوفي/ـة',
                  ),
                  initialValue: newFamily.deceasedSpouseName,
                  onChanged: (value) => newFamily = newFamily.copyWith(
                    deceasedSpouseName: value.trim(),
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (value) => value != null && value.isEmpty
                      ? 'الرجاء إدخال اسم المتوفي/ـة'
                      : null,
                ),
              )
            else
              DateTimeField(
                label: 'تاريخ الزواج',
                initialValue: newFamily.marriageDate,
                onChanged: (value) => newFamily = newFamily.copyWith(
                  marriageDate: value,
                ),
                nullable: true,
                withTime: false,
              ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'ملاحظات',
                ),
                initialValue: newFamily.notes,
                onChanged: (value) => newFamily = newFamily.copyWith(
                  notes: value.trim(),
                ),
                textInputAction: TextInputAction.newline,
                maxLines: null,
                validator: (value) => null,
              ),
            ),
            ColorField(
              initialValue: newFamily.color,
              onChanged: (value) => setState(
                () => newFamily = newFamily.copyWith(color: value),
              ),
            ),
            const Divider(),
            FamilyRelativesFields(
              family: newFamily,
              relatedFamiliesLoaded: _relatedFamiliesLoaded,
              onParentsChanged: (value) => newFamily = newFamily.copyWith(
                parents: value?.toList(),
              ),
              onChildrenChanged: (value) => newFamily = newFamily.copyWith(
                children: value?.toList(),
              ),
            ),
            DateTimeField(
              label: 'أخر افتقاد',
              nullable: true,
              initialValue: newFamily.lastVisit?.time,
              onChanged: (v) {
                if (v == null) return;

                newFamily = newFamily.copyWith(
                  lastVisit: LastRecordedByInfo(
                    time: v,
                    recordedBy: AuthBloc.I.currentUser?.uid,
                  ),
                );
              },
              validator: (v) => null,
            ),
            DateTimeField(
              label: 'أخر افتقاد للأب الكاهن',
              nullable: true,
              initialValue: newFamily.lastFatherVisit?.time,
              onChanged: (v) {
                if (v == null) return;

                newFamily = newFamily.copyWith(
                  lastFatherVisit: LastRecordedByInfo(
                    time: v,
                    recordedBy: AuthBloc.I.currentUser?.uid,
                    isFatherVisit: true,
                  ),
                );
              },
              validator: (v) => null,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    unawaited(_phoneContacts.close());
    super.dispose();
  }

  void _loadRelatedFamilies() {
    if (widget.family == null) {
      _relatedFamiliesLoaded = true;
    } else {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) async {
          final relatedFamiliesData = await DatabaseService.I.families
              .getFamilyRelatedFamilies(familyId: initialFamily.id);

          final populatedInitialFamily = initialFamily.copyWith(
            children: relatedFamiliesData?.children ?? initialFamily.children,
            parents: relatedFamiliesData?.parents ?? initialFamily.parents,
          );

          final editedFamily = _controller.newObject;
          bool isUntouched<V>(V? Function(Family) field) =>
              const DeepCollectionEquality().equals(
                field(editedFamily),
                field(initialFamily),
              );
          _controller = _controller.copyWith(
            initialObject: populatedInitialFamily,
            newObject: editedFamily.copyWith(
              children: isUntouched((f) => f.children)
                  ? populatedInitialFamily.children
                  : editedFamily.children,
              parents: isUntouched((f) => f.parents)
                  ? populatedInitialFamily.parents
                  : editedFamily.parents,
            ),
          );

          _relatedFamiliesLoaded = true;

          if (mounted) setState(() => _relatedFamiliesLoaded = true);
        },
      );
    }
  }

  Future<Point?> _editGeolocation(BuildContext context) async {
    final Family? result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EditFamilyLocationMap(
          onSaved: Navigator.of(context).pop,
          initialFamily: newFamily,
          geomapOptions: GeomapOptions(
            layers: const {
              GeoMapLayer.families,
            },
            selectedFamilies: {newFamily},
          ),
        ),
      ),
    );
    if (result != null) {
      newFamily = result;
    }

    return result?.geolocation;
  }
}
