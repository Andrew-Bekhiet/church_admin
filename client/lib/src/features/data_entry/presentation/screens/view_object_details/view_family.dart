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
            Input_PersonsBoolExp(
              familyId: Input_UuidComparisonExp($_eq: widget.familyId.toUuid()),
            ),
          ],
        ),
      ),
    ),
  );

  late final _childrenFamiliesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.families.streamAll(
        where: Stream.value(
          [
            Input_FamiliesBoolExp(
              parents: Input_FamiliesFamiliesBoolExp(
                parentFamilyId: Input_UuidComparisonExp(
                  $_eq: widget.familyId.toUuid(),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  late final _parentFamiliesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.families.streamAll(
        where: Stream.value(
          [
            Input_FamiliesBoolExp(
              children: Input_FamiliesFamiliesBoolExp(
                childFamilyId: Input_UuidComparisonExp(
                  $_eq: widget.familyId.toUuid(),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  late final _storesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.stores.streamAll(
        where: Stream.value(
          [
            Input_StoresBoolExp(
              adminFamily:
                  Input_UuidComparisonExp($_eq: widget.familyId.toUuid()),
            ),
          ],
        ),
      ),
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
        Person: (context) => ViewableObjectList<Person>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _personsController,
            ),
        _ChildrenFamily: (context) => ViewableObjectList<Family>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _childrenFamiliesController,
            ),
        _ParentFamily: (context) => ViewableObjectList<Family>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _parentFamiliesController,
            ),
        Store: (context) => ViewableObjectList<Store>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _storesController,
            ),
      },
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
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
      detailsBuilder: (context, family) => SliverList(
        delegate: SliverChildListDelegate([
          CopiablePropertyWidget(
            'العنوان والموقع',
            family.address?.toString(),
            additionalOptions: [
              if (family.geolocation != null)
                IconButton(
                  icon: const Icon(Symbols.map),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ViewGeodataMap(
                        initialGeomapOptions: GeomapOptions(
                          selectedFamilies: {family},
                        ),
                      ),
                    ),
                  ),
                  tooltip: 'إظهار على الخريطة',
                ),
            ],
          ),
          ListTile(
            title: const Text('المنطقة'),
            subtitle: family.address?.area != null
                ? ViewableObjectCard(family.address!.area!)
                : null,
          ),
          ListTile(
            title: const Text('الشارع'),
            subtitle: family.address?.street != null
                ? ViewableObjectCard(family.address!.street!)
                : null,
          ),
          CopiablePropertyWidget(
            'ملاحظات',
            family.notes,
            showErrorIfEmpty: false,
          ),
          ListTile(
            title: FilledButton.icon(
              icon: const Icon(Symbols.query_stats),
              label: const Text('احصائيات'),
              // TODO: add family analysis
              onPressed: () {},
            ),
          ),
          HistoryProperty(
            name: 'أخر تحديث للبيانات',
            value: family.lastEdit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.history.paginateEditHistory<Family>(
                id: family.id,
              ),
            ),
          ),
        ]),
      ),
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
      bottomNavBarBuilder: (context, tabController) => StreamBuilder<String?>(
        stream: tabController.animation!.asStream().switchMap(
          (index) {
            final currentIndex = index.round();

            return switch (currentIndex) {
              0 => _personsController,
              1 => _childrenFamiliesController,
              2 => _parentFamiliesController,
              3 => _storesController,
              _ => throw UnimplementedError(),
            }
                .totalCountStream
                .map(
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
        builder: (context, snapshot) {
          return Text(
            snapshot.data ?? '',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          );
        },
      ),
      floatingActionButtonBuilder: (context, tabController, family) =>
          SwitchingFloatingActionButton(
        tabController: tabController,
        icons: const {
          0: Icon(Symbols.person_add),
          1: Icon(Symbols.group_add),
          2: Icon(Symbols.group_add),
          3: Icon(Symbols.add_business),
        },
        onTap: (newIndex) {
          if (newIndex == 0) {
            EditPersonRoute(
              $extra: EditPersonExtra(family: family),
            ).push(context);
          } else if (newIndex == 1) {
            EditFamilyRoute(
              $extra: EditFamilyExtra(parents: {family}),
            ).push(context);
          } else if (newIndex == 2) {
            EditFamilyRoute(
              $extra: EditFamilyExtra(children: {family}),
            ).push(context);
          } else if (newIndex == 3) {
            EditStoreRoute(
              $extra: EditStoreExtra(family: family),
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

abstract class _ChildrenFamily {}

abstract class _ParentFamily {}
