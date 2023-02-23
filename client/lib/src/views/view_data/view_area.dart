import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ViewArea extends StatelessWidget {
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

  ViewArea({
    required this.areaId,
    this.area,
    super.key,
  });

  late final _streetsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.streets.paginateStreets(
      areaId: areaId,
    ),
  );
  late final _familiesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.families.paginateFamilies(
      byAreaId: areaId,
    ),
  );
  late final _storesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.stores.paginateStores(
      byAreaId: areaId,
    ),
  );
  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.paginatePersons(
      byAreaId: areaId,
    ),
  );

  late final Stream<Area?> objectStream =
      DatabaseService.I.areas.watchArea(areaId: areaId);

  late final viewableObjectService = GetIt.I<CAViewableObjectService>();

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails<Area>(
      objectId: areaId,
      object: area,
      objectStream: objectStream,
      childrenTypes: const [Street, Family, Store, Person],
      tabsContentBuilders: {
        Street: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _streetsController,
            ),
        Family: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _familiesController,
            ),
        Store: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _storesController,
            ),
        Person: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _personsController,
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
        onPressed: () => context.go(
          Uri(
            path: '/viewArea/editArea',
            queryParameters: {'id': areaId},
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
}
