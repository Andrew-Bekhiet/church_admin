import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide ViewableObjectWidget;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ViewStreet extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'viewStreet',
    builder: (context, state) {
      if (state.queryParams['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewStreet(
        streetId: state.queryParams['id']!,
        street: (state.extra as Map?)?['street'] as Street?,
      );
    },
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
  late final IconData familyIcon;
  late final IconData storeIcon;
  late final IconData personIcon;

  @override
  void initState() {
    super.initState();

    final viewableObjectStreet = GetIt.I<CAViewableObjectService>();

    familyIcon = viewableObjectStreet.getDefaultIconFor<Family>();
    storeIcon = viewableObjectStreet.getDefaultIconFor<Store>();
    personIcon = viewableObjectStreet.getDefaultIconFor<Person>();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Street?>(
      initialData: widget.street,
      stream: DatabaseService.I.streets.watchStreet(streetId: widget.streetId),
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
                'لم يتم العثور على الشارع',
                style: themeData.textTheme.titleLarge,
              ),
            ),
          );
        }

        final street = snapshot.requireData!;

        final foregroundColor = street.color.getContrastingColor(
          ListTileTheme.of(context).textColor ??
              themeData.listTileTheme.textColor ??
              themeData.textTheme.titleMedium!.color!,
        );

        return DefaultTabController(
          length: 3,
          child: Theme(
            data: CAThemingService.getDefault(primaryOverride: street.color),
            child: Scaffold(
              body: NestedScrollView(
                headerSliverBuilder: (context, isBodyScrolled) => [
                  SliverAppBar(
                    backgroundColor: street.color,
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
                              path: 'viewStreet/editStreet',
                              queryParameters: {'id': widget.streetId},
                            ).toString(),
                            extra: {'street': street},
                          ),
                          icon: const Icon(Icons.edit),
                        ),
                    ],
                    flexibleSpace: ViewableObjectAppBar(
                      circleCrop: false,
                      foregroundColor: foregroundColor,
                      viewable: widget.street?.hasImage ?? false
                          ? widget.street!
                          : street,
                      appBarMaxHeight: 280,
                      duration: const Duration(milliseconds: 450),
                    ),
                  ),
                  SliverList(
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
                              onPressed: () async => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DataGeomap(initialStreet: street),
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
                                  dense: true,
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
                          name: 'أخر تحديث للبيانات',
                          value: street.lastEdit?.time,
                          getHistoryStream: () => DatabaseService.I.history
                              .paginateEditHistory<Street>(id: street.id),
                        ),
                      ],
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: PreferredSizePersistentHeaderDelegate(
                      child: TabBar(
                        tabs: [
                          Tab(text: 'العائلات', icon: Icon(familyIcon)),
                          Tab(text: 'المتاجر', icon: Icon(storeIcon)),
                          Tab(text: 'المخدومين', icon: Icon(personIcon)),
                        ],
                      ),
                    ),
                  ),
                ],
                body: _StreetContents(key: ValueKey(street.id), street: street),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _StreetContents extends StatefulWidget {
  const _StreetContents({required this.street, super.key});

  final Street street;

  @override
  State<_StreetContents> createState() => _StreetContentsState();
}

class _StreetContentsState extends State<_StreetContents> {
  late final _familiesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.families.paginateFamilies(
      byStreetId: widget.street.id,
    ),
  );
  late final _storesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.stores.paginateStores(
      byStreetId: widget.street.id,
    ),
  );
  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.paginatePersons(
      byStreetId: widget.street.id,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        LazyTabPage(
          index: 0,
          builder: (context) => ViewableObjectList(
            scrollController: PrimaryScrollController.maybeOf(context),
            objectsController: _familiesController,
          ),
        ),
        LazyTabPage(
          index: 1,
          builder: (context) => ViewableObjectList(
            scrollController: PrimaryScrollController.maybeOf(context),
            objectsController: _storesController,
          ),
        ),
        LazyTabPage(
          index: 2,
          builder: (context) => ViewableObjectList(
            scrollController: PrimaryScrollController.maybeOf(context),
            objectsController: _personsController,
          ),
        ),
      ],
    );
  }
}
