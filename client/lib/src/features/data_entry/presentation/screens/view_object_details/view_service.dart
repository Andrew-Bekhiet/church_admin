import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ViewService extends StatefulWidget {
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
  late final _classesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.classes.streamAll(
        where: Stream.value(
          [
            Filter(
              ClassFields().service.redirectTo(ServiceFields().id),
              PrimitiveOperator.eq,
              widget.serviceId,
            ),
          ],
        ),
        orderBy: _classesArrangement.orderByStream,
        secondLineField: _classesArrangement.secondLineFieldStream,
      ),
    ),
  );

  final _classesArrangement = ListArrangementController(
    type: AdvancedQueriesMetadata().$class,
    defaultOrderBy: () => [
      OrderBy(field: ClassFields().studyYear),
      OrderBy(field: ClassFields().name),
    ],
  );

  late final _groupsController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.groups.streamAll(
        where: Stream.value(
          [
            Filter(
              GroupFields().service.redirectTo(ServiceFields().id),
              PrimitiveOperator.eq,
              widget.serviceId,
            ),
          ],
        ),
        orderBy: _groupsArrangement.orderByStream,
        secondLineField: _groupsArrangement.secondLineFieldStream,
      ),
    ),
  );

  final _groupsArrangement = ListArrangementController(
    type: AdvancedQueriesMetadata().group,
    defaultOrderBy: () => [
      OrderBy(field: GroupFields().name),
    ],
  );

  late final _personsController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.persons.streamAll(
        where: Stream.value(
          [
            Filter(
              PersonFields().servicesRel.redirectTo(
                PersonsServicesFields().serviceId,
              ),
              PrimitiveOperator.eq,
              widget.serviceId,
            ),
          ],
        ),
        orderBy: _personsArrangement.orderByStream,
        secondLineField: _personsArrangement.secondLineFieldStream,
      ),
    ),
  );

  final _personsArrangement = ListArrangementController(
    type: AdvancedQueriesMetadata().person,
    inServiceContext: true,
    defaultOrderBy: () => [
      OrderBy(field: PersonFields().studyYear),
      OrderBy(field: PersonFields().name),
    ],
  );

  final Set<ViewableObjectListController> _controllersToDispose = {};

  late final viewableObjectService = ViewableObjectService.I;

  late final stream = DatabaseService.I.services.streamSingleById(
    id: widget.serviceId,
  );

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails(
      objectId: widget.serviceId,
      object: widget.service,
      objectStream: stream,
      childrenTypes: const [Class, Group, Person],
      detailsBuilder: (context, service) => SliverList(
        delegate: SliverChildListDelegate(
          [
            HistoryProperty(
              name: 'أخر تحديث للبيانات',
              value: service.lastEdit?.time,
              getHistoryListController: () => ViewableObjectListController(
                objectsPaginatableStream: DatabaseService.I.history
                    .paginateEditHistory<Service>(id: service.id),
              ),
            ),
            if ([
                  ?service.defaultMeeting,
                  ...?service.meetings,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FilledButton.icon(
                style: Theme.of(context).largeFilledButtonStyle,
                icon: const Icon(Symbols.query_stats),
                label: const Text('الاحصائيات'),
                onPressed: () => unawaited(
                  MeetingsAnalysisRoute(
                    $extra: MeetingsAnalysisExtra(
                      title: 'احصائيات ${service.name}',
                      initialRangePreset: PastQuarterDateTimeRangePreset(),
                      subject: ServiceAnalysisSubject(service),
                    ),
                  ).push(context),
                ),
              ),
            ),
          ],
        ),
      ),
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
        filtersWidget: TabAwareSortButton(onPressed: _showArrangementSheet),
        tabs: [
          (
            label: 'الفصول',
            icon: viewableObjectService.getDefaultIconFor<Class>(),
          ),
          (
            label: 'المجموعات',
            icon: viewableObjectService.getDefaultIconFor<Group>(),
          ),
          (
            label: 'المخدومين',
            icon: viewableObjectService.getDefaultIconFor<Person>(),
          ),
        ],
      ),
      tabsContentBuilders: {
        Class: (context) => StreamBuilder(
          stream: _classesArrangement.stream,
          initialData: _classesArrangement.value,
          builder: (context, arrangementSnapshot) => ViewableObjectList(
            itemBuilder: (context, class_, config) => ViewableObjectCard<Class>(
              class_,
              config:
                  config?.copyWith(
                    secondLineField:
                        arrangementSnapshot.data?.effectiveSecondLineField,
                  ) ??
                  ViewableObjectWidgetConfig(
                    secondLineField:
                        arrangementSnapshot.data?.effectiveSecondLineField,
                  ),
            ),
            type: ViewableObjectListType.grid3,
            scrollController: PrimaryScrollController.maybeOf(context),
            objectsController: _classesController,
          ),
        ),
        Group: (context) => OrderedViewableObjectList(
          arrangementController: _groupsArrangement,
          objectsController: _groupsController,
        ),
        Person: (context) => OrderedViewableObjectList(
          arrangementController: _personsArrangement,
          objectsController: _personsController,
        ),
      },
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على الخدمة',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      editButtonBuilder: (context, service) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => EditServiceRoute(
          $extra: service,
        ).push(context),
        icon: const Icon(Symbols.edit),
      ),
      bottomNavBarBuilder: (context, tabController) => TabbedTotalCountLabel(
        tabController: tabController,
        unitByController: {
          _classesController: 'فصل',
          _groupsController: 'مجموعة',
          _personsController: 'مخدوم',
        },
      ),
      floatingActionButtonBuilder: (context, tabController, service) =>
          SwitchingFAB.fromTabController(
            tabController: tabController,
            icons: const [
              Icon(Symbols.group_add),
              Icon(Symbols.group_add),
              Icon(Symbols.person_add),
            ],
            onTap: (newIndex) {
              if (newIndex == 0) {
                unawaited(
                  EditClassRoute(
                    $extra: EditClassExtra(service: service),
                  ).push(context),
                );
              } else if (newIndex == 1) {
                unawaited(
                  EditGroupRoute(
                    $extra: EditGroupExtra(service: service),
                  ).push(context),
                );
              } else if (newIndex == 2) {
                unawaited(
                  EditPersonRoute(
                    $extra: CreatePersonInService(service: service),
                  ).push(context),
                );
              }
            },
          ),
    );
  }

  int getNewIndex(double offset, int currentIndex) {
    return offset.isNegative
        ? (currentIndex + offset).floor()
        : (currentIndex + offset).ceil();
  }

  Future<void> _showArrangementSheet(int currentTabIndex) async {
    final arrangementController = switch (currentTabIndex) {
      0 => _classesArrangement,
      1 => _groupsArrangement,
      2 => _personsArrangement,
      _ => throw UnimplementedError(),
    };

    await arrangementController.edit(context);
  }

  ViewableObjectListController<T>
  _ensureWillDispose<T extends ViewableWithIDAndImage>(
    ViewableObjectListController<T> controller,
  ) {
    _controllersToDispose.add(controller);

    return controller;
  }

  @override
  void dispose() {
    unawaited(Future.wait(_controllersToDispose.map((e) => e.dispose())));
    _classesArrangement.dispose();
    _groupsArrangement.dispose();
    _personsArrangement.dispose();

    super.dispose();
  }
}
