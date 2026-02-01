import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class EditAdminOnDataWidget extends StatelessWidget {
  final List<AdminOnData> adminOn;
  final void Function(List<AdminOnData>) onAdminOnChanged;

  const EditAdminOnDataWidget({
    required this.adminOn,
    required this.onAdminOnChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card.outlined(
          color: theme.colorScheme.surfaceContainerLow,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: theme.colorScheme.outline),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: adminOn
                  .map(UserAdminScope.fromAdminOnData)
                  .mapIndexed(
                    (index, userAdminScope) => EditUserAdminScopeWidget(
                      userAdminScope: userAdminScope,
                      onDuplicate: userAdminScope.object is Service
                          ? () => onAdminOnChanged(
                              [
                                ...adminOn,
                                userAdminScope.toAdminOnData(
                                  permissionId: '',
                                ),
                              ],
                            )
                          : null,
                      onChanged: (newUserAdminScope) => onAdminOnChanged(
                        adminOn
                            .mapIndexed(
                              (i, a) => i == index
                                  ? newUserAdminScope.toAdminOnData(
                                      permissionId: a.permissionId,
                                    )
                                  : a,
                            )
                            .toList(),
                      ),
                      onDelete: () => onAdminOnChanged(
                        adminOn
                            .whereIndexed(
                              (i, a) => i != index,
                            )
                            .toList(),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ElevatedButton.icon(
            icon: const Icon(Symbols.add),
            label: const Text('إضافة أمانة جديدة'),
            onPressed: () => _showAddAdminOnDialog(context),
          ),
        ),
      ],
    );
  }

  Future<void> _showAddAdminOnDialog(BuildContext context) async {
    final search = BehaviorSubject<String?>.seeded(null);

    final existingAreas = adminOn.map((a) => a.area).nonNulls.toList();
    final existingServices = adminOn.map((a) => a.service).nonNulls.toList();
    final existingGroups = adminOn.map((a) => a.group).nonNulls.toList();

    final areasSelectionController = SelectionController<Area>(
      equality: EqualityBy((a) => a.id),
      initialSelection: existingAreas,
    );
    final servicesSelectionController = SelectionController<Service>(
      equality: EqualityBy((a) => a.id),
      initialSelection: existingServices,
    );
    final groupsSelectionController = SelectionController<Group>(
      equality: EqualityBy((a) => a.id),
      initialSelection: existingGroups,
    );

    final result = await Navigator.of(context)
        .push<({Set<Area> areas, Set<Service> services, Set<Group> groups})>(
          MaterialPageRoute(
            builder: (context) => DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  title: TitleSearchField(
                    searchStream: search,
                    title: const Text('إضافة أمانة جديدة'),
                  ),
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(
                          ViewableObjectService.I.getDefaultIconFor<Area>(),
                        ),
                        text: 'المناطق',
                      ),
                      Tab(
                        icon: Icon(
                          ViewableObjectService.I.getDefaultIconFor<Service>(),
                        ),
                        text: 'الخدمات',
                      ),
                      Tab(
                        icon: Icon(
                          ViewableObjectService.I.getDefaultIconFor<Group>(),
                        ),
                        text: 'المجموعات',
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    ViewableObjectList<Area>(
                      objectsController: ViewableObjectListController(
                        selectionController: areasSelectionController,
                        filterStream: search,
                        objectsPaginatableStream: DatabaseService.I.areas
                            .streamAll(
                              searchQuery: search,
                            ),
                      ),
                    ),
                    ViewableObjectList<Service>(
                      objectsController: ViewableObjectListController(
                        selectionController: servicesSelectionController,
                        filterStream: search,
                        objectsPaginatableStream: DatabaseService.I.services
                            .streamAll(
                              searchQuery: search,
                            ),
                      ),
                    ),
                    ViewableObjectList<Group>(
                      objectsController: ViewableObjectListController(
                        selectionController: groupsSelectionController,
                        filterStream: search,
                        objectsPaginatableStream: DatabaseService.I.groups
                            .streamAll(
                              searchQuery: search,
                            ),
                      ),
                    ),
                  ],
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () => Navigator.of(context).pop((
                    areas: areasSelectionController.currentValue,
                    services: servicesSelectionController.currentValue,
                    groups: groupsSelectionController.currentValue,
                  )),
                  child: const Icon(Symbols.save),
                ),
              ),
            ),
          ),
        );

    if (result == null) return;

    final areasDiff = diff(existingAreas.toSet(), result.areas);
    final servicesDiff = diff(
      existingServices.toSet(),
      result.services,
    );
    final groupsDiff = diff(existingGroups.toSet(), result.groups);

    onAdminOnChanged([
      ...adminOn.where(
        (a) =>
            !areasDiff.removed.contains(a.area) &&
            !servicesDiff.removed.contains(a.service) &&
            !groupsDiff.removed.contains(a.group),
      ),
      for (final area in areasDiff.added)
        AdminOnData(permissionId: '', area: area),
      for (final service in servicesDiff.added)
        AdminOnData(permissionId: '', service: service),
      for (final group in groupsDiff.added)
        AdminOnData(permissionId: '', group: group),
    ]);
  }
}
