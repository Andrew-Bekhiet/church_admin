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
      BehaviorSubject.seeded([
        OrderBy(field: FamilyFields().name),
      ]);

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

  final BehaviorSubject<List<OrderBy>> _storesOrderBy = BehaviorSubject.seeded([
    OrderBy(field: StoreFields().name),
  ]);

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
    [
      OrderBy(field: PersonFields().name),
    ],
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
        Family: (context) => StreamBuilder(
          stream: _familiesOrderBy.stream,
          initialData: _familiesOrderBy.value,
          builder: (context, orderBySnapshot) => ViewableObjectList(
            scrollController: PrimaryScrollController.maybeOf(context),
            viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
              secondLineField: orderBySnapshot.data?.first.getSecondLineField(),
            ),
            objectsController: _familiesController,
          ),
        ),
        Person: (context) => StreamBuilder(
          stream: _personsOrderBy.stream,
          initialData: _personsOrderBy.value,
          builder: (context, orderBySnapshot) => ViewableObjectList(
            scrollController: PrimaryScrollController.maybeOf(context),
            viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
              secondLineField: orderBySnapshot.data?.first.getSecondLineField(),
            ),
            objectsController: _personsController,
          ),
        ),
        Store: (context) => StreamBuilder(
          stream: _storesOrderBy.stream,
          initialData: _storesOrderBy.value,
          builder: (context, orderBySnapshot) => ViewableObjectList(
            scrollController: PrimaryScrollController.maybeOf(context),
            viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
              secondLineField: orderBySnapshot.data?.first.getSecondLineField(),
            ),
            objectsController: _storesController,
          ),
        ),
      },
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
        filtersWidget: Builder(
          builder: (context) => IconButton(
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.zero,
            icon: const Icon(Symbols.sort),
            onPressed: () =>
                _showOrderBySheet(DefaultTabController.of(context).index),
          ),
        ),
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
              onPressed: () {},
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
      bottomNavBarBuilder: (context, tabController) => StreamBuilder<String?>(
        stream: tabController.animation!.asStream().switchMap(
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
        builder: (context, snapshot) {
          return Text(
            snapshot.data ?? '',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          );
        },
      ),
      floatingActionButtonBuilder: (context, tabController, street) =>
          SwitchingFloatingActionButton.fromTabController(
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

  Future<void> _showOrderBySheet(int currentTabIndex) async {
    final advancedQueriesMetadata = AdvancedQueriesMetadata();

    final (queryableType, orderBySubject) = switch (currentTabIndex) {
      0 => (advancedQueriesMetadata.family, _familiesOrderBy),
      1 => (advancedQueriesMetadata.person, _personsOrderBy),
      2 => (advancedQueriesMetadata.store, _storesOrderBy),
      _ => throw UnimplementedError(),
    };

    final newOrderBy = await showOrderByBottomSheet(
      context,
      queryableType: queryableType,
      orderBySubject: orderBySubject,
    );

    if (newOrderBy == null) return;

    orderBySubject.add(newOrderBy);
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

    super.dispose();
  }
}
