import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

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
  late final _classesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.classes.streamAll(
      where: [
        Input_ClassesBoolExp(
          serviceId: Input_UuidComparisonExp($_eq: widget.serviceId.toUuid()),
        ),
      ],
    ),
  );

  late final _groupsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.groups.streamAll(
      where: [
        Input_GroupsBoolExp(
          serviceId: Input_UuidComparisonExp($_eq: widget.serviceId.toUuid()),
        ),
      ],
    ),
  );

  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.streamAll(
      where: [
        Input_PersonsBoolExp(
          services: Input_PersonsServicesBoolExp(
            serviceId: Input_UuidComparisonExp($_eq: widget.serviceId.toUuid()),
          ),
        ),
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
            ListTile(
              title: const Text('الخدمة التالية'),
              subtitle: service.nextService != null
                  ? ViewableObjectWidget(
                      service.nextService!,
                      isDense: true,
                      forceShowSecondLine: false,
                    )
                  : const Text('لا يوجد'),
            ),
            ListTile(
              title: const Text('السنوات الدراسية'),
              subtitle: Text(
                'من ${service.studyYearFrom?.name ?? ''} '
                'إلى ${service.studyYearTo?.name ?? ''}',
              ),
            ),
            ListTile(
              title: FilledButton.tonalIcon(
                icon: const Icon(Symbols.query_stats),
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
      tabsHeaderBuilder: (context, service) => TabBar(
        tabs: [
          Tab(
            text: 'الفصول',
            icon: Icon(viewableObjectService.getDefaultIconFor<Class>()),
          ),
          Tab(
            text: 'المجموعات',
            icon: Icon(viewableObjectService.getDefaultIconFor<Group>()),
          ),
          Tab(
            text: 'المخدومين',
            icon: Icon(viewableObjectService.getDefaultIconFor<Person>()),
          ),
        ],
      ),
      tabsContentBuilders: {
        Class: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_classesController),
            ),
        Group: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_groupsController),
            ),
        Person: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _ensureWillDispose(_personsController),
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
