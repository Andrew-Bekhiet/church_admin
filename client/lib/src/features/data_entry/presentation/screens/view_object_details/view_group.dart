import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

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
      where: Stream.value(
        [
          Filter(
            PersonFields().groupsRel.redirectTo(PersonsGroupsFields().groupId),
            PrimitiveOperator.eq,
            widget.groupId,
          ),
        ],
      ),
      orderBy: _personsOrderBy.stream,
    ),
  );

  final BehaviorSubject<List<OrderBy>> _personsOrderBy = BehaviorSubject.seeded(
    ViewObjectDetails.getLastOrderByFor(
      type: AdvancedQueriesMetadata().person,
      inServiceContext: true,
      orElse: () => [
        OrderBy(field: PersonFields().studyYear),
        OrderBy(field: PersonFields().name),
      ],
    ),
  );
  late final viewableObjectService = ViewableObjectService.I;

  late final stream = DatabaseService.I.groups.streamSingleById(
    id: widget.groupId,
  );

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails(
      object: widget.group,
      objectId: widget.groupId,
      objectStream: stream,
      childrenTypes: const [Group],
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
        filtersWidget: IconButton(
          visualDensity: VisualDensity.compact,
          padding: EdgeInsets.zero,
          icon: const Icon(Symbols.sort),
          onPressed: _showOrderBySheet,
        ),
        tabs: [
          (
            icon: viewableObjectService.getDefaultIconFor<Person>(),
            label: 'المخدومين',
          ),
        ],
      ),
      tabsContentBuilders: {
        Group: (context) => OrderedViewableObjectList(
          orderByStream: _personsOrderBy.stream,
          initialOrderBy: _personsOrderBy.value,
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
                      'من ${DateFormat('yyyy/M/d').format(group.validity!.start)} '
                      'إلى '
                      '${DateFormat('yyyy/M/d').format(group.validity!.end)}',
                    )
                  : const Text('لا يوجد'),
            ),
            if ([
                  ?group.defaultMeeting,
                  ...?group.meetings,
                ].firstWhereOrNull((m) => !m.isArchived)
                case final defaultMeeting?)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FilledButton.icon(
                  style: Theme.of(context).largeFilledButtonStyle,
                  icon: const Icon(Symbols.productivity),
                  label: Text('تسجيل الحضور ل${defaultMeeting.name}'),
                  onPressed: () => RecordAttendanceRoute(
                    $extra: defaultMeeting,
                  ).push(context),
                ),
              ),
            ListTile(
              title: FilledButton.icon(
                icon: const Icon(Symbols.query_stats),
                label: const Text('احصائيات'),
                onPressed: () => unawaited(
                  MeetingsAnalysisRoute(
                    $extra: MeetingsAnalysisExtra(
                      title: 'احصائيات ${group.name}',
                      initialRangePreset: PastQuarterDateTimeRangePreset(),
                      subject: GroupAnalysisSubject(group),
                    ),
                  ).push(context),
                ),
              ),
            ),
            HistoryProperty(
              name: 'أخر تحديث للبيانات',
              value: group.lastEdit?.time,
              getHistoryListController: () => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.history
                    .paginateEditHistory<Group>(id: group.id),
              ),
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
      bottomNavBarBuilder: (context, tabController) => TotalCountLabel(
        countStream: _personsController.totalCountStream.map(
          (c) => '$c مخدوم',
        ),
      ),
      floatingActionButtonBuilder: (context, tabController, group) =>
          FloatingActionButton(
            onPressed: () => EditPersonRoute(
              $extra: EditPersonExtra(
                service: group.service?.copyWith(groups: [group]),
                group: group,
              ),
            ).push(context),
            child: const Icon(Symbols.person_add),
          ),
    );
  }

  @override
  void dispose() {
    unawaited(_personsController.dispose());

    super.dispose();
  }

  Future<void> _showOrderBySheet() async {
    final queryableType = AdvancedQueriesMetadata().person;

    await showOrderByBottomSheet(
      context,
      queryableType: queryableType,
      orderBySubject: _personsOrderBy,
      onChanged: (newOrderBy) {
        _personsOrderBy.add(newOrderBy);
        unawaited(
          ViewObjectDetails.saveLastOrderByFor(
            type: queryableType,
            inServiceContext: true,
            orderBy: newOrderBy,
          ),
        );
      },
    );
  }
}
