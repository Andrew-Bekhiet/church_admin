import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

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
        orderBy: _classesOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _classesOrderBy = BehaviorSubject.seeded(
    ViewObjectDetails.getLastOrderByFor(
      type: AdvancedQueriesMetadata().$class,
      orElse: () => [
        OrderBy(field: ClassFields().studyYear),
        OrderBy(field: ClassFields().name),
      ],
    ),
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
        orderBy: _groupsOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _groupsOrderBy = BehaviorSubject.seeded(
    ViewObjectDetails.getLastOrderByFor(
      type: AdvancedQueriesMetadata().group,
      orElse: () => [
        OrderBy(field: GroupFields().name),
      ],
    ),
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
        orderBy: _personsOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _personsOrderBy = BehaviorSubject.seeded(
    ViewObjectDetails.getLastOrderByFor(
      type: AdvancedQueriesMetadata().person,
      orElse: () => [
        OrderBy(field: PersonFields().studyYear),
        OrderBy(field: PersonFields().name),
      ],
    ),
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
            if (service.meetings?.firstWhereOrNull((m) => !m.isArchived)
                case final meeting?)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FilledButton.icon(
                  style: Theme.of(context).largeFilledButtonStyle,
                  icon: const Icon(Symbols.productivity),
                  label: Text('تسجيل الحضور ل${meeting.name}'),
                  onPressed: () => RecordAttendanceRoute(
                    $extra: meeting,
                  ).push(context),
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FilledButton.icon(
                style: Theme.of(context).largeFilledButtonStyle,
                icon: const Icon(Symbols.query_stats),
                label: const Text('الاحصائيات'),
                // TODO: add service analysis
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
        filtersWidget: Builder(
          builder: (context) => IconButton(
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.zero,
            icon: const Icon(Symbols.sort),
            onPressed: () =>
                _showOrderBySheet(DefaultTabController.of(context).index),
          ),
        ),
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
          stream: _classesOrderBy.stream,
          initialData: _classesOrderBy.value,
          builder: (context, orderBySnapshot) => ViewableObjectList(
            itemBuilder: (context, class_, config) => ViewableObjectCard<Class>(
              class_,
              config:
                  config?.copyWith(
                    secondLineField: orderBySnapshot.data?.first
                        .getSecondLineField(),
                  ) ??
                  ViewableObjectWidgetConfig(
                    secondLineField: orderBySnapshot.data?.first
                        .getSecondLineField(),
                  ),
            ),
            type: ViewableObjectListType.grid3,
            scrollController: PrimaryScrollController.maybeOf(context),
            objectsController: _classesController,
          ),
        ),
        Group: (context) => StreamBuilder(
          stream: _groupsOrderBy.stream,
          initialData: _groupsOrderBy.value,
          builder: (context, orderBySnapshot) => ViewableObjectList(
            scrollController: PrimaryScrollController.maybeOf(context),
            viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
              secondLineField: orderBySnapshot.data?.first.getSecondLineField(),
            ),
            objectsController: _groupsController,
          ),
        ),
        Person: (context) => StreamBuilder(
          stream: _personsOrderBy.stream,
          initialData: _personsOrderBy.value,
          builder: (context, orderBySnapshot) => ViewableObjectList(
            scrollController: PrimaryScrollController.maybeOf(context),
            viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
              secondLineField: orderBySnapshot.data?.first.getSecondLineField(),
            ),
            objectsController: _personsController,
          ),
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
      bottomNavBarBuilder: (context, tabController) => StreamBuilder<String?>(
        stream: tabController.animation!.asStream().switchMap(
          (index) {
            final currentIndex = index.round();

            return switch (currentIndex) {
              0 => _classesController,
              1 => _groupsController,
              2 => _personsController,
              _ => throw UnimplementedError(),
            }.totalCountStream.map(
              (c) => switch (currentIndex) {
                0 => '$c فصل',
                1 => '$c مجموعة',
                2 => '$c مخدوم',
                _ => throw UnimplementedError(),
              },
            );
          },
        ),
        builder: (context, snapshot) {
          return Text(
            snapshot.data ?? '',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          );
        },
      ),
      floatingActionButtonBuilder: (context, tabController, service) =>
          SwitchingFloatingActionButton.fromTabController(
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
                    $extra: EditPersonExtra(service: service),
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

  Future<void> _showOrderBySheet(int currentTabIndex) async {
    final advancedQueriesMetadata = AdvancedQueriesMetadata();

    final (queryableType, orderBySubject) = switch (currentTabIndex) {
      0 => (advancedQueriesMetadata.$class, _classesOrderBy),
      1 => (advancedQueriesMetadata.group, _groupsOrderBy),
      2 => (advancedQueriesMetadata.person, _personsOrderBy),
      _ => throw UnimplementedError(),
    };

    await showOrderByBottomSheet(
      context,
      queryableType: queryableType,
      orderBySubject: orderBySubject,
      onChanged: (newOrderBy) {
        orderBySubject.add(newOrderBy);
        unawaited(
          ViewObjectDetails.saveLastOrderByFor(
            type: queryableType,
            orderBy: newOrderBy,
          ),
        );
      },
    );
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

    super.dispose();
  }
}
