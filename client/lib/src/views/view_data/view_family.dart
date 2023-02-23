import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide ViewableObjectWidget;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class ViewFamily extends StatelessWidget {
  static final GoRoute route = GoRoute(
    path: 'viewFamily',
    builder: (context, state) {
      if (state.queryParams['id'] == null) {
        throw ArgumentError.notNull('id');
      }

      return ViewFamily(
        familyId: state.queryParams['id']!,
        family: (state.extra as Map?)?['family'] as Family?,
      );
    },
  );

  final Family? family;
  final String familyId;

  ViewFamily({
    required this.familyId,
    this.family,
    super.key,
  });

  late final _personsController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.persons.paginatePersons(
      byFamilyId: familyId,
    ),
  );
  late final _childrenFamiliesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.families.paginateFamilies(
      byParentFamilyId: familyId,
    ),
  );
  late final _parentFamiliesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.families.paginateFamilies(
      byChildFamilyId: familyId,
    ),
  );
  late final _storesController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.stores.paginateStores(
      byFamilyId: familyId,
    ),
  );

  late final viewableObjectService = GetIt.I<CAViewableObjectService>();

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails<Family>(
      objectId: familyId,
      objectStream: DatabaseService.I.families.watchFamily(
        familyId: familyId,
      ),
      childrenTypes: const [Person, _ChildrenFamily, _ParentFamily, Store],
      tabsContentBuilders: {
        Person: (context) => ViewableObjectList<Person>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _personsController,
            ),
        _ChildrenFamily: (context) => ViewableObjectList<Family>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _childrenFamiliesController,
            ),
        _ParentFamily: (context) => ViewableObjectList<Family>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _parentFamiliesController,
            ),
        Store: (context) => ViewableObjectList<Store>(
              scrollController: PrimaryScrollController.maybeOf(context),
              objectsController: _storesController,
            ),
      },
      tabsHeaderBuilder: (context, family) => TabBar(
        tabs: [
          Tab(
            text: 'المخدومين',
            icon: Icon(viewableObjectService.getDefaultIconFor<Person>()),
          ),
          Tab(
            text: 'الأبناء',
            icon: Icon(viewableObjectService.getDefaultIconFor<Family>()),
          ),
          Tab(
            text: 'الأباء',
            icon: Icon(viewableObjectService.getDefaultIconFor<Family>()),
          ),
          Tab(
            text: 'المتاجر',
            icon: Icon(viewableObjectService.getDefaultIconFor<Store>()),
          ),
        ],
      ),
      detailsBuilder: (context, family) => SliverList(
        delegate: SliverChildListDelegate(
          [
            CopiablePropertyWidget(
              'العنوان والموقع',
              family.address,
              additionalOptions: [
                if (family.geolocation != null)
                  IconButton(
                    icon: const Icon(Icons.map),
                    onPressed: () async => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DataGeomap(initialFamily: family),
                      ),
                    ),
                    tooltip: 'إظهار على الخريطة',
                  ),
              ],
            ),
            ListTile(
              title: const Text('المناطق التي تظهر بها'),
              subtitle: Column(
                children: [
                  for (final a in family.areas ?? <Area>[])
                    ViewableObjectWidget(
                      a,
                      dense: true,
                      forceShowSecondLine: false,
                    ),
                ],
              ),
            ),
            ListTile(
              title: const Text('الشوارع التي تظهر بها'),
              subtitle: Column(
                children: [
                  for (final s in family.streets ?? <Street>[])
                    ViewableObjectWidget(
                      s,
                      dense: true,
                      forceShowSecondLine: false,
                    ),
                ],
              ),
            ),
            CopiablePropertyWidget(
              'ملاحظات',
              family.notes,
              showErrorIfEmpty: false,
            ),
            ListTile(
              title: FilledButton.tonalIcon(
                icon: const Icon(Icons.query_stats),
                label: const Text('احصائيات'),
                // TODO: add family analysis
                onPressed: () {},
              ),
            ),
            HistoryProperty(
              name: 'أخر تحديث للبيانات',
              value: family.lastEdit?.time,
              getHistoryStream: () => DatabaseService.I.history
                  .paginateEditHistory<Family>(id: family.id),
            ),
          ],
        ),
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على العائلة',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      editButtonBuilder: (context, family) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => context.go(
          Uri(
            path: 'viewFamily/editFamily',
            queryParameters: {'id': familyId},
          ).toString(),
          extra: {'family': family},
        ),
        icon: const Icon(Icons.edit),
      ),
    );
  }
}

abstract class _ChildrenFamily {}

abstract class _ParentFamily {}
