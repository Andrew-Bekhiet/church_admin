import 'package:church_admin/church_admin.dart';
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
            Input_ClassesBoolExp(
              serviceId:
                  Input_UuidComparisonExp($_eq: widget.serviceId.toUuid()),
            ),
          ],
        ),
      ),
    ),
  );

  late final _groupsController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.groups.streamAll(
        where: Stream.value(
          [
            Input_GroupsBoolExp(
              serviceId:
                  Input_UuidComparisonExp($_eq: widget.serviceId.toUuid()),
            ),
          ],
        ),
      ),
    ),
  );

  late final _personsController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.persons.streamAll(
        where: Stream.value(
          [
            Input_PersonsBoolExp(
              services: Input_PersonsServicesBoolExp(
                serviceId:
                    Input_UuidComparisonExp($_eq: widget.serviceId.toUuid()),
              ),
            ),
          ],
        ),
      ),
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
            ListTile(
              title: FilledButton.icon(
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
        Class: (context) => ViewableObjectList(
              itemBuilder: (context, class_, config) =>
                  ViewableObjectCard<Class>(class_, config: config),
              type: ViewableObjectListType.grid3,
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _classesController,
            ),
        Group: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _groupsController,
            ),
        Person: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
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
      bottomNavBarBuilder: (context, tabController) => StreamBuilder<String?>(
        stream: tabController.animation!.asStream().switchMap(
          (index) {
            final currentIndex = index.round();

            return switch (currentIndex) {
              0 => _classesController,
              1 => _groupsController,
              2 => _personsController,
              _ => throw UnimplementedError(),
            }
                .totalCountStream
                .map(
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
      floatingActionButtonBuilder: (context, tabController, area) =>
          SwitchingFloatingActionButton(
        tabController: tabController,
        icons: const {
          0: Icon(Symbols.group_add),
          1: Icon(Symbols.group_add),
          2: Icon(Symbols.person_add),
        },
        onTap: (newIndex) {
          if (newIndex == 0) {
            EditClassRoute(
              $extra: EditClassExtra(
                service: widget.service,
              ),
            ).push(context);
          } else if (newIndex == 1) {
            EditGroupRoute(
              $extra: EditGroupExtra(
                service: widget.service,
              ),
            ).push(context);
          } else if (newIndex == 2) {
            EditPersonRoute(
              $extra: EditPersonExtra(
                service: widget.service,
              ),
            ).push(context);
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

  ViewableObjectListController<T>
      _ensureWillDispose<T extends ViewableWithIDAndImage>(
    ViewableObjectListController<T> controller,
  ) {
    _controllersToDispose.add(controller);
    return controller;
  }

  @override
  void dispose() {
    Future.wait(_controllersToDispose.map((e) => e.dispose()));

    super.dispose();
  }
}
