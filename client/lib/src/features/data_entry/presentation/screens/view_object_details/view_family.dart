import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

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
        orderBy: _personsArrangement.orderByStream,
        secondLineField: _personsArrangement.secondLineFieldStream,
      ),
    ),
  );

  final _personsArrangement = ListArrangementController(
    type: AdvancedQueriesMetadata().person,
    defaultOrderBy: () => [
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
        orderBy: _childrenFamiliesArrangement.orderByStream,
        secondLineField: _childrenFamiliesArrangement.secondLineFieldStream,
      ),
    ),
  );

  final _childrenFamiliesArrangement = ListArrangementController(
    type: AdvancedQueriesMetadata().family,
    defaultOrderBy: () => [
      OrderBy(field: FamilyFields().name),
    ],
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
        orderBy: _parentFamiliesArrangement.orderByStream,
        secondLineField: _parentFamiliesArrangement.secondLineFieldStream,
      ),
    ),
  );

  final _parentFamiliesArrangement = ListArrangementController(
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
              StoreFields().family.redirectTo(FamilyFields().id),
              PrimitiveOperator.eq,
              widget.familyId,
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
          arrangementController: _personsArrangement,
          objectsController: _personsController,
        ),
        _ChildrenFamily: (context) => OrderedViewableObjectList(
          arrangementController: _childrenFamiliesArrangement,
          objectsController: _childrenFamiliesController,
        ),
        _ParentFamily: (context) => OrderedViewableObjectList(
          arrangementController: _parentFamiliesArrangement,
          objectsController: _parentFamiliesController,
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
      bottomNavBarBuilder: (context, tabController) => TabbedTotalCountLabel(
        tabController: tabController,
        unitByController: {
          _personsController: 'مخدوم',
          _childrenFamiliesController: 'أبناء',
          _parentFamiliesController: 'أباء',
          _storesController: 'متجر',
        },
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
                    $extra: CreatePersonInFamily(family: family),
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

  Future<void> _showArrangementSheet(int currentTabIndex) async {
    final arrangementController = switch (currentTabIndex) {
      0 => _personsArrangement,
      1 => _childrenFamiliesArrangement,
      2 => _parentFamiliesArrangement,
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
    _personsArrangement.dispose();
    _childrenFamiliesArrangement.dispose();
    _parentFamiliesArrangement.dispose();
    _storesArrangement.dispose();

    super.dispose();
  }
}

abstract final class _ChildrenFamily {}

abstract final class _ParentFamily {}
