import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewFamily extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'viewFamily',
    builder: (context, state) {
      if (state.queryParameters['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewFamily(
        familyId: state.queryParameters['id']!,
        family: (state.extra as Map?)?['family'] as Family?,
      );
    },
    routes: [
      EditFamily.route,
      EditStore.route,
      EditPerson.route,
    ],
  );

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
                    icon: const Icon(Icons.map),
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
                      dense: true,
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
                      dense: true,
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
                icon: const Icon(Icons.query_stats),
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
        onPressed: () => context.push(
          Uri(
            path: '/viewFamily/editFamily',
            queryParameters: {'id': widget.familyId},
          ).toString(),
          extra: {'family': family},
        ),
        icon: const Icon(Icons.edit),
      ),
      floatingActionButtonBuilder: (context, tabController, family) =>
          SwitchingFloatingActionButton(
        tabController: tabController,
        icons: const {
          0: Icon(Icons.person_add_alt_1),
          1: Icon(Icons.group_add),
          2: Icon(Icons.group_add),
          3: Icon(Icons.add_business),
        },
        onTap: (newIndex) {
          if (newIndex == 0) {
            context.push('/viewArea/editPerson', extra: {'family': family});
          } else if (newIndex == 1) {
            context.push(
              '/viewArea/editFamily',
              extra: {
                'parents': {family},
              },
            );
          } else if (newIndex == 2) {
            context.push(
              '/viewArea/editFamily',
              extra: {
                'children': {family},
              },
            );
          } else if (newIndex == 3) {
            context.push('/viewArea/editStore', extra: {'family': family});
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
