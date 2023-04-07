import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart'
    hide LoggingService, ViewableObjectWidget;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewFamily extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'viewFamily',
    builder: (context, state) {
      if (state.queryParams['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewFamily(
        familyId: state.queryParams['id']!,
        family: (state.extra as Map?)?['family'] as Family?,
      );
    },
    routes: [
      EditFamily.route,
      // EditStore.route,
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
  static const _addFamily = Icon(Icons.group_add);
  static const _addStore = Icon(Icons.add_business);
  static const _addPerson = Icon(Icons.person_add_alt_1);

  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.paginatePersons(
      byFamilyId: widget.familyId,
    ),
  );

  late final _childrenFamiliesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.families.paginateFamilies(
      byParentFamilyId: widget.familyId,
    ),
  );

  late final _parentFamiliesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.families.paginateFamilies(
      byChildFamilyId: widget.familyId,
    ),
  );

  late final _storesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.stores.paginateStores(
      byFamilyId: widget.familyId,
    ),
  );

  final Set<ViewableObjectListController> _controllersToDispose = {};

  late final viewableObjectService = CAViewableObjectService.I;

  late final stream =
      DatabaseService.I.families.watchFamily(familyId: widget.familyId);

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
                    onPressed: () async => Navigator.of(context).push(
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
          AnimatedBuilder(
        animation: tabController.animation!,
        builder: (context, child) {
          final currentIndex = tabController.index;
          final offset = tabController.offset;

          final newIndex = offset.isNegative
              ? (currentIndex + offset).floor()
              : (currentIndex + offset).ceil();

          return AnimatedFloatingActionButton(
            offset: offset,
            newFAB: FloatingActionButton(
              onPressed: _onFABPressed(family, newIndex),
              child: newIndex == 0
                  ? _addPerson
                  : newIndex == 3
                      ? _addStore
                      : _addFamily,
            ),
            oldFAB: FloatingActionButton(
              heroTag: null,
              onPressed: _onFABPressed(family, currentIndex),
              child: currentIndex == 0
                  ? _addPerson
                  : currentIndex == 3
                      ? _addStore
                      : _addFamily,
            ),
          );
        },
      ),
    );
  }

  void Function() _onFABPressed(Family family, int newIndex) {
    return () {
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
    };
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
