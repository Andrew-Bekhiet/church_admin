import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class PersonServiceSelectionPage extends StatefulWidget {
  final Set<Service> selected;

  const PersonServiceSelectionPage({required this.selected, super.key});

  @override
  State<PersonServiceSelectionPage> createState() =>
      _PersonServiceSelectionPageState();
}

class _PersonServiceSelectionPageState extends State<PersonServiceSelectionPage>
    with TickerProviderStateMixin {
  final search = BehaviorSubject<String?>.seeded(null);
  late final listController = ViewableObjectListController<Service>(
    objectsPaginatableStream: DatabaseService.I.services.streamAll(
      searchQuery: search,
    ),
  );

  late final BehaviorSubject<Map<String, Service>> selected =
      BehaviorSubject.seeded({for (final s in widget.selected) s.id: s});

  final _animationControllers = <Object, AnimationController>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchField(searchSink: search, autofocus: false),
        actions: [
          IconButton(
            key: PersonServiceSelectionPageKeys.confirmButton,
            onPressed: () =>
                Navigator.of(context).pop(selected.value.values.toSet()),
            icon: const Icon(Symbols.check),
          ),
        ],
      ),
      body: ServicesHierarchyList(
        listController: listController,
        showClasses: false,
        groupBuilder:
            (
              context, {
              required service,
              required group,
            }) => StreamBuilder<bool>(
              initialData: false,
              stream: selected.map(
                (selection) =>
                    selection[service.id]?.groups?.singleWhereOrNull(
                      (g) => g.id == group.id,
                    ) !=
                    null,
              ),
              builder: (context, entryChecked) => CheckboxListTile(
                onChanged: (c) {
                  if (c ?? false) {
                    selected.add({
                      ...selected.value,
                      service.id: (selected.value[service.id] ?? service)
                          .copyWith(
                            groups: [
                              ...selected.value[service.id]?.groups ?? [],
                              group,
                            ],
                          ),
                    });
                  } else {
                    selected.add({
                      ...selected.value,
                      service.id: selected.value[service.id]!.copyWith(
                        groups: selected.value[service.id]!.groups!
                            .where((o) => o.id != group.id)
                            .toList(),
                      ),
                    });
                  }
                },
                value: entryChecked.requireData,
                secondary: ImageObjectWidget(group),
                title: Text(group.name),
              ),
            ),
        serviceTrailingBuilder:
            (
              context,
              s, {
              onLongPress,
              onTap,
              subtitle,
              trailing,
            }) => StreamBuilder<bool>(
              initialData: false,
              stream: selected.map(
                (selection) => selection.containsKey(s.id),
              ),
              builder: (context, entryChecked) => Checkbox(
                key: PersonServiceSelectionPageKeys.serviceCheckbox(s.id),
                onChanged: (c) {
                  if (c ?? false) {
                    selected.add({
                      ...selected.value,
                      s.id: s.copyWith(groups: []),
                    });
                  } else {
                    selected.add({...selected.value..remove(s.id)});
                  }
                },
                value: entryChecked.requireData,
              ),
            ),
      ),
    );
  }

  @override
  void dispose() {
    for (final c in _animationControllers.values) {
      c.dispose();
    }

    unawaited(listController.dispose());
    unawaited(search.close());
    unawaited(selected.close());
    super.dispose();
  }
}

abstract final class PersonServiceSelectionPageKeys {
  static const Key confirmButton = ValueKey(
    'Person Service Selection Confirm Button Key',
  );

  static Key serviceCheckbox(String serviceId) =>
      ValueKey(('Person Service Selection Checkbox', serviceId));
}
