import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class ViewFamily extends StatefulWidget {
  final Family? family;
  final String familyId;

  const ViewFamily({required this.familyId, this.family, super.key});

  @override
  State<ViewFamily> createState() => _ViewFamilyState();
}

class _ViewFamilyState extends State<ViewFamily> {
  late final _personsController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.persons.streamAll(
        where: Stream.value(
          [
            Filter(
              PersonFields().family.redirectTo(FamilyFields().id),
              PrimitiveOperator.eq,
              widget.familyId,
            ),
          ],
        ),
        orderBy: _personsOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _personsOrderBy =
      BehaviorSubject.seeded([
    OrderBy(
      field: PersonFields()
          .personType
          .redirectTo(PersonTypeFields().isFamilyAdmin),
      value: OrderByValue.desc,
    ),
    OrderBy(
      field: PersonFields().personType.redirectTo(PersonTypeFields().order),
    ),
  ]);

  late final _childrenFamiliesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.families.streamAll(
        where: Stream.value(
          [
            Filter(
              FamilyFields()
                  .parentsRel
                  .redirectTo(FamiliesFamiliesFields().parentFamilyId),
              PrimitiveOperator.eq,
              widget.familyId,
            ),
          ],
        ),
        orderBy: _childrenFamiliesOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _childrenFamiliesOrderBy =
      BehaviorSubject.seeded([
    OrderBy(field: FamilyFields().name),
  ]);

  late final _parentFamiliesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.families.streamAll(
        where: Stream.value(
          [
            Filter(
              FamilyFields()
                  .childrenRel
                  .redirectTo(FamiliesFamiliesFields().childFamilyId),
              PrimitiveOperator.eq,
              widget.familyId,
            ),
          ],
        ),
        orderBy: _parentFamiliesOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _parentFamiliesOrderBy =
      BehaviorSubject.seeded([
    OrderBy(field: FamilyFields().name),
  ]);

  late final _storesController = _ensureWillDispose(
    ViewableObjectListController(
      objectsPaginatableStream: DatabaseService.I.stores.streamAll(
        where: Stream.value(
          [
            Filter(
              StoreFields().family.redirectTo(FamilyFields().id),
              PrimitiveOperator.eq,
              widget.familyId,
            ),
          ],
        ),
        orderBy: _storesOrderBy.stream,
      ),
    ),
  );

  final BehaviorSubject<List<OrderBy>> _storesOrderBy = BehaviorSubject.seeded([
    OrderBy(field: StoreFields().name),
  ]);

  final Set<ViewableObjectListController> _controllersToDispose = {};

  late final viewableObjectService = ViewableObjectService.I;

  late final stream = DatabaseService.I.families.streamSingleById(
    id: widget.familyId,
  );

  @override
  Widget build(BuildContext context) {
    return ViewObjectDetails<Family>(
      objectId: widget.familyId,
      object: widget.family,
      objectStream: stream,
      childrenTypes: const [Person, _ChildrenFamily, _ParentFamily, Store],
      tabsContentBuilders: {
        Person: (context) => StreamBuilder(
              stream: _personsOrderBy.stream,
              initialData: _personsOrderBy.value,
              builder: (context, orderBySnapshot) => ViewableObjectList(
                scrollController: PrimaryScrollController.maybeOf(context),
                viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
                  secondLineField:
                      orderBySnapshot.data?.first.getSecondLineField(),
                ),
                objectsController: _personsController,
              ),
            ),
        _ChildrenFamily: (context) => StreamBuilder(
              stream: _childrenFamiliesOrderBy.stream,
              initialData: _childrenFamiliesOrderBy.value,
              builder: (context, orderBySnapshot) => ViewableObjectList(
                scrollController: PrimaryScrollController.maybeOf(context),
                viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
                  secondLineField:
                      orderBySnapshot.data?.first.getSecondLineField(),
                ),
                objectsController: _childrenFamiliesController,
              ),
            ),
        _ParentFamily: (context) => StreamBuilder(
              stream: _parentFamiliesOrderBy.stream,
              initialData: _parentFamiliesOrderBy.value,
              builder: (context, orderBySnapshot) => ViewableObjectList(
                scrollController: PrimaryScrollController.maybeOf(context),
                viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
                  secondLineField:
                      orderBySnapshot.data?.first.getSecondLineField(),
                ),
                objectsController: _parentFamiliesController,
              ),
            ),
        Store: (context) => StreamBuilder(
              stream: _storesOrderBy.stream,
              initialData: _storesOrderBy.value,
              builder: (context, orderBySnapshot) => ViewableObjectList(
                scrollController: PrimaryScrollController.maybeOf(context),
                viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
                  secondLineField:
                      orderBySnapshot.data?.first.getSecondLineField(),
                ),
                objectsController: _storesController,
              ),
            ),
      },
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
            label: 'المخدومين',
            icon: viewableObjectService.getDefaultIconFor<Person>(),
          ),
          (
            label: 'الأبناء',
            icon: viewableObjectService.getDefaultIconFor<Family>(),
          ),
          (
            label: 'الأباء',
            icon: viewableObjectService.getDefaultIconFor<Family>(),
          ),
          (
            label: 'المتاجر',
            icon: viewableObjectService.getDefaultIconFor<Store>(),
          ),
        ],
      ),
      detailsBuilder: (context, family) => SliverList(
        delegate: SliverChildListDelegate([
          for (final MapEntry(key: personType, value: phone)
              in family.familyAdminsPhones?.entries ?? {})
            PhoneNumberProperty(
              'رقم هاتف ال$personType',
              phone,
              (n) => LauncherService.I.launchCall(
                PhoneNumberService.I.formatInternational(n),
              ),
            ),
          CopiablePropertyWidget(
            'العنوان والموقع',
            family.address?.toString(),
            additionalOptions: [
              if (family.geolocation != null)
                IconButton(
                  icon: const Icon(Symbols.map),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ViewGeodataMap(
                        initialGeomapOptions: GeomapOptions(
                          selectedFamilies: {family},
                        ),
                      ),
                    ),
                  ),
                  tooltip: 'إظهار على الخريطة',
                ),
            ],
          ),
          ListTile(
            title: const Text('الكنيسة'),
            subtitle: Text(family.church?.name ?? ''),
          ),
          ListTile(
            title: const Text('الحالة الاجتماعية'),
            subtitle: Text(family.status.label),
          ),
          if (family.marriageDate case final marriageDate?)
            ListTile(
              title: const Text('تاريخ الزواج'),
              subtitle: Text(DateFormat('yyyy/M/d').format(marriageDate)),
            ),
          if (family.deceasedSpouseName case final deceasedSpouseName?)
            ListTile(
              title: const Text('اسم المتوفي/ـة'),
              subtitle: Text(deceasedSpouseName),
            ),
          CopiablePropertyWidget(
            'ملاحظات',
            family.notes,
            showErrorIfEmpty: false,
          ),
          ListTile(
            title: const Text('المنطقة'),
            subtitle: family.address?.area != null
                ? ViewableObjectCard(family.address!.area!)
                : null,
          ),
          ListTile(
            title: const Text('الشارع'),
            subtitle: family.address?.street != null
                ? ViewableObjectCard(family.address!.street!)
                : null,
          ),
          ListTile(
            title: FilledButton.icon(
              icon: const Icon(Symbols.query_stats),
              label: const Text('احصائيات'),
              // TODO: add family analysis
              onPressed: () {},
            ),
          ),
          HistoryProperty(
            name: 'أخر افتقاد',
            value: family.lastVisit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.history.paginateFamilyVisitHistory(
                familyId: family.id,
              ),
            ),
            onRecordNow: () => DatabaseService.I.history.updateFamilyLastVisit(
              familyId: widget.familyId,
              lastVisit: DateTime.now(),
            ),
          ),
          HistoryProperty(
            name: 'أخر افتقاد للأب الكاهن',
            value: family.lastFatherVisit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.history.paginateFamilyVisitHistory(
                familyId: family.id,
                fatherVisit: true,
              ),
            ),
            onRecordNow: () => DatabaseService.I.history.updateFamilyLastVisit(
              familyId: widget.familyId,
              lastVisit: DateTime.now(),
              isFatherVisit: true,
            ),
          ),
          HistoryProperty(
            name: 'أخر تحديث للبيانات',
            value: family.lastEdit?.time,
            getHistoryListController: () => ViewableObjectListController(
              objectsPaginatableStream:
                  DatabaseService.I.history.paginateEditHistory<Family>(
                id: family.id,
              ),
            ),
          ),
        ]),
      ),
      notFoundBuilder: (context) => Center(
        child: Text(
          'لم يتم العثور على العائلة',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      editButtonBuilder: (context, family) => IconButton(
        tooltip: 'تعديل',
        onPressed: () => EditFamilyRoute(
          $extra: EditFamilyExtra(family: family),
        ).push(context),
        icon: const Icon(Symbols.edit),
      ),
      bottomNavBarBuilder: (context, tabController) => StreamBuilder<String?>(
        stream: tabController.animation!.asStream().switchMap(
          (index) {
            final currentIndex = index.round();

            return switch (currentIndex) {
              0 => _personsController,
              1 => _childrenFamiliesController,
              2 => _parentFamiliesController,
              3 => _storesController,
              _ => throw UnimplementedError(),
            }
                .totalCountStream
                .map(
                  (c) => switch (currentIndex) {
                    0 => '$c مخدوم',
                    1 => '$c أبناء',
                    2 => '$c أباء',
                    3 => '$c متجر',
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
      floatingActionButtonBuilder: (context, tabController, family) =>
          SwitchingFloatingActionButton.fromTabController(
        tabController: tabController,
        icons: const [
          Icon(Symbols.person_add),
          Icon(Symbols.group_add),
          Icon(Symbols.group_add),
          Icon(Symbols.add_business),
        ],
        onTap: (newIndex) {
          if (newIndex == 0) {
            EditPersonRoute(
              $extra: EditPersonExtra(family: family),
            ).push(context);
          } else if (newIndex == 1) {
            EditFamilyRoute(
              $extra: EditFamilyExtra(parents: {family}),
            ).push(context);
          } else if (newIndex == 2) {
            EditFamilyRoute(
              $extra: EditFamilyExtra(children: {family}),
            ).push(context);
          } else if (newIndex == 3) {
            EditStoreRoute(
              $extra: EditStoreExtra(family: family),
            ).push(context);
          }
        },
      ),
    );
  }

  Future<void> _showOrderBySheet(int currentTabIndex) async {
    final advancedQueriesMetadata = AdvancedQueriesMetadata();

    final (queryableType, orderBySubject) = switch (currentTabIndex) {
      0 => (advancedQueriesMetadata.person, _personsOrderBy),
      1 => (advancedQueriesMetadata.family, _childrenFamiliesOrderBy),
      2 => (advancedQueriesMetadata.family, _parentFamiliesOrderBy),
      3 => (advancedQueriesMetadata.store, _storesOrderBy),
      _ => throw UnimplementedError(),
    };

    final newOrderBy = await showOrderByBottomSheet(
      context,
      queryableType: queryableType,
      orderBySubject: orderBySubject,
    );

    if (newOrderBy == null) return;

    orderBySubject.add(newOrderBy);
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

abstract final class _ChildrenFamily {}

abstract final class _ParentFamily {}
