import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class ViewStore extends StatefulWidget {
  final Store? store;
  final String storeId;

  const ViewStore({required this.storeId, this.store, super.key});

  @override
  State<ViewStore> createState() => _ViewStoreState();
}

class _ViewStoreState extends State<ViewStore> {
  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.streamAll(
      where: Stream.value(
        [
          Filter(
            PersonFields().store.redirectTo(StoreFields().id),
            PrimitiveOperator.eq,
            widget.storeId,
          ),
        ],
      ),
      orderBy: _personsOrderBy.stream,
    ),
  );

  final BehaviorSubject<List<OrderBy>> _personsOrderBy = BehaviorSubject.seeded(
    ViewObjectDetails.getLastOrderByFor(
      type: AdvancedQueriesMetadata().person,
      orElse: () => [
        OrderBy(field: PersonFields().name),
      ],
    ),
  );

  late final viewableObjectService = ViewableObjectService.I;

  late final stream = DatabaseService.I.stores.streamSingleById(
    id: widget.storeId,
  );

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails(
      objectId: widget.storeId,
      object: widget.store,
      objectStream: stream,
      childrenTypes: const [Person],
      tabsContentBuilders: {
        Person: (context) => OrderedViewableObjectList(
          orderByStream: _personsOrderBy.stream,
          initialOrderBy: _personsOrderBy.value,
          objectsController: _personsController,
        ),
      },
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
        filtersWidget: Builder(
          builder: (context) => IconButton(
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.zero,
            icon: const Icon(Symbols.sort),
            onPressed: _showOrderBySheet,
          ),
        ),
        tabs: [
          (
            label: 'المخدومين',
            icon: viewableObjectService.getDefaultIconFor<Person>(),
          ),
        ],
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على المتجر',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      editButtonBuilder: (context, store) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => EditStoreRoute(
          $extra: EditStoreExtra(store: store),
        ).push(context),
        icon: const Icon(Symbols.edit),
      ),
      detailsBuilder: (context, store) => SliverList(
        delegate: SliverChildListDelegate([
          CopiablePropertyWidget(
            'العنوان والموقع',
            store.address?.toString(),
            additionalOptions: [
              if (store.geolocation != null)
                IconButton(
                  icon: const Icon(Symbols.map),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ViewGeodataMap(
                        initialGeomapOptions: GeomapOptions(
                          selectedStores: {store},
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
            subtitle: store.address?.area != null
                ? ViewableObjectCard(store.address!.area!)
                : null,
          ),
          ListTile(
            title: const Text('الشارع'),
            subtitle: store.address?.street != null
                ? ViewableObjectCard(store.address!.street!)
                : null,
          ),
          ListTile(
            title: const Text('العائلة المسؤولة'),
            subtitle: store.family != null
                ? Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: ViewableObjectCard(store.family!),
                  )
                : const Text('لا يوجد'),
          ),
          ListTile(
            title: FilledButton.icon(
              icon: const Icon(Symbols.query_stats),
              label: const Text('احصائيات'),
              // TODO: add store analysis
              onPressed: () {
                return;
              },
            ),
          ),
          HistoryProperty(
            name: 'أخر تحديث للبيانات',
            value: store.lastEdit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.history
                  .paginateEditHistory<Store>(
                    id: store.id,
                  ),
            ),
          ),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }

  @override
  void dispose() {
    unawaited(_personsController.dispose());
    unawaited(_personsOrderBy.close());

    super.dispose();
  }

  Future<void> _showOrderBySheet() async {
    await showOrderBySheetAndSave(
      context,
      queryableType: AdvancedQueriesMetadata().person,
      orderBySubject: _personsOrderBy,
    );
  }
}
