import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class ViewFamily extends StatefulWidget {
  final Family? family;
  final String familyId;

  const ViewFamily({required this.familyId, this.family, super.key});

  @override
  State<ViewFamily> createState() => _ViewFamilyState();
}

class _ViewFamilyState extends State<ViewFamily> {
  late final _personsController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.persons.streamAll(
        where: Stream.value(
          [
            Filter(
              PersonFields().family.redirectTo(FamilyFields().id),
              PrimitiveOperator.eq,
              widget.familyId,
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
        OrderBy(
          field: PersonFields().personType.redirectTo(
            PersonTypeFields().isFamilyAdmin,
          ),
          value: OrderByValue.desc,
        ),
        OrderBy(
          field: PersonFields().personType.redirectTo(PersonTypeFields().order),
        ),
      ],
    ),
  );

  late final _childrenFamiliesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.families.streamAll(
        where: Stream.value(
          [
            Filter(
              FamilyFields().parentsRel.redirectTo(
                FamiliesFamiliesFields().parentFamilyId,
              ),
              PrimitiveOperator.eq,
              widget.familyId,
            ),
          ],
        ),
        orderBy: _childrenFamiliesOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _childrenFamiliesOrderBy =
      BehaviorSubject.seeded(
        ViewObjectDetails.getLastOrderByFor(
          type: AdvancedQueriesMetadata().family,
          orElse: () => [
            OrderBy(field: FamilyFields().name),
          ],
        ),
      );

  late final _parentFamiliesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.families.streamAll(
        where: Stream.value(
          [
            Filter(
              FamilyFields().childrenRel.redirectTo(
                FamiliesFamiliesFields().childFamilyId,
              ),
              PrimitiveOperator.eq,
              widget.familyId,
            ),
          ],
        ),
        orderBy: _parentFamiliesOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _parentFamiliesOrderBy =
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
              StoreFields().family.redirectTo(FamilyFields().id),
              PrimitiveOperator.eq,
              widget.familyId,
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

  final Set<ViewableObjectListController> _controllersToDispose = {};

  late final viewableObjectService = ViewableObjectService.I;

  late final stream = DatabaseService.I.families.streamSingleById(
    id: widget.familyId,
  );

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails<Family>(
      objectId: widget.familyId,
      object: widget.family,
      objectStream: stream,
      childrenTypes: const [Person, _ChildrenFamily, _ParentFamily, Store],
      tabsContentBuilders: {
        Person: (context) => OrderedViewableObjectList(
          orderByStream: _personsOrderBy.stream,
          initialOrderBy: _personsOrderBy.value,
          objectsController: _personsController,
        ),
        _ChildrenFamily: (context) => OrderedViewableObjectList(
          orderByStream: _childrenFamiliesOrderBy.stream,
          initialOrderBy: _childrenFamiliesOrderBy.value,
          objectsController: _childrenFamiliesController,
        ),
        _ParentFamily: (context) => OrderedViewableObjectList(
          orderByStream: _parentFamiliesOrderBy.stream,
          initialOrderBy: _parentFamiliesOrderBy.value,
          objectsController: _parentFamiliesController,
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
            label: 'المخدومين',
            icon: viewableObjectService.getDefaultIconFor<Person>(),
          ),
          (
            label: 'الأبناء',
            icon: viewableObjectService.getDefaultIconFor<Family>(),
          ),
          (
            label: 'الأباء',
            icon: viewableObjectService.getDefaultIconFor<Family>(),
          ),
          (
            label: 'المتاجر',
            icon: viewableObjectService.getDefaultIconFor<Store>(),
          ),
        ],
      ),
      detailsBuilder: (context, family) => FamilyDetailsList(family: family),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على العائلة',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      editButtonBuilder: (context, family) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => EditFamilyRoute(
          $extra: EditFamilyExtra(family: family),
        ).push(context),
        icon: const Icon(Symbols.edit),
      ),
      bottomNavBarBuilder: (context, tabController) => TotalCountLabel(
        countStream: tabController.animation!.asStream().switchMap(
          (index) {
            final currentIndex = index.round();

            return switch (currentIndex) {
              0 => _personsController,
              1 => _childrenFamiliesController,
              2 => _parentFamiliesController,
              3 => _storesController,
              _ => throw UnimplementedError(),
            }.totalCountStream.map(
              (c) => switch (currentIndex) {
                0 => '$c مخدوم',
                1 => '$c أبناء',
                2 => '$c أباء',
                3 => '$c متجر',
                _ => throw UnimplementedError(),
              },
            );
          },
        ),
      ),
      floatingActionButtonBuilder: (context, tabController, family) =>
          SwitchingFAB.fromTabController(
            tabController: tabController,
            icons: const [
              Icon(Symbols.person_add),
              Icon(Symbols.group_add),
              Icon(Symbols.group_add),
              Icon(Symbols.add_business),
            ],
            onTap: (newIndex) {
              if (newIndex == 0) {
                unawaited(
                  EditPersonRoute(
                    $extra: EditPersonExtra(family: family),
                  ).push(context),
                );
              } else if (newIndex == 1) {
                unawaited(
                  EditFamilyRoute(
                    $extra: EditFamilyExtra(parents: {family}),
                  ).push(context),
                );
              } else if (newIndex == 2) {
                unawaited(
                  EditFamilyRoute(
                    $extra: EditFamilyExtra(children: {family}),
                  ).push(context),
                );
              } else if (newIndex == 3) {
                unawaited(
                  EditStoreRoute(
                    $extra: EditStoreExtra(family: family),
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
    unawaited(_personsOrderBy.close());
    unawaited(_childrenFamiliesOrderBy.close());
    unawaited(_parentFamiliesOrderBy.close());
    unawaited(_storesOrderBy.close());

    super.dispose();
  }

  Future<void> _showOrderBySheet(int currentTabIndex) async {
    final advancedQueriesMetadata = AdvancedQueriesMetadata();

    final (queryableType, orderBySubject) = switch (currentTabIndex) {
      0 => (advancedQueriesMetadata.person, _personsOrderBy),
      1 => (advancedQueriesMetadata.family, _childrenFamiliesOrderBy),
      2 => (advancedQueriesMetadata.family, _parentFamiliesOrderBy),
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

abstract final class _ChildrenFamily {}

abstract final class _ParentFamily {}
