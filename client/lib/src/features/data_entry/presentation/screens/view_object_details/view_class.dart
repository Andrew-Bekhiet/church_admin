import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

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
          orderByStream: _personsOrderBy.stream,
          initialOrderBy: _personsOrderBy.value,
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
          $extra: EditClassExtra($class: $class),
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
                  $extra: MeetingsAnalysisExtra(
                    title: 'احصائيات ${$class.name}',
                    initialRangePreset: PastQuarterDateTimeRangePreset(),
                    subject: ClassAnalysisSubject($class),
                  ),
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
          onPressed: _showOrderBySheet,
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
            onPressed: () => EditPersonRoute(
              $extra: EditPersonExtra(
                service: class$.service,
                studyYear: class$.studyYear,
                gender: class$.serviceGender,
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
