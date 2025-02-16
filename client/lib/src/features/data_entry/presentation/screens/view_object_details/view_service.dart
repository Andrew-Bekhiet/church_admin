import 'package:church_admin/church_admin.dart';
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
    final themeData = Theme.of(context);
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
              getHistoryStream: () => DatabaseService.I.history
                  .paginateEditHistory<Service>(id: service.id),
            ),
            ListTile(
              title: FilledButton.icon(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 8),
                  ),
                  backgroundColor: WidgetStateProperty.all(
                    themeData.colorScheme.primaryContainer,
                  ),
                ),
                icon: const Icon(Symbols.query_stats),
                label: Text(
                  'الاحصائيات',
                  style: themeData.textTheme.titleLarge!.copyWith(
                    color: themeData.colorScheme.onPrimaryContainer,
                  ),
                ),
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
            icon: Icon(
              viewableObjectService.getDefaultIconFor<Class>(),
              size: 22,
            ),
          ),
          (
            label: 'المجموعات',
            icon: Icon(
              viewableObjectService.getDefaultIconFor<Group>(),
              size: 22,
            ),
          ),
          (
            label: 'المخدومين',
            icon: Icon(
              viewableObjectService.getDefaultIconFor<Person>(),
              size: 22,
            ),
          ),
        ],
      ),
      tabsContentBuilders: {
        Class: (context) => ViewableObjectList(
              itemBuilder: (context, class_, config) =>
                  ViewableObjectCard<Class>(
                class_,
                title: Text(
                  class_.name,
                  style: themeData.textTheme.headlineSmall!.copyWith(
                    color: themeData.colorScheme.onPrimaryContainer,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                config: config,
                size: null,
              ),
              type: ViewableObjectListType.grid3,
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
          style: themeData.textTheme.titleLarge,
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
