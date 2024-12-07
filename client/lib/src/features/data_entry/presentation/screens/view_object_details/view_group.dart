import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ViewGroup extends StatefulWidget {
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
          groups: Input_PersonsGroupsBoolExp(
            groupId: Input_UuidComparisonExp($_eq: widget.groupId.toUuid()),
          ),
        ),
      ],
    ),
  );

  late final viewableObjectService = ViewableObjectService.I;

  late final stream =
      DatabaseService.I.groups.streamSingleById(id: widget.groupId);

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails(
      object: widget.group,
      objectId: widget.groupId,
      objectStream: stream,
      childrenTypes: const [Group],
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
        tabs: [
          (
            icon: Icon(viewableObjectService.getDefaultIconFor<Person>()),
            label: 'المخدومين'
          ),
        ],
      ),
      tabsContentBuilders: {
        Group: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _personsController,
            ),
      },
      detailsBuilder: (context, group) => SliverList(
        delegate: SliverChildListDelegate(
          [
            ListTile(
              title: const Text('الخدمة'),
              subtitle: group.service != null
                  ? Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: ViewableObjectCard(group.service!),
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
              title: FilledButton.icon(
                icon: const Icon(Symbols.query_stats),
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
        onPressed: () => EditGroupRoute(
          $extra: EditGroupExtra(group: group),
        ).push(context),
        icon: const Icon(Symbols.edit),
      ),
      floatingActionButtonBuilder: (context, tabController, group) =>
          FloatingActionButton(
        onPressed: () {
          EditPersonRoute(
            $extra: EditPersonExtra(
              service: group.service?.copyWith(groups: [group]),
              group: group,
            ),
          ).push(context);
        },
        child: const Icon(Symbols.person_add),
      ),
    );
  }

  @override
  void dispose() {
    _personsController.dispose();

    super.dispose();
  }
}
