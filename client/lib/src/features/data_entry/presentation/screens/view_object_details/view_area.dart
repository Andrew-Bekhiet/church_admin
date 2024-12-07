import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ViewArea extends StatefulWidget {
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
      childrenTypes: const [Street, Family, Person, Store],
      tabsContentBuilders: {
        Street: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_streetsController),
            ),
        Family: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_familiesController),
            ),
        Person: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_personsController),
            ),
        Store: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_storesController),
            ),
      },
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
        tabs: [
          (
            icon: Icon(viewableObjectService.getDefaultIconFor<Street>()),
            label: 'الشوارع'
          ),
          (
            icon: Icon(viewableObjectService.getDefaultIconFor<Family>()),
            label: 'العائلات'
          ),
          (
            icon: Icon(viewableObjectService.getDefaultIconFor<Person>()),
            label: 'المخدومين'
          ),
          (
            icon: Icon(viewableObjectService.getDefaultIconFor<Store>()),
            label: 'المتاجر'
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
                child: FilledButton.icon(
                  label: const Text('الموقع على الخريطة'),
                  icon: const Icon(Symbols.map),
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
              name: 'أخر افتقاد',
              value: area.lastVisit?.time,
              getHistoryStream: () => DatabaseService.I.history
                  .paginateVisitHistory<Area>(id: area.id),
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
        onPressed: () => EditAreaRoute($extra: area).push(context),
        icon: const Icon(Symbols.edit),
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على المنطقة',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButtonBuilder: (context, tabController, area) =>
          SwitchingFloatingActionButton(
        tabController: tabController,
        icons: const {
          0: Icon(Symbols.add_road),
          1: Icon(Symbols.group_add),
          2: Icon(Symbols.person_add),
          3: Icon(Symbols.add_business),
        },
        onTap: (newIndex) {
          if (newIndex == 0) {
            const EditStreetRoute().push(context);
          } else if (newIndex == 1) {
            const EditFamilyRoute().push(context);
          } else if (newIndex == 2) {
            const EditPersonRoute().push(context);
          } else if (newIndex == 3) {
            const EditStoreRoute().push(context);
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
