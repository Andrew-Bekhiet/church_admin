import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewArea extends StatefulWidget {
  static final route = GoRoute(
    path: 'viewArea',
    builder: (context, state) {
      if (state.queryParams['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewArea(
        areaId: state.queryParams['id']!,
        area: (state.extra as Map?)?['area'] as Area?,
      );
    },
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
  late final _streetsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.streets.paginateStreets(
      byAreaId: widget.areaId,
    ),
  );

  late final _familiesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.families.paginateFamilies(
      byAreaId: widget.areaId,
    ),
  );

  late final _storesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.stores.paginateStores(
      byAreaId: widget.areaId,
    ),
  );

  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.paginatePersons(
      byAreaId: widget.areaId,
    ),
  );

  final Set<ViewableObjectListController> _controllersToDispose = {};

  late final Stream<Area?> stream =
      DatabaseService.I.areas.watchArea(areaId: widget.areaId);

  late final viewableObjectService = CAViewableObjectService.I;

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
                  onPressed: () async => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DataGeomap(initialArea: area),
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
