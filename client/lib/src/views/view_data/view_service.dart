import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide ViewableObjectWidget;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ViewService extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'viewService',
    builder: (context, state) {
      if (state.queryParams['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewService(
        serviceId: state.queryParams['id']!,
        service: (state.extra as Map?)?['service'] as Service?,
      );
    },
  );

  final Service? service;
  final String serviceId;
  const ViewService({
    required this.serviceId,
    this.service,
    super.key,
  });

  @override
  State<ViewService> createState() => _ViewServiceState();
}

class _ViewServiceState extends State<ViewService> {
  late final IconData classIcon;
  late final IconData groupIcon;
  late final IconData personIcon;

  @override
  void initState() {
    super.initState();

    final viewableObjectService = GetIt.I<CAViewableObjectService>();

    classIcon = viewableObjectService.getDefaultIconFor<Class>();
    groupIcon = viewableObjectService.getDefaultIconFor<Group>();
    personIcon = viewableObjectService.getDefaultIconFor<Person>();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Service?>(
      initialData: widget.service,
      stream:
          DatabaseService.I.services.watchService(serviceId: widget.serviceId),
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
                'لم يتم العثور على الخدمة',
                style: themeData.textTheme.titleLarge,
              ),
            ),
          );
        }

        final service = snapshot.requireData!;

        final foregroundColor = service.color.getContrastingColor(
          ListTileTheme.of(context).textColor ??
              themeData.listTileTheme.textColor ??
              themeData.textTheme.titleMedium!.color!,
        );

        return DefaultTabController(
          length: 3,
          child: Theme(
            data: CAThemingService.getDefault(primaryOverride: service.color),
            child: Scaffold(
              body: NestedScrollView(
                headerSliverBuilder: (context, isBodyScrolled) => [
                  SliverAppBar(
                    backgroundColor: service.color,
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
                              path: 'viewService/editService',
                              queryParameters: {'id': widget.serviceId},
                            ).toString(),
                            extra: {'service': service},
                          ),
                          icon: const Icon(Icons.edit),
                        ),
                    ],
                    flexibleSpace: ViewableObjectAppBar(
                      circleCrop: false,
                      foregroundColor: foregroundColor,
                      viewable: widget.service?.hasImage ?? false
                          ? widget.service!
                          : service,
                      appBarMaxHeight: 280,
                      duration: const Duration(milliseconds: 450),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        ListTile(
                          title: const Text('الخدمة التالية'),
                          subtitle: service.nextService != null
                              ? ViewableObjectWidget(
                                  service.nextService!,
                                  dense: true,
                                  forceShowSecondLine: false,
                                )
                              : const Text('لا يوجد'),
                        ),
                        ListTile(
                          title: const Text('السنوات الدراسية'),
                          subtitle: Text(
                            'من ${service.fromStudyYear?.name ?? ''} '
                            'إلى ${service.toStudyYear?.name ?? ''}',
                          ),
                        ),
                        ListTile(
                          title: FilledButton.tonalIcon(
                            icon: const Icon(Icons.query_stats),
                            label: const Text('احصائيات'),
                            // TODO: add service analysis
                            onPressed: () {},
                          ),
                        ),
                        HistoryProperty(
                          name: 'أخر تحديث للبيانات',
                          value: service.lastEdit?.time,
                          getHistoryStream: () => DatabaseService.I.history
                              .paginateEditHistory<Service>(id: service.id),
                        ),
                        ListTile(
                          title: const Text('الخدام المسؤولين'),
                          subtitle: service.adminUsers?.isNotEmpty ?? false
                              ? AdminUsers(users: service.adminUsers!)
                              : const Text('لا يوجد خدام محددين للخدمة'),
                        ),
                      ],
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: PreferredSizePersistentHeaderDelegate(
                      child: TabBar(
                        tabs: [
                          Tab(text: 'الفصول', icon: Icon(classIcon)),
                          Tab(text: 'المجموعات', icon: Icon(groupIcon)),
                          Tab(text: 'المخدومين', icon: Icon(personIcon)),
                        ],
                      ),
                    ),
                  ),
                ],
                body: _ServiceContents(
                  key: ValueKey(service.id),
                  service: service,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ServiceContents extends StatefulWidget {
  const _ServiceContents({required this.service, super.key});

  final Service service;

  @override
  State<_ServiceContents> createState() => _ServiceContentsState();
}

class _ServiceContentsState extends State<_ServiceContents>
    with SingleTickerProviderStateMixin {
  late final _classesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.classes.paginateClasses(
      serviceId: widget.service.id,
    ),
  );
  late final _groupsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.groups.paginateGroups(
      serviceId: widget.service.id,
    ),
  );
  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.paginatePersons(
      byServiceId: widget.service.id,
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
            objectsController: _classesController,
          ),
        ),
        LazyTabPage(
          index: 1,
          builder: (context) => ViewableObjectList(
            scrollController: PrimaryScrollController.maybeOf(context),
            objectsController: _groupsController,
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
