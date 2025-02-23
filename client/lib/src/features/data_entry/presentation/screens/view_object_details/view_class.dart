import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ViewClass extends StatefulWidget {
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
        onPressed: () => EditClassRoute(
          $extra: EditClassExtra($class: $class),
        ).push(context),
        icon: const Icon(Symbols.edit),
      ),
      detailsBuilder: (context, $class) => SliverList(
        delegate: SliverChildListDelegate(
          [
            HistoryProperty(
              name: 'أخر تحديث للبيانات',
              value: $class.lastEdit?.time,
              getHistoryStream: () => DatabaseService.I.history
                  .paginateEditHistory<Class>(id: $class.id),
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
            icon: ViewableObjectService.I.getDefaultIconFor<Person>(),
            label: 'المخدومين'
          ),
        ],
      ),
      floatingActionButtonBuilder: (context, tabController, class$) =>
          FloatingActionButton(
        onPressed: () {
          EditPersonRoute(
            $extra: EditPersonExtra(
              service: class$.service,
              studyYear: class$.studyYear,
              gender: class$.serviceGender,
            ),
          ).push(context);
        },
        child: const Icon(Symbols.person_add),
      ),
    );
  }

  @override
  void dispose() {
    _personsController.dispose();

    super.dispose();
  }
}
