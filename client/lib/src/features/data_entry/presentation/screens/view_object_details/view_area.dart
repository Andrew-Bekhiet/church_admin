import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

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
        orderBy: _streetsOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _streetsOrderBy = BehaviorSubject.seeded(
    ViewObjectDetails.getLastOrderByFor(
      type: AdvancedQueriesMetadata().street,
      orElse: () => [
        OrderBy(field: StreetFields().name),
      ],
    ),
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
        orderBy: _familiesOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _familiesOrderBy =
      BehaviorSubject.seeded(
        ViewObjectDetails.getLastOrderByFor(
          type: AdvancedQueriesMetadata().family,
          orElse: () => [OrderBy(field: FamilyFields().name)],
        ),
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
        orderBy: _storesOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _storesOrderBy = BehaviorSubject.seeded(
    ViewObjectDetails.getLastOrderByFor(
      type: AdvancedQueriesMetadata().store,
      orElse: () => [
        OrderBy(field: StoreFields().name),
      ],
    ),
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
        orderBy: _personsOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _personsOrderBy = BehaviorSubject.seeded(
    ViewObjectDetails.getLastOrderByFor(
      type: AdvancedQueriesMetadata().person,
      orElse: () => [
        OrderBy(field: PersonFields().name),
      ],
    ),
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
          orderByStream: _streetsOrderBy.stream,
          initialOrderBy: _streetsOrderBy.value,
          objectsController: _streetsController,
        ),
        Family: (context) => OrderedViewableObjectList(
          orderByStream: _familiesOrderBy.stream,
          initialOrderBy: _familiesOrderBy.value,
          objectsController: _familiesController,
        ),
        Person: (context) => OrderedViewableObjectList(
          orderByStream: _personsOrderBy.stream,
          initialOrderBy: _personsOrderBy.value,
          objectsController: _personsController,
        ),
        Store: (context) => OrderedViewableObjectList(
          orderByStream: _storesOrderBy.stream,
          initialOrderBy: _storesOrderBy.value,
          objectsController: _storesController,
        ),
      },
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
        filtersWidget: TabAwareSortButton(onPressed: _showOrderBySheet),
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
        onPressed: () => EditAreaRoute($extra: area).push(context),
        icon: const Icon(Symbols.edit),
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على المنطقة',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      bottomNavBarBuilder: (context, tabController) => TotalCountLabel(
        countStream: tabController.animation!.asStream().switchMap(
          (index) {
            final currentIndex = index.round();

            return switch (currentIndex) {
              0 => _streetsController,
              1 => _familiesController,
              2 => _personsController,
              3 => _storesController,
              _ => throw UnimplementedError(),
            }.totalCountStream.map(
              (c) => switch (currentIndex) {
                0 => '$c شارع',
                1 => '$c عائلة',
                2 => '$c مخدوم',
                3 => '$c متجر',
                _ => throw UnimplementedError(),
              },
            );
          },
        ),
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
                    $extra: EditStreetExtra(area: area),
                  ).push(context),
                );
              } else if (newIndex == 1) {
                unawaited(
                  EditFamilyRoute(
                    $extra: EditFamilyExtra(area: area),
                  ).push(context),
                );
              } else if (newIndex == 2) {
                unawaited(
                  EditPersonRoute(
                    $extra: EditPersonExtra(area: area),
                  ).push(context),
                );
              } else if (newIndex == 3) {
                unawaited(
                  EditStoreRoute(
                    $extra: EditStoreExtra(area: area),
                  ).push(context),
                );
              }
            },
          ),
    );
  }

  @override
  void dispose() {
    unawaited(Future.wait(_controllersToDispose.map((e) => e.dispose())));
    unawaited(_streetsOrderBy.close());
    unawaited(_familiesOrderBy.close());
    unawaited(_personsOrderBy.close());
    unawaited(_storesOrderBy.close());

    super.dispose();
  }

  Future<void> _showOrderBySheet(int currentTabIndex) async {
    final advancedQueriesMetadata = AdvancedQueriesMetadata();

    final (queryableType, orderBySubject) = switch (currentTabIndex) {
      0 => (advancedQueriesMetadata.street, _streetsOrderBy),
      1 => (advancedQueriesMetadata.family, _familiesOrderBy),
      2 => (advancedQueriesMetadata.person, _personsOrderBy),
      3 => (advancedQueriesMetadata.store, _storesOrderBy),
      _ => throw UnimplementedError(),
    };

    await showOrderBySheetAndSave(
      context,
      queryableType: queryableType,
      orderBySubject: orderBySubject,
    );
  }

  ViewableObjectListController<T>
  _ensureWillDispose<T extends ViewableWithIDAndImage>(
    ViewableObjectListController<T> controller,
  ) {
    _controllersToDispose.add(controller);

    return controller;
  }
}
