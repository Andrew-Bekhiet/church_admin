import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class ViewArea extends StatefulWidget {
  final Area? area;
  final String areaId;

  const ViewArea({required this.areaId, this.area, super.key});

  @override
  State<ViewArea> createState() => _ViewAreaState();
}

class _ViewAreaState extends State<ViewArea> {
  late final _streetsController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.streets.streamAll(
        where: Stream.value([
          Filter(
            StreetFields().areas.redirectTo(AreaFields().id),
            PrimitiveOperator.eq,
            widget.areaId,
          ),
        ]),
        orderBy: _streetsArrangement.orderByStream,
        secondLineField: _streetsArrangement.secondLineFieldStream,
      ),
    ),
  );

  final _streetsArrangement = ListArrangementController(
    type: AdvancedQueriesMetadata().street,
    defaultOrderBy: () => [
      OrderBy(field: StreetFields().name),
    ],
  );

  late final _familiesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.families.streamAll(
        where: Stream.value([
          Filter(
            FamilyFields().area.redirectTo(AreaFields().id),
            PrimitiveOperator.eq,
            widget.areaId,
          ),
        ]),
        orderBy: _familiesArrangement.orderByStream,
        secondLineField: _familiesArrangement.secondLineFieldStream,
      ),
    ),
  );

  final _familiesArrangement = ListArrangementController(
    type: AdvancedQueriesMetadata().family,
    defaultOrderBy: () => [OrderBy(field: FamilyFields().name)],
  );

  late final _storesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.stores.streamAll(
        where: Stream.value([
          Filter(
            StoreFields().area.redirectTo(AreaFields().id),
            PrimitiveOperator.eq,
            widget.areaId,
          ),
        ]),
        orderBy: _storesArrangement.orderByStream,
        secondLineField: _storesArrangement.secondLineFieldStream,
      ),
    ),
  );

  final _storesArrangement = ListArrangementController(
    type: AdvancedQueriesMetadata().store,
    defaultOrderBy: () => [
      OrderBy(field: StoreFields().name),
    ],
  );

  late final _personsController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.persons.streamAll(
        where: Stream.value([
          Filter(
            PersonFields().area.redirectTo(AreaFields().id),
            PrimitiveOperator.eq,
            widget.areaId,
          ),
        ]),
        orderBy: _personsArrangement.orderByStream,
        secondLineField: _personsArrangement.secondLineFieldStream,
      ),
    ),
  );

  final _personsArrangement = ListArrangementController(
    type: AdvancedQueriesMetadata().person,
    defaultOrderBy: () => [
      OrderBy(field: PersonFields().name),
    ],
  );

  final Set<ViewableObjectListController> _controllersToDispose = {};

  late final Stream<Area?> stream = DatabaseService.I.areas.streamSingleById(
    id: widget.areaId,
  );

  late final viewableObjectService = ViewableObjectService.I;

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails<Area>(
      objectId: widget.areaId,
      object: widget.area,
      objectStream: stream,
      childrenTypes: const [Street, Family, Person, Store],
      tabsContentBuilders: {
        Street: (context) => OrderedViewableObjectList(
          arrangementController: _streetsArrangement,
          objectsController: _streetsController,
        ),
        Family: (context) => OrderedViewableObjectList(
          arrangementController: _familiesArrangement,
          objectsController: _familiesController,
        ),
        Person: (context) => OrderedViewableObjectList(
          arrangementController: _personsArrangement,
          objectsController: _personsController,
        ),
        Store: (context) => OrderedViewableObjectList(
          arrangementController: _storesArrangement,
          objectsController: _storesController,
        ),
      },
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
        filtersWidget: TabAwareSortButton(onPressed: _showArrangementSheet),
        tabs: [
          (
            icon: viewableObjectService.getDefaultIconFor<Street>(),
            label: 'الشوارع',
          ),
          (
            icon: viewableObjectService.getDefaultIconFor<Family>(),
            label: 'العائلات',
          ),
          (
            icon: viewableObjectService.getDefaultIconFor<Person>(),
            label: 'المخدومين',
          ),
          (
            icon: viewableObjectService.getDefaultIconFor<Store>(),
            label: 'المتاجر',
          ),
        ],
      ),
      detailsBuilder: (context, area) => SliverList(
        delegate: SliverChildListDelegate([
          if (area.bounds != null)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: FilledButton.icon(
                label: const Text('الموقع على الخريطة'),
                icon: const Icon(Symbols.map),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ViewGeodataMap(
                      initialGeomapOptions: GeomapOptions(
                        selectedAreas: {area},
                      ),
                    ),
                  ),
                ),
              ),
            ),
          HistoryProperty(
            name: 'أخر افتقاد',
            value: area.lastVisit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.history
                  .paginateVisitHistory<Area>(
                    id: area.id,
                  ),
            ),
          ),
          HistoryProperty(
            name: 'أخر تحديث للبيانات',
            value: area.lastEdit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.history
                  .paginateEditHistory<Area>(
                    id: area.id,
                  ),
            ),
          ),
          ListTile(
            title: const Text('الخدام المسؤولين'),
            subtitle: area.adminUsers?.isNotEmpty ?? false
                ? AdminUsers(users: area.adminUsers!)
                : const Text('لا يوجد خدام محددين للمنطقة'),
          ),
        ]),
      ),
      editButtonBuilder: (context, area) => IconButton(
        tooltip: 'تعديل',
        onPressed: () =>
            EditAreaRoute(intent: UpdateArea(area: area)).push(context),
        icon: const Icon(Symbols.edit),
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على المنطقة',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      bottomNavBarBuilder: (context, tabController) => TabbedTotalCountLabel(
        tabController: tabController,
        unitByController: {
          _streetsController: 'شارع',
          _familiesController: 'عائلة',
          _personsController: 'مخدوم',
          _storesController: 'متجر',
        },
      ),
      floatingActionButtonBuilder: (context, tabController, area) =>
          SwitchingFAB.fromTabController(
            tabController: tabController,
            icons: const [
              Icon(Symbols.add_road),
              Icon(Symbols.group_add),
              Icon(Symbols.person_add),
              Icon(Symbols.add_business),
            ],
            onTap: (newIndex) {
              if (newIndex == 0) {
                unawaited(
                  EditStreetRoute(
                    withArea: area,
                  ).push(context),
                );
              } else if (newIndex == 1) {
                unawaited(
                  EditFamilyRoute(
                    withAddress: Address(area: area),
                  ).push(context),
                );
              } else if (newIndex == 2) {
                unawaited(
                  EditPersonRoute(
                    intent: CreatePersonInArea(area: area),
                  ).push(context),
                );
              } else if (newIndex == 3) {
                unawaited(
                  const EditStoreRoute().push(context),
                );
              }
            },
          ),
    );
  }

  Future<void> _showArrangementSheet(int currentTabIndex) async {
    final arrangementController = switch (currentTabIndex) {
      0 => _streetsArrangement,
      1 => _familiesArrangement,
      2 => _personsArrangement,
      3 => _storesArrangement,
      _ => throw UnimplementedError(),
    };

    await arrangementController.edit(context);
  }

  ViewableObjectListController<T>
  _ensureWillDispose<T extends ViewableWithIDAndImage>(
    ViewableObjectListController<T> controller,
  ) {
    _controllersToDispose.add(controller);

    return controller;
  }

  @override
  void dispose() {
    unawaited(Future.wait(_controllersToDispose.map((e) => e.dispose())));
    _streetsArrangement.dispose();
    _familiesArrangement.dispose();
    _personsArrangement.dispose();
    _storesArrangement.dispose();

    super.dispose();
  }
}
