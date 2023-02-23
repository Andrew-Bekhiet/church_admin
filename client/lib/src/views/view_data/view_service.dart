import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ViewService extends StatelessWidget {
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

  ViewService({
    required this.serviceId,
    this.service,
    super.key,
  });

  late final _classesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.classes.paginateClasses(
      serviceId: serviceId,
    ),
  );
  late final _groupsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.groups.paginateGroups(
      serviceId: serviceId,
    ),
  );
  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.paginatePersons(
      byServiceId: serviceId,
    ),
  );

  late final viewableObjectService = GetIt.I<CAViewableObjectService>();

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails(
      objectId: serviceId,
      object: service,
      objectStream: DatabaseService.I.services.watchService(
        serviceId: serviceId,
      ),
      childrenTypes: const [Class, Group, Person],
      detailsBuilder: (context, service) => SliverList(
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
        onPressed: () => context.push(
          Uri(
            path: '/viewService/editService',
            queryParameters: {'id': serviceId},
          ).toString(),
          extra: {'service': service},
        ),
        icon: const Icon(Icons.edit),
      ),
    );
  }
}
