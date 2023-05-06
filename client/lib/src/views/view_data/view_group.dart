import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
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
  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.streamAll(
      where: [
        Input_PersonsBoolExp(
          classes: Input_ClassesBoolExp(
            id: Input_UuidComparisonExp($_eq: widget.groupId.toUuid()),
          ),
        ),
      ],
    ),
  );

  late final viewableObjectService = CAViewableObjectService.I;

  late final stream =
      DatabaseService.I.groups.streamSingleById(id: widget.groupId);

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails(
      object: widget.group,
      objectId: widget.groupId,
      objectStream: stream,
      childrenTypes: const [Group],
      tabsHeaderBuilder: (context, group) => Tab(
        text: 'المخدومين',
        icon: Icon(viewableObjectService.getDefaultIconFor<Person>()),
      ),
      tabsContentBuilders: {
        Group: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _personsController,
            )
      },
      detailsBuilder: (context, group) => SliverList(
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
                          DateFormat('yyyy/M/d').format(group.validity!.start) +
                          ' إلى ' +
                          DateFormat('yyyy/M/d').format(group.validity!.end),
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
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على المجموعة',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      editButtonBuilder: (context, group) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => context.push(
          Uri(
            path: '/viewGroup/editGroup',
            queryParameters: {'id': widget.groupId},
          ).toString(),
          extra: {'group': group},
        ),
        icon: const Icon(Icons.edit),
      ),
    );
  }

  @override
  void dispose() {
    _personsController.dispose();

    super.dispose();
  }
}
