import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class ViewClass extends StatefulWidget {
  final Class? $class;
  final String classId;

  const ViewClass({required this.classId, this.$class, super.key});

  @override
  State<ViewClass> createState() => _ViewClassState();
}

class _ViewClassState extends State<ViewClass> {
  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.streamAll(
      where: Stream.value([
        Filter(
          PersonFields().classesRel.redirectTo(ClassesPersonsFields().classId),
          PrimitiveOperator.eq,
          widget.classId,
        ),
      ]),
      orderBy: _personsArrangement.orderByStream,
      secondLineField: _personsArrangement.secondLineFieldStream,
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

  late final stream = DatabaseService.I.classes.streamSingleById(
    id: widget.classId,
  );

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails(
      objectId: widget.classId,
      object: widget.$class,
      objectStream: stream,
      childrenTypes: const [Person],
      tabsContentBuilders: {
        Person: (context) => OrderedViewableObjectList(
          arrangementController: _personsArrangement,
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
        onPressed: () => EditClassRoute(
          intent: UpdateClass(class$: $class),
        ).push(context),
        icon: const Icon(Symbols.edit),
      ),
      detailsBuilder: (context, $class) => SliverList(
        delegate: SliverChildListDelegate([
          HistoryProperty(
            name: 'أخر تحديث للبيانات',
            value: $class.lastEdit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream: DatabaseService.I.history
                  .paginateEditHistory<Class>(
                    id: $class.id,
                  ),
            ),
          ),
          ListTile(
            title: FilledButton.icon(
              style: Theme.of(context).largeFilledButtonStyle,
              icon: const Icon(Symbols.query_stats),
              label: const Text('الاحصائيات'),
              onPressed: () => unawaited(
                MeetingsAnalysisRoute(
                  title: 'احصائيات ${$class.name}',
                  initialRangePreset: PastQuarterDateTimeRangePreset(),
                  subject: ClassAnalysisSubject($class),
                ).push(context),
              ),
            ),
          ),
        ]),
      ),
      sliverPersistentHeaderDelegate: ChipTabBarPersistentHeaderDelegate(
        filtersWidget: IconButton(
          visualDensity: VisualDensity.compact,
          padding: EdgeInsets.zero,
          icon: const Icon(Symbols.sort),
          onPressed: _showArrangementSheet,
        ),
        tabs: [
          (
            icon: ViewableObjectService.I.getDefaultIconFor<Person>(),
            label: 'المخدومين',
          ),
        ],
      ),
      bottomNavBarBuilder: (context, tabController) => TotalCountLabel(
        countStream: _personsController.totalCountStream.map(
          (c) => '$c مخدوم',
        ),
      ),
      floatingActionButtonBuilder: (context, tabController, class$) =>
          FloatingActionButton(
            key: ViewClassKeys.addPersonButton,
            onPressed: () => EditPersonRoute(
              intent: CreatePersonInClass(class$: class$),
            ).push(context),
            child: const Icon(Symbols.person_add),
          ),
    );
  }

  Future<void> _showArrangementSheet() async {
    await _personsArrangement.edit(context);
  }

  @override
  void dispose() {
    unawaited(_personsController.dispose());
    _personsArrangement.dispose();

    super.dispose();
  }
}

abstract final class ViewClassKeys {
  static const Key addPersonButton = ValueKey(
    'View Class Add Person Button Key',
  );
}
