import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ViewFamily extends StatefulWidget {
  final Family? family;
  final String familyId;

  const ViewFamily({
    required this.familyId,
    this.family,
    super.key,
  });

  @override
  State<ViewFamily> createState() => _ViewFamilyState();
}

class _ViewFamilyState extends State<ViewFamily> {
  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.streamAll(
      where: [
        Input_PersonsBoolExp(
          familyId: Input_UuidComparisonExp($_eq: widget.familyId.toUuid()),
        ),
      ],
    ),
  );

  late final _childrenFamiliesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.families.streamAll(
      where: [
        Input_FamiliesBoolExp(
          parents: Input_FamiliesFamiliesBoolExp(
            parentFamilyId:
                Input_UuidComparisonExp($_eq: widget.familyId.toUuid()),
          ),
        ),
      ],
    ),
  );

  late final _parentFamiliesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.families.streamAll(
      where: [
        Input_FamiliesBoolExp(
          children: Input_FamiliesFamiliesBoolExp(
            childFamilyId:
                Input_UuidComparisonExp($_eq: widget.familyId.toUuid()),
          ),
        ),
      ],
    ),
  );

  late final _storesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.stores.streamAll(
      where: [
        Input_StoresBoolExp(
          adminFamily: Input_UuidComparisonExp($_eq: widget.familyId.toUuid()),
        ),
      ],
    ),
  );

  final Set<ViewableObjectListController> _controllersToDispose = {};

  late final viewableObjectService = ViewableObjectService.I;

  late final stream =
      DatabaseService.I.families.streamSingleById(id: widget.familyId);

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
              objectsController: _ensureWillDispose(_personsController),
            ),
        _ChildrenFamily: (context) => ViewableObjectList<Family>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController:
                  _ensureWillDispose(_childrenFamiliesController),
            ),
        _ParentFamily: (context) => ViewableObjectList<Family>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_parentFamiliesController),
            ),
        Store: (context) => ViewableObjectList<Store>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_storesController),
            ),
      },
      tabsHeaderBuilder: (context, family) => TabBar(
        tabs: [
          Tab(
            text: 'المخدومين',
            icon: Icon(viewableObjectService.getDefaultIconFor<Person>()),
          ),
          Tab(
            text: 'الأبناء',
            icon: Icon(viewableObjectService.getDefaultIconFor<Family>()),
          ),
          Tab(
            text: 'الأباء',
            icon: Icon(viewableObjectService.getDefaultIconFor<Family>()),
          ),
          Tab(
            text: 'المتاجر',
            icon: Icon(viewableObjectService.getDefaultIconFor<Store>()),
          ),
        ],
      ),
      detailsBuilder: (context, family) => SliverList(
        delegate: SliverChildListDelegate(
          [
            CopiablePropertyWidget(
              'العنوان والموقع',
              family.address,
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
              title: const Text('المناطق التي تظهر بها'),
              subtitle: Column(
                children: [
                  for (final a in family.areas ?? <Area>[])
                    ViewableObjectWidget(
                      a,
                      isDense: true,
                      forceShowSecondLine: false,
                    ),
                ],
              ),
            ),
            ListTile(
              title: const Text('الشوارع التي تظهر بها'),
              subtitle: Column(
                children: [
                  for (final s in family.streets ?? <Street>[])
                    ViewableObjectWidget(
                      s,
                      isDense: true,
                      forceShowSecondLine: false,
                    ),
                ],
              ),
            ),
            CopiablePropertyWidget(
              'ملاحظات',
              family.notes,
              showErrorIfEmpty: false,
            ),
            ListTile(
              title: FilledButton.tonalIcon(
                icon: const Icon(Symbols.query_stats),
                label: const Text('احصائيات'),
                // TODO: add family analysis
                onPressed: () {},
              ),
            ),
            HistoryProperty(
              name: 'أخر تحديث للبيانات',
              value: family.lastEdit?.time,
              getHistoryStream: () => DatabaseService.I.history
                  .paginateEditHistory<Family>(id: family.id),
            ),
          ],
        ),
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
          $extra: EditFamilyExtra(
            family: family,
          ),
        ).push(context),
        icon: const Icon(Symbols.edit),
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
              $extra: EditPersonExtra(
                family: family,
              ),
            ).push(context);
          } else if (newIndex == 1) {
            EditFamilyRoute(
              $extra: EditFamilyExtra(
                parents: {family},
              ),
            ).push(context);
          } else if (newIndex == 2) {
            EditFamilyRoute(
              $extra: EditFamilyExtra(
                children: {family},
              ),
            ).push(context);
          } else if (newIndex == 3) {
            EditStoreRoute(
              $extra: EditStoreExtra(
                family: family,
              ),
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
