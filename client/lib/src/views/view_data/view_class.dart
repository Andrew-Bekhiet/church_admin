import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ViewClass extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'viewClass',
    builder: (context, state) {
      if (state.queryParams['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewClass(
        classId: state.queryParams['id']!,
        $class: (state.extra as Map?)?['class'] as Class?,
      );
    },
  );

  final Class? $class;
  final String classId;
  const ViewClass({
    required this.classId,
    this.$class,
    super.key,
  });

  @override
  State<ViewClass> createState() => _ViewClassState();
}

class _ViewClassState extends State<ViewClass> {
  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.streamAll(
      where: [
        Input_PersonsBoolExp(
          classes: Input_ClassesBoolExp(
            id: Input_UuidComparisonExp($_eq: widget.classId.toUuid()),
          ),
        ),
      ],
    ),
  );

  late final stream =
      DatabaseService.I.classes.streamSingleById(id: widget.classId);

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails(
      objectId: widget.classId,
      object: widget.$class,
      objectStream: stream,
      childrenTypes: const [Person],
      tabsContentBuilders: {
        Person: (context) => ViewableObjectList(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _personsController,
            ),
      },
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على الفصل',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      editButtonBuilder: (context, $class) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => context.push(
          Uri(
            path: '/viewClass/editClass',
            queryParameters: {'id': widget.classId},
          ).toString(),
          extra: {'class': $class},
        ),
        icon: const Icon(Icons.edit),
      ),
      detailsBuilder: (context, $class) => SliverList(
        delegate: SliverChildListDelegate(
          [
            ListTile(
              title: const Text('الخدمة'),
              subtitle: $class.service != null
                  ? ViewableObjectWidget(
                      $class.service!,
                      dense: true,
                      forceShowSecondLine: false,
                    )
                  : const Text('لا يوجد'),
            ),
            ListTile(
              title: const Text('السنة الدراسية'),
              subtitle: Text($class.studyYear?.name ?? 'لا يوجد'),
            ),
            ListTile(
              title: FilledButton.tonalIcon(
                icon: const Icon(Icons.query_stats),
                label: const Text('احصائيات'),
                // TODO: add class analysis
                onPressed: () {},
              ),
            ),
            HistoryProperty(
              name: 'أخر تحديث للبيانات',
              value: $class.lastEdit?.time,
              getHistoryStream: () => DatabaseService.I.history
                  .paginateEditHistory<Class>(id: $class.id),
            ),
            ListTile(
              title: const Text('الخدام المسؤولين'),
              subtitle: $class.adminUsers?.isNotEmpty ?? false
                  ? AdminUsers(users: $class.adminUsers!)
                  : const Text('لا يوجد خدام محددين للفصل'),
            ),
          ],
        ),
      ),
      tabsHeaderBuilder: (context, $class) => Tab(
        text: 'المخدومين',
        icon: Icon(
          ViewableObjectService.I.getDefaultIconFor<Person>(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _personsController.dispose();

    super.dispose();
  }
}
