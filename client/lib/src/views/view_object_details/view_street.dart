import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewStreet extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'viewStreet',
    builder: (context, state) {
      if (state.uri.queryParameters['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewStreet(
        streetId: state.uri.queryParameters['id']!,
        street: (state.extra as Map?)?['street'] as Street?,
      );
    },
    routes: [
      EditStreet.route,
      EditFamily.route,
      EditStore.route,
      EditPerson.route,
    ],
  );

  final Street? street;
  final String streetId;

  const ViewStreet({
    required this.streetId,
    this.street,
    super.key,
  });

  @override
  State<ViewStreet> createState() => _ViewStreetState();
}

class _ViewStreetState extends State<ViewStreet> {
  late final _familiesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.families.streamAll(
      where: [
        Input_FamiliesBoolExp(
          streets: Input_StreetsBoolExp(
            id: Input_UuidComparisonExp($_eq: widget.streetId.toUuid()),
          ),
        ),
      ],
    ),
  );

  late final _storesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.stores.streamAll(
      where: [
        Input_StoresBoolExp(
          streets: Input_StreetsBoolExp(
            id: Input_UuidComparisonExp($_eq: widget.streetId.toUuid()),
          ),
        ),
      ],
    ),
  );

  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.streamAll(
      where: [
        Input_PersonsBoolExp(
          streets: Input_StreetsBoolExp(
            id: Input_UuidComparisonExp($_eq: widget.streetId.toUuid()),
          ),
        ),
      ],
    ),
  );

  final Set<ViewableObjectListController> _controllersToDispose = {};

  late final viewableObjectService = ViewableObjectService.I;

  late final stream =
      DatabaseService.I.streets.streamSingleById(id: widget.streetId);

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails(
      objectId: widget.streetId,
      object: widget.street,
      objectStream: stream,
      childrenTypes: const [Family, Store, Person],
      tabsContentBuilders: {
        Family: (context) => ViewableObjectList<Family>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_familiesController),
            ),
        Store: (context) => ViewableObjectList<Store>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_storesController),
            ),
        Person: (context) => ViewableObjectList<Person>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_personsController),
            ),
      },
      tabsHeaderBuilder: (context, family) => TabBar(
        tabs: [
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
      detailsBuilder: (context, street) => SliverList(
        delegate: SliverChildListDelegate(
          [
            if (street.line != null)
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
                            GeomapOptions(selectedStreets: {street}),
                      ),
                    ),
                  ),
                ),
              ),
            ListTile(
              title: const Text('المناطق التي يظهر بها'),
              subtitle: Column(
                children: [
                  for (final a in street.areas ?? <Area>[])
                    ViewableObjectWidget(
                      a,
                      isDense: true,
                      forceShowSecondLine: false,
                      circleCrop: false,
                    ),
                ],
              ),
            ),
            ListTile(
              title: FilledButton.tonalIcon(
                icon: const Icon(Icons.query_stats),
                label: const Text('احصائيات'),
                // TODO: add street analysis
                onPressed: () {},
              ),
            ),
            HistoryProperty(
              name: 'أخر افتقاد',
              value: street.lastVisit?.time,
              getHistoryStream: () => DatabaseService.I.history
                  .paginateVisitHistory<Street>(id: street.id),
            ),
            HistoryProperty(
              name: 'أخر تحديث للبيانات',
              value: street.lastEdit?.time,
              getHistoryStream: () => DatabaseService.I.history
                  .paginateEditHistory<Street>(id: street.id),
            ),
          ],
        ),
      ),
      editButtonBuilder: (context, street) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => context.push(
          Uri(
            path: '/viewStreet/editStreet',
            queryParameters: {'id': widget.streetId},
          ).toString(),
          extra: {'street': street},
        ),
        icon: const Icon(Icons.edit),
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على الشارع',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButtonBuilder: (context, tabController, street) =>
          SwitchingFloatingActionButton(
        tabController: tabController,
        icons: const {
          0: Icon(Icons.group_add),
          1: Icon(Icons.add_business),
          2: Icon(Icons.person_add_alt_1),
        },
        onTap: (newIndex) {
          if (newIndex == 0) {
            context.push('/viewStreet/editFamily');
          } else if (newIndex == 1) {
            context.push('/viewStreet/editStore');
          } else if (newIndex == 2) {
            context.push('/viewStreet/editPerson');
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
