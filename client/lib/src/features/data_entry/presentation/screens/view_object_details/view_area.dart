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
      ),
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
      ),
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
      ),
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
      ),
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
        Street: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _streetsController,
            ),
        Family: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _familiesController,
            ),
        Person: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _personsController,
            ),
        Store: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _storesController,
            ),
      },
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
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
              objectsPaginatableStream:
                  DatabaseService.I.history.paginateVisitHistory<Area>(
                id: area.id,
              ),
            ),
          ),
          HistoryProperty(
            name: 'أخر تحديث للبيانات',
            value: area.lastEdit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.history.paginateEditHistory<Area>(
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
      bottomNavBarBuilder: (context, tabController) => StreamBuilder<String?>(
        stream: tabController.animation!.asStream().switchMap(
          (index) {
            final currentIndex = index.round();

            return switch (currentIndex) {
              0 => _streetsController,
              1 => _familiesController,
              2 => _personsController,
              3 => _storesController,
              _ => throw UnimplementedError(),
            }
                .totalCountStream
                .map(
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
        builder: (context, snapshot) {
          return Text(
            snapshot.data ?? '',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          );
        },
      ),
      floatingActionButtonBuilder: (context, tabController, area) =>
          SwitchingFloatingActionButton.fromTabController(
        tabController: tabController,
        icons: const [
          Icon(Symbols.add_road),
          Icon(Symbols.group_add),
          Icon(Symbols.person_add),
          Icon(Symbols.add_business),
        ],
        onTap: (newIndex) {
          if (newIndex == 0) {
            EditStreetRoute(
              $extra: EditStreetExtra(area: area),
            ).push(context);
          } else if (newIndex == 1) {
            EditFamilyRoute(
              $extra: EditFamilyExtra(area: area),
            ).push(context);
          } else if (newIndex == 2) {
            EditPersonRoute(
              $extra: EditPersonExtra(area: area),
            ).push(context);
          } else if (newIndex == 3) {
            EditStoreRoute(
              $extra: EditStoreExtra(area: area),
            ).push(context);
          }
        },
      ),
    );
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
    Future.wait(_controllersToDispose.map((e) => e.dispose()));

    super.dispose();
  }
}
