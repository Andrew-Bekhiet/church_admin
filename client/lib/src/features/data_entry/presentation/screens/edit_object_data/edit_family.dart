import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class EditFamily extends StatefulWidget {
  final Family? family;
  final Set<Family>? children;
  final Set<Family>? parents;

  const EditFamily({
    required this.family,
    this.children,
    this.parents,
    super.key,
  });

  @override
  State<EditFamily> createState() => _EditFamilyState();
}

class _EditFamilyState extends State<EditFamily> {
  late EditObjectController<Family> _controller;

  Family get initialFamily => _controller.initialObject!;
  Family get newFamily => _controller.newObject;
  set newFamily(Family f) => _controller.newObject = f;

  bool _relatedFamiliesLoaded = false;

  @override
  void initState() {
    super.initState();

    final oldFamily = widget.family;

    _controller = EditObjectController(
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
      newObject: oldFamily ??
          Family(
            id: const Uuid().v4(),
            name: 'عائلة جديدة',
            children: widget.children?.toList() ?? [],
            parents: widget.parents?.toList() ?? [],
          ),
      initialObject: oldFamily,
    );

    _loadRelatedFamilies();
  }

  @override
  Widget build(BuildContext context) {
    return EditObjectData(
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
          if (newFamily.status == MartialStatus.widowed)
            TextFormField(
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
            ).withPadding(const EdgeInsets.symmetric(vertical: 8))
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
          TextFormField(
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
          ).withPadding(const EdgeInsets.symmetric(vertical: 8)),
          ColorField(
            initialValue: newFamily.color,
            onChanged: (value) => setState(
              () => newFamily = newFamily.copyWith(color: value),
            ),
          ),
          const Divider(),
          MultiObjectSelectionField<Family>(
            nullable: false,
            key: ValueKey(('parents', newFamily.parents)),
            validator: (p) => p?.contains(newFamily) ?? false
                ? 'لا يمكن أن تكون عائلة أب أو أم لنفسها'
                : null,
            decoration: InputDecoration(
              prefixIcon: !_relatedFamiliesLoaded
                  ? const Center(
                      heightFactor: 1,
                      widthFactor: 1,
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : null,
              errorMaxLines: 2,
            ),
            initialValue: newFamily.parents?.toSet() ?? {},
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.families.streamAll(searchQuery: s),
            ),
            labelText: 'عائلات الأب والأم',
            onChanged: (value) => newFamily = newFamily.copyWith(
              parents: value?.toList(),
            ),
            itemBuilder: (context, family, config) {
              return ViewableObjectWidget(
                family,
                config: config,
                wrapInCard: true,
              );
            },
            builder: (context, state) {
              return state.value != null
                  ? IgnorePointer(
                      child: Column(
                        children: [
                          for (final family in state.value!)
                            ViewableObjectWidget(
                              family,
                              isDense: true,
                            ),
                        ],
                      ),
                    )
                  : null;
            },
          ),
          MultiObjectSelectionField<Family>(
            nullable: false,
            key: ValueKey(('children', newFamily.children)),
            validator: (c) => c?.contains(newFamily) ?? false
                ? 'لا يمكن أن تكون عائلة أبن أو أبنة لنفسها'
                : null,
            decoration: InputDecoration(
              prefixIcon: !_relatedFamiliesLoaded
                  ? const Center(
                      heightFactor: 1,
                      widthFactor: 1,
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : null,
              errorMaxLines: 2,
            ),
            initialValue: newFamily.children?.toSet() ?? {},
            listController: (s) => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.families.streamAll(searchQuery: s),
            ),
            labelText: 'عائلات الأبناء',
            onChanged: (value) => newFamily = newFamily.copyWith(
              children: value?.toList(),
            ),
            itemBuilder: (context, family, config) {
              return ViewableObjectWidget(
                family,
                config: config,
                wrapInCard: true,
              );
            },
            builder: (context, state) {
              return state.value != null
                  ? IgnorePointer(
                      child: Column(
                        children: [
                          for (final family in state.value!)
                            ViewableObjectWidget(
                              family,
                              isDense: true,
                            ),
                        ],
                      ),
                    )
                  : null;
            },
          ),
          DateTimeField(
            label: 'أخر افتقاد',
            nullable: true,
            initialValue: newFamily.lastVisit?.time,
            onChanged: (v) {
              if (v != null) {
                newFamily = newFamily.copyWith(
                  lastVisit: LastRecordedByInfo(
                    time: v,
                    recordedBy: AuthBloc.I.currentUser?.uid,
                  ),
                );
              }
            },
            validator: (v) => null,
          ),
          DateTimeField(
            label: 'أخر افتقاد للأب الكاهن',
            nullable: true,
            initialValue: newFamily.lastFatherVisit?.time,
            onChanged: (v) {
              if (v != null) {
                newFamily = newFamily.copyWith(
                  lastFatherVisit: LastRecordedByInfo(
                    time: v,
                    recordedBy: AuthBloc.I.currentUser?.uid,
                    isFatherVisit: true,
                  ),
                );
              }
            },
            validator: (v) => null,
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
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

          _controller = _controller.copyWith(
            initialObject: populatedInitialFamily,
            newObject: populatedInitialFamily,
          );

          _relatedFamiliesLoaded = true;

          if (mounted) {
            setState(() {});
          }
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
