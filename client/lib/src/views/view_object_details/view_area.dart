import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewArea extends StatefulWidget {
  static final route = GoRoute(
    path: 'viewArea',
    builder: (context, state) {
      if (state.queryParameters['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewArea(
        areaId: state.queryParameters['id']!,
        area: (state.extra as Map?)?['area'] as Area?,
      );
    },
    routes: [
      EditArea.route,
      EditStreet.route,
      EditFamily.route,
      EditStore.route,
      EditPerson.route,
    ],
  );

  final Area? area;
  final String areaId;

  const ViewArea({
    required this.areaId,
    this.area,
    super.key,
  });

  @override
  State<ViewArea> createState() => _ViewAreaState();
}

class _ViewAreaState extends State<ViewArea> {
  static const _addStreet = Icon(Icons.add_road);
  static const _addFamily = Icon(Icons.group_add);
  static const _addStore = Icon(Icons.add_business);
  static const _addPerson = Icon(Icons.person_add_alt_1);

  late final _streetsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.streets.streamAll(
      where: [
        Input_StreetsBoolExp(
          areas: Input_AreasBoolExp(
            id: Input_UuidComparisonExp($_eq: widget.areaId.toUuid()),
          ),
        ),
      ],
    ),
  );

  late final _familiesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.families.streamAll(
      where: [
        Input_FamiliesBoolExp(
          areas: Input_AreasBoolExp(
            id: Input_UuidComparisonExp($_eq: widget.areaId.toUuid()),
          ),
        ),
      ],
    ),
  );

  late final _storesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.stores.streamAll(
      where: [
        Input_StoresBoolExp(
          areas: Input_AreasBoolExp(
            id: Input_UuidComparisonExp($_eq: widget.areaId.toUuid()),
          ),
        ),
      ],
    ),
  );

  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.streamAll(
      where: [
        Input_PersonsBoolExp(
          areas: Input_AreasBoolExp(
            id: Input_UuidComparisonExp($_eq: widget.areaId.toUuid()),
          ),
        ),
      ],
    ),
  );

  final Set<ViewableObjectListController> _controllersToDispose = {};

  late final Stream<Area?> stream =
      DatabaseService.I.areas.streamSingleById(id: widget.areaId);

  late final viewableObjectService = ViewableObjectService.I;

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails<Area>(
      objectId: widget.areaId,
      object: widget.area,
      objectStream: stream,
      childrenTypes: const [Street, Family, Store, Person],
      tabsContentBuilders: {
        Street: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_streetsController),
            ),
        Family: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_familiesController),
            ),
        Store: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_storesController),
            ),
        Person: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_personsController),
            ),
      },
      tabsHeaderBuilder: (context, area) => TabBar(
        tabs: [
          Tab(
            text: 'الشوارع',
            icon: Icon(viewableObjectService.getDefaultIconFor<Street>()),
          ),
          Tab(
            text: 'العائلات',
            icon: Icon(viewableObjectService.getDefaultIconFor<Family>()),
          ),
          Tab(
            text: 'المتاجر',
            icon: Icon(viewableObjectService.getDefaultIconFor<Store>()),
          ),
          Tab(
            text: 'المخدومين',
            icon: Icon(viewableObjectService.getDefaultIconFor<Person>()),
          ),
        ],
      ),
      detailsBuilder: (context, area) => SliverList(
        delegate: SliverChildListDelegate(
          [
            if (area.bounds != null)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: FilledButton.tonalIcon(
                  label: const Text('الموقع على الخريطة'),
                  icon: const Icon(Icons.map),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ViewGeodataMap(
                        initialGeomapOptions:
                            GeomapOptions(selectedAreas: {area}),
                      ),
                    ),
                  ),
                ),
              ),
            HistoryProperty(
              name: 'أخر تحديث للبيانات',
              value: area.lastEdit?.time,
              getHistoryStream: () => DatabaseService.I.history
                  .paginateEditHistory<Area>(id: area.id),
            ),
            ListTile(
              title: const Text('الخدام المسؤولين'),
              subtitle: area.adminUsers?.isNotEmpty ?? false
                  ? AdminUsers(users: area.adminUsers!)
                  : const Text('لا يوجد خدام محددين للمنطقة'),
            ),
          ],
        ),
      ),
      editButtonBuilder: (context, area) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => context.push(
          Uri(
            path: '/viewArea/editArea',
            queryParameters: {'id': widget.areaId},
          ).toString(),
          extra: {'area': area},
        ),
        icon: const Icon(Icons.edit),
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على المنطقة',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButtonBuilder: (context, tabController, area) =>
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
              onPressed: _onFABPressed(newIndex),
              child: newIndex == 0
                  ? _addStreet
                  : newIndex == 1
                      ? _addFamily
                      : newIndex == 2
                          ? _addStore
                          : _addPerson,
            ),
            oldFAB: FloatingActionButton(
              heroTag: null,
              onPressed: _onFABPressed(currentIndex),
              child: currentIndex == 0
                  ? _addStreet
                  : currentIndex == 1
                      ? _addFamily
                      : currentIndex == 2
                          ? _addStore
                          : _addPerson,
            ),
          );
        },
      ),
    );
  }

  void Function() _onFABPressed(int newIndex) {
    return () {
      if (newIndex == 0) {
        context.push('/viewArea/editStreet');
      } else if (newIndex == 1) {
        context.push('/viewArea/editFamily');
      } else if (newIndex == 2) {
        context.push('/viewArea/editStore');
      } else if (newIndex == 3) {
        context.push('/viewArea/editPerson');
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
