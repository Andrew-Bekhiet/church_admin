import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class ViewStreet extends StatefulWidget {
  final Street? street;
  final String streetId;

  const ViewStreet({required this.streetId, this.street, super.key});

  @override
  State<ViewStreet> createState() => _ViewStreetState();
}

class _ViewStreetState extends State<ViewStreet> {
  late final _familiesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.families.streamAll(
        where: Stream.value(
          [
            Input_FamiliesBoolExp(
              address: Input_AddressesBoolExp(
                streetId:
                    Input_UuidComparisonExp($_eq: widget.streetId.toUuid()),
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
              address: Input_AddressesBoolExp(
                streetId:
                    Input_UuidComparisonExp($_eq: widget.streetId.toUuid()),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  late final _personsController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.persons.streamAll(
        where: Stream.value(
          [
            Input_PersonsBoolExp(
              address: Input_AddressesBoolExp(
                streetId:
                    Input_UuidComparisonExp($_eq: widget.streetId.toUuid()),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  final Set<ViewableObjectListController> _controllersToDispose = {};

  late final viewableObjectService = ViewableObjectService.I;

  late final stream = DatabaseService.I.streets.streamSingleById(
    id: widget.streetId,
  );

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails(
      objectId: widget.streetId,
      object: widget.street,
      objectStream: stream,
      childrenTypes: const [Family, Person, Store],
      tabsContentBuilders: {
        Family: (context) => ViewableObjectList<Family>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _familiesController,
            ),
        Person: (context) => ViewableObjectList<Person>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _personsController,
            ),
        Store: (context) => ViewableObjectList<Store>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _storesController,
            ),
      },
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
        tabs: [
          (
            icon: viewableObjectService.getDefaultIconFor<Family>(),
            label: 'العائلات',
          ),
          (
            icon: viewableObjectService.getDefaultIconFor<Person>(),
            label: 'المخدومين',
          ),
          (
            icon: viewableObjectService.getDefaultIconFor<Store>(),
            label: 'المتاجر',
          ),
        ],
      ),
      detailsBuilder: (context, street) => SliverList(
        delegate: SliverChildListDelegate([
          if (street.line != null)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: FilledButton.tonalIcon(
                style: Theme.of(context).filledTonalButtonStyleWorkaround,
                label: const Text('الموقع على الخريطة'),
                icon: const Icon(Symbols.map),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ViewGeodataMap(
                      initialGeomapOptions: GeomapOptions(
                        selectedStreets: {street},
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ListTile(
            title: const Text('المناطق التي يظهر بها'),
            subtitle: Wrap(
              children: [
                for (final a in street.areas ?? <Area>[]) ViewableObjectCard(a),
              ],
            ),
          ),
          ListTile(
            title: FilledButton.icon(
              icon: const Icon(Symbols.query_stats),
              label: const Text('احصائيات'),
              // TODO: add street analysis
              onPressed: () {},
            ),
          ),
          HistoryProperty(
            name: 'أخر افتقاد',
            value: street.lastVisit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.history
                  .paginateVisitHistory<Street>(id: street.id),
            ),
          ),
          HistoryProperty(
            name: 'أخر تحديث للبيانات',
            value: street.lastEdit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.history.paginateEditHistory<Street>(
                id: street.id,
              ),
            ),
          ),
        ]),
      ),
      editButtonBuilder: (context, street) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => EditStreetRoute($extra: street).push(context),
        icon: const Icon(Symbols.edit),
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على الشارع',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      bottomNavBarBuilder: (context, tabController) => StreamBuilder<String?>(
        stream: tabController.animation!.asStream().switchMap(
          (index) {
            final currentIndex = index.round();

            return switch (currentIndex) {
              0 => _familiesController,
              1 => _personsController,
              2 => _storesController,
              _ => throw UnimplementedError(),
            }
                .totalCountStream
                .map(
                  (c) => switch (currentIndex) {
                    0 => '$c عائلة',
                    1 => '$c مخدوم',
                    2 => '$c متجر',
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
      floatingActionButtonBuilder: (context, tabController, street) =>
          SwitchingFloatingActionButton.fromTabController(
        tabController: tabController,
        icons: const [
          Icon(Symbols.group_add),
          Icon(Symbols.person_add),
          Icon(Symbols.add_business),
        ],
        onTap: (newIndex) {
          if (newIndex == 0) {
            EditFamilyRoute(
              $extra: EditFamilyExtra(street: street),
            ).push(context);
          } else if (newIndex == 1) {
            const EditPersonRoute().push(context);
          } else if (newIndex == 2) {
            EditStoreRoute(
              $extra: EditStoreExtra(street: street),
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
