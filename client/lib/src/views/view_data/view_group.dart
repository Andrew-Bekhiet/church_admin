import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide ViewableObjectWidget;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ViewGroup extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'viewGroup',
    builder: (context, state) {
      if (state.queryParams['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewGroup(
        groupId: state.queryParams['id']!,
        group: (state.extra as Map?)?['group'] as Group?,
      );
    },
  );

  final Group? group;
  final String groupId;
  const ViewGroup({
    required this.groupId,
    this.group,
    super.key,
  });

  @override
  State<ViewGroup> createState() => _ViewGroupState();
}

class _ViewGroupState extends State<ViewGroup> {
  late final IconData groupIcon;
  late final IconData personIcon;

  @override
  void initState() {
    super.initState();

    final viewableObjectGroup = GetIt.I<CAViewableObjectService>();

    groupIcon = viewableObjectGroup.getDefaultIconFor<Group>();
    personIcon = viewableObjectGroup.getDefaultIconFor<Person>();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Group?>(
      initialData: widget.group,
      stream: DatabaseService.I.groups.watchGroup(groupId: widget.groupId),
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
                'لم يتم العثور على المجموعة',
                style: themeData.textTheme.titleLarge,
              ),
            ),
          );
        }

        final group = snapshot.requireData!;

        final foregroundColor = group.color.getContrastingColor(
          ListTileTheme.of(context).textColor ??
              themeData.listTileTheme.textColor ??
              themeData.textTheme.titleMedium!.color!,
        );

        return DefaultTabController(
          length: 2,
          child: Theme(
            data: CAThemingService.getDefault(primaryOverride: group.color),
            child: Scaffold(
              body: NestedScrollView(
                headerSliverBuilder: (context, isBodyScrolled) => [
                  SliverAppBar(
                    backgroundColor: group.color,
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
                              path: 'viewGroup/editGroup',
                              queryParameters: {'id': widget.groupId},
                            ).toString(),
                            extra: {'group': group},
                          ),
                          icon: const Icon(Icons.edit),
                        ),
                    ],
                    flexibleSpace: ViewableObjectAppBar(
                      circleCrop: false,
                      foregroundColor: foregroundColor,
                      viewable: widget.group?.hasImage ?? false
                          ? widget.group!
                          : group,
                      appBarMaxHeight: 280,
                      duration: const Duration(milliseconds: 450),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        ListTile(
                          title: const Text('الخدمة'),
                          subtitle: group.service != null
                              ? ViewableObjectWidget(
                                  group.service!,
                                  dense: true,
                                  forceShowSecondLine: false,
                                )
                              : const Text('لا يوجد'),
                        ),
                        ListTile(
                          title: const Text('الصلاحية'),
                          subtitle: group.validity != null
                              ? Text(
                                  'من ' +
                                      DateFormat('yyyy/M/d')
                                          .format(group.validity!.start) +
                                      ' إلى ' +
                                      DateFormat('yyyy/M/d')
                                          .format(group.validity!.end),
                                )
                              : const Text('لا يوجد'),
                        ),
                        ListTile(
                          title: FilledButton.tonalIcon(
                            icon: const Icon(Icons.query_stats),
                            label: const Text('احصائيات'),
                            // TODO: add group analysis
                            onPressed: () {},
                          ),
                        ),
                        HistoryProperty(
                          name: 'أخر تحديث للبيانات',
                          value: group.lastEdit?.time,
                          getHistoryStream: () => DatabaseService.I.history
                              .paginateEditHistory<Group>(id: group.id),
                        ),
                        ListTile(
                          title: const Text('الخدام المسؤولين'),
                          subtitle: group.adminUsers?.isNotEmpty ?? false
                              ? AdminUsers(users: group.adminUsers!)
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
                body: _GroupContents(key: ValueKey(group.id), group: group),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _GroupContents extends StatefulWidget {
  const _GroupContents({required this.group, super.key});

  final Group group;

  @override
  State<_GroupContents> createState() => _GroupContentsState();
}

class _GroupContentsState extends State<_GroupContents>
    with SingleTickerProviderStateMixin {
  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.paginatePersons(
      byGroupId: widget.group.id,
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
