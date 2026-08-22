import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class ViewStreet extends StatefulWidget {
  final Street? street;
  final String streetId;

  const ViewStreet({required this.streetId, this.street, super.key});

  @override
  State<ViewStreet> createState() => _ViewStreetState();
}

class _ViewStreetState extends State<ViewStreet> {
  late final _familiesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.families.streamAll(
        where: Stream.value(
          [
            Filter(
              FamilyFields().street.redirectTo(StreetFields().id),
              PrimitiveOperator.eq,
              widget.streetId,
            ),
          ],
        ),
        orderBy: _familiesOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _familiesOrderBy =
      BehaviorSubject.seeded(
        ViewObjectDetails.getLastOrderByFor(
          type: AdvancedQueriesMetadata().family,
          orElse: () => [
            OrderBy(field: FamilyFields().name),
          ],
        ),
      );

  late final _storesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.stores.streamAll(
        where: Stream.value(
          [
            Filter(
              StoreFields().street.redirectTo(StreetFields().id),
              PrimitiveOperator.eq,
              widget.streetId,
            ),
          ],
        ),
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
        where: Stream.value(
          [
            Filter(
              PersonFields().street.redirectTo(StreetFields().id),
              PrimitiveOperator.eq,
              widget.streetId,
            ),
          ],
        ),
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

  late final viewableObjectService = ViewableObjectService.I;

  late final stream = DatabaseService.I.streets.streamSingleById(
    id: widget.streetId,
  );

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails(
      objectId: widget.streetId,
      object: widget.street,
      objectStream: stream,
      childrenTypes: const [Family, Person, Store],
      tabsContentBuilders: {
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
      detailsBuilder: (context, street) => SliverList(
        delegate: SliverChildListDelegate([
          if (street.line != null)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: FilledButton.tonalIcon(
                style: Theme.of(context).filledTonalButtonStyleWorkaround,
                label: const Text('الموقع على الخريطة'),
                icon: const Icon(Symbols.map),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ViewGeodataMap(
                      initialGeomapOptions: GeomapOptions(
                        selectedStreets: {street},
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ListTile(
            title: const Text('المناطق التي يظهر بها'),
            subtitle: Wrap(
              children: [
                for (final a in street.areas ?? <Area>[]) ViewableObjectCard(a),
              ],
            ),
          ),
          ListTile(
            title: FilledButton.icon(
              icon: const Icon(Symbols.query_stats),
              label: const Text('احصائيات'),
              // TODO: add street analysis
              onPressed: () {
                return;
              },
            ),
          ),
          HistoryProperty(
            name: 'أخر افتقاد',
            value: street.lastVisit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.history
                  .paginateVisitHistory<Street>(id: street.id),
            ),
            onRecordNow: () => DatabaseService.I.history.updateStreetLastVisit(
              streetId: widget.streetId,
              lastVisit: DateTime.now(),
            ),
          ),
          HistoryProperty(
            name: 'أخر تحديث للبيانات',
            value: street.lastEdit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.history
                  .paginateEditHistory<Street>(
                    id: street.id,
                  ),
            ),
          ),
        ]),
      ),
      editButtonBuilder: (context, street) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => EditStreetRoute(
          $extra: EditStreetExtra(street: street),
        ).push(context),
        icon: const Icon(Symbols.edit),
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على الشارع',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      bottomNavBarBuilder: (context, tabController) => TotalCountLabel(
        countStream: tabController.animation!.asStream().switchMap(
          (index) {
            final currentIndex = index.round();

            return switch (currentIndex) {
              0 => _familiesController,
              1 => _personsController,
              2 => _storesController,
              _ => throw UnimplementedError(),
            }.totalCountStream.map(
              (c) => switch (currentIndex) {
                0 => '$c عائلة',
                1 => '$c مخدوم',
                2 => '$c متجر',
                _ => throw UnimplementedError(),
              },
            );
          },
        ),
      ),
      floatingActionButtonBuilder: (context, tabController, street) =>
          SwitchingFAB.fromTabController(
            tabController: tabController,
            icons: const [
              Icon(Symbols.group_add),
              Icon(Symbols.person_add),
              Icon(Symbols.add_business),
            ],
            onTap: (newIndex) {
              if (newIndex == 0) {
                unawaited(
                  EditFamilyRoute(
                    $extra: EditFamilyExtra(street: street),
                  ).push(context),
                );
              } else if (newIndex == 1) {
                unawaited(
                  EditPersonRoute(
                    $extra: EditPersonExtra(street: street),
                  ).push(context),
                );
              } else if (newIndex == 2) {
                unawaited(
                  EditStoreRoute(
                    $extra: EditStoreExtra(street: street),
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
    unawaited(_familiesOrderBy.close());
    unawaited(_storesOrderBy.close());
    unawaited(_personsOrderBy.close());

    super.dispose();
  }

  Future<void> _showOrderBySheet(int currentTabIndex) async {
    final advancedQueriesMetadata = AdvancedQueriesMetadata();

    final (queryableType, orderBySubject) = switch (currentTabIndex) {
      0 => (advancedQueriesMetadata.family, _familiesOrderBy),
      1 => (advancedQueriesMetadata.person, _personsOrderBy),
      2 => (advancedQueriesMetadata.store, _storesOrderBy),
      _ => throw UnimplementedError(),
    };

    await showOrderByBottomSheet(
      context,
      queryableType: queryableType,
      orderBySubject: orderBySubject,
      onChanged: (newOrderBy) {
        orderBySubject.add(newOrderBy);
        unawaited(
          ViewObjectDetails.saveLastOrderByFor(
            type: queryableType,
            orderBy: newOrderBy,
          ),
        );
      },
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
