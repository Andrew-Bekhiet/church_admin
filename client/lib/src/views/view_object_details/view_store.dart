import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewStore extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'viewStore',
    builder: (context, state) {
      if (state.uri.queryParameters['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewStore(
        storeId: state.uri.queryParameters['id']!,
        store: (state.extra as Map?)?['store'] as Store?,
      );
    },
    routes: [
      EditStore.route,
    ],
  );

  final Store? store;
  final String storeId;
  const ViewStore({
    required this.storeId,
    this.store,
    super.key,
  });

  @override
  State<ViewStore> createState() => _ViewStoreState();
}

class _ViewStoreState extends State<ViewStore> {
  late final stream =
      DatabaseService.I.stores.streamSingleById(id: widget.storeId);

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails(
      objectId: widget.storeId,
      object: widget.store,
      objectStream: stream,
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على المتجر',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      editButtonBuilder: (context, store) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => context.push(
          Uri(
            path: '/viewStore/editStore',
            queryParameters: {'id': widget.storeId},
          ).toString(),
          extra: {'store': store},
        ),
        icon: const Icon(Icons.edit),
      ),
      detailsBuilder: (context, store) => SliverList(
        delegate: SliverChildListDelegate(
          [
            CopiablePropertyWidget(
              'العنوان والموقع',
              store.address,
              additionalOptions: [
                if (store.geolocation != null)
                  IconButton(
                    icon: const Icon(Icons.map),
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
              title: const Text('المناطق التي يظهر بها'),
              subtitle: Column(
                children: [
                  for (final a in store.areas ?? <Area>[])
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
              title: const Text('الشوارع التي يظهر بها'),
              subtitle: Column(
                children: [
                  for (final s in store.streets ?? <Street>[])
                    ViewableObjectWidget(
                      s,
                      isDense: true,
                      forceShowSecondLine: false,
                      circleCrop: false,
                    ),
                ],
              ),
            ),
            ListTile(
              title: const Text('العائلة المسؤولة'),
              subtitle: store.family != null
                  ? ViewableObjectWidget(
                      store.family!,
                      isDense: true,
                      forceShowSecondLine: false,
                    )
                  : const Text('لا يوجد'),
            ),
            ListTile(
              title: FilledButton.tonalIcon(
                icon: const Icon(Icons.query_stats),
                label: const Text('احصائيات'),
                // TODO: add store analysis
                onPressed: () {},
              ),
            ),
            HistoryProperty(
              name: 'أخر تحديث للبيانات',
              value: store.lastEdit?.time,
              getHistoryStream: () => DatabaseService.I.history
                  .paginateEditHistory<Store>(id: store.id),
            ),
          ],
        ),
      ),
    );
  }
}
