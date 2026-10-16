import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

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
        orderBy: _familiesArrangement.orderByStream,
        secondLineField: _familiesArrangement.secondLineFieldStream,
      ),
    ),
  );

  final _familiesArrangement = ListArrangementController(
    type: AdvancedQueriesMetadata().family,
    defaultOrderBy: () => [
      OrderBy(field: FamilyFields().name),
    ],
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
        where: Stream.value(
          [
            Filter(
              PersonFields().street.redirectTo(StreetFields().id),
              PrimitiveOperator.eq,
              widget.streetId,
            ),
          ],
        ),
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
      bottomNavBarBuilder: (context, tabController) => TabbedTotalCountLabel(
        tabController: tabController,
        unitByController: {
          _familiesController: 'عائلة',
          _personsController: 'مخدوم',
          _storesController: 'متجر',
        },
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
                    $extra: CreatePersonOnStreet(street: street),
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

  Future<void> _showArrangementSheet(int currentTabIndex) async {
    final arrangementController = switch (currentTabIndex) {
      0 => _familiesArrangement,
      1 => _personsArrangement,
      2 => _storesArrangement,
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
    _familiesArrangement.dispose();
    _storesArrangement.dispose();
    _personsArrangement.dispose();

    super.dispose();
  }
}
