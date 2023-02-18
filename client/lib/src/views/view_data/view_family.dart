import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide ViewableObjectWidget;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ViewFamily extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'viewFamily',
    builder: (context, state) {
      if (state.queryParams['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewFamily(
        familyId: state.queryParams['id']!,
        family: (state.extra as Map?)?['family'] as Family?,
      );
    },
  );

  final Family? family;
  final String familyId;
  const ViewFamily({
    required this.familyId,
    this.family,
    super.key,
  });

  @override
  State<ViewFamily> createState() => _ViewFamilyState();
}

class _ViewFamilyState extends State<ViewFamily> {
  late final IconData familyIcon;
  late final IconData storeIcon;
  late final IconData personIcon;

  @override
  void initState() {
    super.initState();

    final viewableObjectFamily = GetIt.I<CAViewableObjectService>();

    personIcon = viewableObjectFamily.getDefaultIconFor<Person>();
    familyIcon = viewableObjectFamily.getDefaultIconFor<Family>();
    storeIcon = viewableObjectFamily.getDefaultIconFor<Store>();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Family?>(
      initialData: widget.family,
      stream: DatabaseService.I.families.watchFamily(familyId: widget.familyId),
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
                'لم يتم العثور على العائلة',
                style: themeData.textTheme.titleLarge,
              ),
            ),
          );
        }

        final family = snapshot.requireData!;

        final foregroundColor = family.color.getContrastingColor(
          ListTileTheme.of(context).textColor ??
              themeData.listTileTheme.textColor ??
              themeData.textTheme.titleMedium!.color!,
        );

        return DefaultTabController(
          length: 4,
          child: Theme(
            data: CAThemingService.getDefault(primaryOverride: family.color),
            child: Scaffold(
              body: NestedScrollView(
                headerSliverBuilder: (context, isBodyScrolled) => [
                  SliverAppBar(
                    backgroundColor: family.color,
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
                              path: 'viewFamily/editFamily',
                              queryParameters: {'id': widget.familyId},
                            ).toString(),
                            extra: {'family': family},
                          ),
                          icon: const Icon(Icons.edit),
                        ),
                    ],
                    flexibleSpace: ViewableObjectAppBar(
                      circleCrop: false,
                      foregroundColor: foregroundColor,
                      viewable: widget.family?.hasImage ?? false
                          ? widget.family!
                          : family,
                      appBarMaxHeight: 280,
                      duration: const Duration(milliseconds: 450),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        CopiablePropertyWidget(
                          'العنوان والموقع',
                          family.address,
                          additionalOptions: [
                            if (family.geolocation != null)
                              IconButton(
                                icon: const Icon(Icons.map),
                                onPressed: () async =>
                                    Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DataGeomap(initialFamily: family),
                                  ),
                                ),
                                tooltip: 'إظهار على الخريطة',
                              ),
                          ],
                        ),
                        ListTile(
                          title: const Text('المناطق التي تظهر بها'),
                          subtitle: Column(
                            children: [
                              for (final a in family.areas ?? <Area>[])
                                ViewableObjectWidget(
                                  a,
                                  dense: true,
                                  forceShowSecondLine: false,
                                ),
                            ],
                          ),
                        ),
                        ListTile(
                          title: const Text('الشوارع التي تظهر بها'),
                          subtitle: Column(
                            children: [
                              for (final s in family.streets ?? <Street>[])
                                ViewableObjectWidget(
                                  s,
                                  dense: true,
                                  forceShowSecondLine: false,
                                ),
                            ],
                          ),
                        ),
                        CopiablePropertyWidget(
                          'ملاحظات',
                          family.notes,
                          showErrorIfEmpty: false,
                        ),
                        ListTile(
                          title: FilledButton.tonalIcon(
                            icon: const Icon(Icons.query_stats),
                            label: const Text('احصائيات'),
                            // TODO: add family analysis
                            onPressed: () {},
                          ),
                        ),
                        HistoryProperty(
                          name: 'أخر تحديث للبيانات',
                          value: family.lastEdit?.time,
                          getHistoryStream: () => DatabaseService.I.history
                              .paginateEditHistory<Family>(id: family.id),
                        ),
                      ],
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: PreferredSizePersistentHeaderDelegate(
                      child: TabBar(
                        tabs: [
                          Tab(text: 'المخدومين', icon: Icon(personIcon)),
                          Tab(text: 'الأبناء', icon: Icon(familyIcon)),
                          Tab(text: 'الأباء', icon: Icon(familyIcon)),
                          Tab(text: 'المتاجر', icon: Icon(storeIcon)),
                        ],
                      ),
                    ),
                  ),
                ],
                body: _FamilyContents(key: ValueKey(family.id), family: family),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _FamilyContents extends StatefulWidget {
  const _FamilyContents({required this.family, super.key});

  final Family family;

  @override
  State<_FamilyContents> createState() => _FamilyContentsState();
}

class _FamilyContentsState extends State<_FamilyContents> {
  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.paginatePersons(
      byFamilyId: widget.family.id,
    ),
  );
  late final _childrenFamiliesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.families.paginateFamilies(
      byParentFamilyId: widget.family.id,
    ),
  );
  late final _parentFamiliesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.families.paginateFamilies(
      byChildFamilyId: widget.family.id,
    ),
  );
  late final _storesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.stores.paginateStores(
      byFamilyId: widget.family.id,
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
            objectsController: _personsController,
          ),
        ),
        LazyTabPage(
          index: 1,
          builder: (context) => ViewableObjectList(
            scrollController: PrimaryScrollController.maybeOf(context),
            objectsController: _childrenFamiliesController,
          ),
        ),
        LazyTabPage(
          index: 2,
          builder: (context) => ViewableObjectList(
            scrollController: PrimaryScrollController.maybeOf(context),
            objectsController: _parentFamiliesController,
          ),
        ),
        LazyTabPage(
          index: 3,
          builder: (context) => ViewableObjectList(
            scrollController: PrimaryScrollController.maybeOf(context),
            objectsController: _storesController,
          ),
        ),
      ],
    );
  }
}
