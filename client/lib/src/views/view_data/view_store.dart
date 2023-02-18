import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide ViewableObjectWidget;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewStore extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'viewStore',
    builder: (context, state) {
      if (state.queryParams['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewStore(
        storeId: state.queryParams['id']!,
        store: (state.extra as Map?)?['store'] as Store?,
      );
    },
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
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Store?>(
      initialData: widget.store,
      stream: DatabaseService.I.stores.watchStore(storeId: widget.storeId),
      builder: (context, snapshot) {
        final themeData = Theme.of(context);

        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            body: ErrorWidget.builder(
              FlutterErrorDetails(exception: snapshot.error!),
            ),
          );
        } else if (!snapshot.hasData &&
            snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (!snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            body: Center(
              child: Text(
                'لم يتم العثور على المتجر',
                style: themeData.textTheme.titleLarge,
              ),
            ),
          );
        }

        final store = snapshot.requireData!;

        final foregroundColor = store.color.getContrastingColor(
          ListTileTheme.of(context).textColor ??
              themeData.listTileTheme.textColor ??
              themeData.textTheme.titleMedium!.color!,
        );

        return DefaultTabController(
          length: 3,
          child: Theme(
            data: CAThemingService.getDefault(primaryOverride: store.color),
            child: Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: store.color,
                    foregroundColor: foregroundColor,
                    stretch: true,
                    pinned: true,
                    expandedHeight: 280,
                    actions: [
                      if (snapshot.connectionState != ConnectionState.active)
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: Center(child: CircularProgressIndicator()),
                        )
                      else
                        IconButton(
                          tooltip: 'تعديل',
                          onPressed: () => context.go(
                            Uri(
                              path: 'viewStore/editStore',
                              queryParameters: {'id': widget.storeId},
                            ).toString(),
                            extra: {'store': store},
                          ),
                          icon: const Icon(Icons.edit),
                        ),
                    ],
                    flexibleSpace: ViewableObjectAppBar(
                      circleCrop: false,
                      foregroundColor: foregroundColor,
                      viewable: widget.store?.hasImage ?? false
                          ? widget.store!
                          : store,
                      appBarMaxHeight: 280,
                      duration: const Duration(milliseconds: 450),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        if (store.geolocation != null)
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
                                  builder: (context) =>
                                      DataGeomap(initialStore: store),
                                ),
                              ),
                            ),
                          ),
                        ListTile(
                          title: const Text('المناطق التي يظهر بها'),
                          subtitle: Column(
                            children: [
                              for (final a in store.areas ?? <Area>[])
                                ViewableObjectWidget(
                                  a,
                                  dense: true,
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
                                  dense: true,
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
                                  dense: true,
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
