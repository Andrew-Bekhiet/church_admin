import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide ViewableObjectWidget;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ViewClass extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'viewClass',
    builder: (context, state) {
      if (state.queryParams['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewClass(
        classId: state.queryParams['id']!,
        $class: (state.extra as Map?)?['class'] as Class?,
      );
    },
  );

  final Class? $class;
  final String classId;
  const ViewClass({
    required this.classId,
    this.$class,
    super.key,
  });

  @override
  State<ViewClass> createState() => _ViewClassState();
}

class _ViewClassState extends State<ViewClass> {
  late final IconData groupIcon;
  late final IconData personIcon;

  @override
  void initState() {
    super.initState();

    final viewableObjectClass = GetIt.I<CAViewableObjectService>();

    groupIcon = viewableObjectClass.getDefaultIconFor<Group>();
    personIcon = viewableObjectClass.getDefaultIconFor<Person>();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Class?>(
      initialData: widget.$class,
      stream: DatabaseService.I.classes.watchClass(classId: widget.classId),
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
                'لم يتم العثور على الفصل',
                style: themeData.textTheme.titleLarge,
              ),
            ),
          );
        }

        final $class = snapshot.requireData!;

        final foregroundColor = $class.color.getContrastingColor(
          ListTileTheme.of(context).textColor ??
              themeData.listTileTheme.textColor ??
              themeData.textTheme.titleMedium!.color!,
        );

        return DefaultTabController(
          length: 2,
          child: Theme(
            data: CAThemingService.getDefault(primaryOverride: $class.color),
            child: Scaffold(
              body: NestedScrollView(
                headerSliverBuilder: (context, isBodyScrolled) => [
                  SliverAppBar(
                    backgroundColor: $class.color,
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
                              path: 'viewClass/editClass',
                              queryParameters: {'id': widget.classId},
                            ).toString(),
                            extra: {'class': $class},
                          ),
                          icon: const Icon(Icons.edit),
                        ),
                    ],
                    flexibleSpace: ViewableObjectAppBar(
                      circleCrop: false,
                      foregroundColor: foregroundColor,
                      viewable: widget.$class?.hasImage ?? false
                          ? widget.$class!
                          : $class,
                      appBarMaxHeight: 280,
                      duration: const Duration(milliseconds: 450),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        ListTile(
                          title: const Text('الخدمة'),
                          subtitle: $class.service != null
                              ? ViewableObjectWidget(
                                  $class.service!,
                                  dense: true,
                                  forceShowSecondLine: false,
                                )
                              : const Text('لا يوجد'),
                        ),
                        ListTile(
                          title: const Text('السنة الدراسية'),
                          subtitle: Text($class.studyYear?.name ?? 'لا يوجد'),
                        ),
                        ListTile(
                          title: FilledButton.tonalIcon(
                            icon: const Icon(Icons.query_stats),
                            label: const Text('احصائيات'),
                            // TODO: add class analysis
                            onPressed: () {},
                          ),
                        ),
                        HistoryProperty(
                          name: 'أخر تحديث للبيانات',
                          value: $class.lastEdit?.time,
                          getHistoryStream: () => DatabaseService.I.history
                              .paginateEditHistory<Class>(id: $class.id),
                        ),
                        ListTile(
                          title: const Text('الخدام المسؤولين'),
                          subtitle: $class.adminUsers?.isNotEmpty ?? false
                              ? AdminUsers(users: $class.adminUsers!)
                              : const Text('لا يوجد خدام محددين للفصل'),
                        ),
                      ],
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: PreferredSizePersistentHeaderDelegate(
                      child: Tab(text: 'المخدومين', icon: Icon(personIcon)),
                    ),
                  ),
                ],
                body: _ClassContents(key: ValueKey($class.id), $class: $class),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ClassContents extends StatefulWidget {
  const _ClassContents({required this.$class, super.key});

  final Class $class;

  @override
  State<_ClassContents> createState() => _ClassContentsState();
}

class _ClassContentsState extends State<_ClassContents>
    with SingleTickerProviderStateMixin {
  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.paginatePersons(
      byClassId: widget.$class.id,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ViewableObjectList(
      scrollController: PrimaryScrollController.maybeOf(context),
      objectsController: _personsController,
    );
  }
}
