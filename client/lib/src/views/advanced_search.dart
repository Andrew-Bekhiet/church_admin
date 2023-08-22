import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:rxdart/rxdart.dart';

class AdvancedSearchScreen extends StatefulWidget {
  static final route = GoRoute(
    path: 'advanced_search',
    routes: [
      ViewPerson.route,
      ViewArea.route,
      ViewService.route,
      ViewUser.route,
      ViewGroup.route,
      ViewClass.route,
      ViewFamily.route,
      ViewStreet.route,
      ViewStore.route,
    ],
    builder: (context, state) => const AdvancedSearchScreen(),
  );

  const AdvancedSearchScreen({super.key});

  @override
  State<AdvancedSearchScreen> createState() => AdvancedSearchScreenState();
}

class AdvancedSearchScreenState extends State<AdvancedSearchScreen> {
  static final Map<Type, (String, StreamableDAO, Object)> queryableTypes = {
    Area: ('المناطق', DatabaseService.I.areas, Area(id: '', name: '')),
    Street: ('الشوارع', DatabaseService.I.streets, Street(id: '', name: '')),
    Family: ('العائلات', DatabaseService.I.families, Family(id: '', name: '')),
    Store: ('المتاجر', DatabaseService.I.stores, Store(id: '', name: '')),
    Service: ('الخدمات', DatabaseService.I.services, Service(id: '', name: '')),
    Class: ('الفصول', DatabaseService.I.classes, Class(id: '', name: '')),
    Group: ('المجموعات', DatabaseService.I.groups, Group(id: '', name: '')),
    User: ('الخدام', DatabaseService.I.users, User(uid: '', name: '')),
    Person: ('المخدومين', DatabaseService.I.persons, Person(id: '', name: '')),
    Church: (
      'churches',
      DatabaseService.I.metadata.churches,
      Church(id: '', name: '')
    ),
    College: (
      'colleges',
      DatabaseService.I.metadata.colleges,
      College(id: '', name: '')
    ),
    Father: (
      'fathers',
      DatabaseService.I.metadata.fathers,
      Father(id: '', name: '')
    ),
    Hobby: (
      'hobbies',
      DatabaseService.I.metadata.hobbies,
      Hobby(id: '', name: '')
    ),
    Job: ('jobs', DatabaseService.I.metadata.jobs, Job(id: '', name: '')),
    PersonState: (
      'personStates',
      DatabaseService.I.metadata.personStates,
      PersonState(id: '', name: '')
    ),
    PersonType: (
      'personTypes',
      DatabaseService.I.metadata.personTypes,
      PersonType(id: '', name: '')
    ),
    Qualification: (
      'qualifications',
      DatabaseService.I.metadata.qualifications,
      Qualification(id: '', name: '')
    ),
    School: (
      'schools',
      DatabaseService.I.metadata.schools,
      School(id: '', name: '')
    ),
    ShammasLevel: (
      'shammasLevels',
      DatabaseService.I.metadata.shammasLevels,
      ShammasLevel(id: '', name: '', order: 0)
    ),
    StudyYear: (
      'studyYears',
      DatabaseService.I.metadata.studyYears,
      StudyYear(name: '', order: 0)
    ),
    Tag: ('tags', DatabaseService.I.metadata.tags, Tag(id: '', name: '')),
  };

  static final properties = {
    Area: Area.fields,
    Street: Street.fields,
    Family: Family.fields,
    Store: Store.fields,
    Service: Service.fields,
    Class: Class.fields,
    Group: Group.fields,
    User: User.fields.where(
      (name) => !{
        'uid',
        'email',
        'authId',
        'isMultiFactorEnrolled',
        'idToken',
        'emailVerified',
      }.contains(name),
    ),
    Person: Person.fields.where((name) => name != 'otherPhones'),
    Church: Church.fields,
    College: College.fields,
    Father: Father.fields,
    Hobby: Hobby.fields,
    Job: Job.fields,
    PersonState: PersonState.fields,
    PersonType: PersonType.fields,
    Qualification: Qualification.fields,
    School: School.fields,
    ShammasLevel: ShammasLevel.fields,
    StudyYear: StudyYear.fields,
    Tag: Tag.fields,
  }.map(
    (key, value) => MapEntry(
      key,
      value.where(
        (name) => !name.endsWith('Aggregate') && !name.endsWith('History'),
      ),
    ),
  );

  Type get selectedType => controller.selectedType;

  final controller = AdvancedSearchController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('البحث المتقدم')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  const Text('بحث في '),
                  Expanded(
                    child: DropdownButtonFormField(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      isExpanded: true,
                      value: selectedType,
                      items: queryableTypes.entries
                          .map(
                            (e) => DropdownMenuItem(
                              alignment: Alignment.center,
                              value: e.key,
                              child: Text(e.value.$1),
                            ),
                          )
                          .toList(),
                      onChanged: (v) {
                        controller
                          ..changeSelectedType(v!)
                          ..changeConditions([
                            Condition(
                              field: properties[controller.selectedType]!.first,
                              operator: Operator.eq,
                            ),
                          ]);
                      },
                    ),
                  ),
                ],
              ),
              const Divider(),
              StreamBuilder<List<Condition>>(
                stream: controller.conditionsStream,
                builder: (context, snapshot) {
                  return ConditionBuilder(
                    type: selectedType,
                    conditions: snapshot.data ?? controller.conditions,
                    onChanged: controller.changeConditions,
                    dummyInstance: queryableTypes[selectedType]!.$3,
                  );
                },
              ),
              const Divider(),
              StreamBuilder<List<(String, Enum_OrderBy)>>(
                stream: controller.orderByStream,
                builder: (context, orderByData) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ...(orderByData.data ?? []).mapIndexed(
                        (i, orderBy) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            children: [
                              Expanded(
                                child: DropdownButtonFormField<String>(
                                  decoration: const InputDecoration(
                                    labelText: 'ترتيب حسب',
                                  ),
                                  isExpanded: true,
                                  value: orderBy.$1,
                                  items: properties[controller.selectedType]!
                                      .map(
                                        (p) => DropdownMenuItem(
                                          value: p,
                                          child: Text(p),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (value) {
                                    controller.replaceOrderBy(
                                      i,
                                      (value!, orderBy.$2),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: DropdownButtonFormField<Enum_OrderBy>(
                                  isExpanded: true,
                                  value: orderBy.$2,
                                  items: const [
                                    DropdownMenuItem(
                                      value: Enum_OrderBy.ASC,
                                      child: Text('تصاعدي'),
                                    ),
                                    DropdownMenuItem(
                                      value: Enum_OrderBy.DESC,
                                      child: Text('تنازلي'),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    controller.replaceOrderBy(
                                      i,
                                      (orderBy.$1, value!),
                                    );
                                  },
                                ),
                              ),
                              IconButton(
                                onPressed: () => controller.removeOrderBy(i),
                                icon: const Icon(Icons.clear),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              ElevatedButton.icon(
                onPressed: () => controller.changeOrderBy(
                  [
                    ...controller.orderBy,
                    (
                      properties[controller.selectedType]!.first,
                      Enum_OrderBy.ASC
                    ),
                  ],
                ),
                icon: const Icon(Icons.sort),
                label: const Text('إضافة ترتيب'),
              ),
              const Divider(),
              StreamBuilder<int?>(
                stream: controller.limitStream,
                builder: (context, limitData) {
                  if (limitData.hasData) {
                    return TextFormField(
                      initialValue: controller.limit.toString(),
                      decoration: InputDecoration(
                        labelText: 'الحد الأقصى',
                        suffixIcon: IconButton(
                          onPressed: () => controller.changeLimit(null),
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onChanged: (v) => controller.changeLimit(int.tryParse(v)),
                    );
                  }

                  return ElevatedButton.icon(
                    onPressed: () => controller.changeLimit(100),
                    icon: const Icon(Icons.maximize),
                    label: const Text('إضافة حد أقصى'),
                  );
                },
              ),
              const Divider(),
              FilledButton.icon(
                onPressed: _execute,
                label: const Text('ابحث'),
                icon: const Icon(Icons.search),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _execute() {
    // TODO: implement _execute
    final firstWhere = queryableTypes[selectedType]!;
    final stream = firstWhere.$2.streamingProxy.streamAll(
      streamAllConfig: firstWhere.$2.baseStreamAllConfig.copyWith(
        varsConstructor: ({required event, required where}) {
          final instance = event.instance;
          final offset = event.offset;
          final search = event.search;
          final lastSearch = event.lastSearch;

          return {
            'where': [
              ...controller.conditions.map((e) => e.toJson()),
              if (search != null && search.isNotEmpty)
                {
                  'name': {'_ilike': '%$search%'},
                },
              if (lastSearch == search && offset > 0)
                {
                  'name': {
                    '_gt': instance
                        .currentValue[
                            (offset - 1) * instance.limit + instance.limit - 1]
                        .name,
                  },
                },
            ],
            'limit': controller.limit ?? instance.limit + 1,
            'orderBy': controller.orderBy
                .map(
                  (e) => {e.$1: e.$2.name},
                )
                .toList(),
          };
        },
      ),
    );
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(),
          body: ViewableObjectList(
            objectsController: ViewableObjectListController(
              objectsPaginatableStream: stream,
            ),
          ),
        ),
      ),
    );
  }
}

class AdvancedSearchController {
  final BehaviorSubject<Type> _selectedType = BehaviorSubject.seeded(
    AdvancedSearchScreenState.queryableTypes.keys.first,
  );
  final BehaviorSubject<List<Condition>> _conditions =
      BehaviorSubject.seeded([]);
  final BehaviorSubject<int?> _limit = BehaviorSubject.seeded(null);
  final BehaviorSubject<List<(String, Enum_OrderBy)>> _orderBy =
      BehaviorSubject.seeded([]);

  ValueStream<Type> get selectedTypeStream => _selectedType.stream;
  ValueStream<List<Condition>> get conditionsStream => _conditions.stream;
  ValueStream<int?> get limitStream => _limit.stream;
  ValueStream<List<(String, Enum_OrderBy)>> get orderByStream =>
      _orderBy.stream;

  Type get selectedType => _selectedType.value;
  List<Condition> get conditions => _conditions.value;
  int? get limit => _limit.valueOrNull;
  List<(String, Enum_OrderBy)> get orderBy => _orderBy.value;

  void changeSelectedType(Type type) {
    changeOrderBy([]);
    changeConditions([]);
    _selectedType.add(type);
  }

  void changeConditions(List<Condition> conditions) {
    _conditions.add(conditions);
  }

  void replaceCondition(int index, Condition newCondition) {
    _conditions.add(
      conditions
          .mapIndexed(
            (i, e) => i == index ? newCondition : e,
          )
          .toList(),
    );
  }

  void removeCondition(int index) {
    _conditions.add(conditions.whereIndexed((i, e) => i != index).toList());
  }

  void changeLimit(int? limit) => _limit.add(limit);

  void changeOrderBy(List<(String, Enum_OrderBy)> orderBy) =>
      _orderBy.add(orderBy);

  void replaceOrderBy(int index, (String, Enum_OrderBy) newOrderBy) {
    _orderBy.add(
      orderBy
          .mapIndexed(
            (i, e) => i == index ? newOrderBy : e,
          )
          .toList(),
    );
  }

  void removeOrderBy(int index) {
    _orderBy.add(orderBy.whereIndexed((i, e) => i != index).toList());
  }

  Future<void> dispose() async {
    await _limit.close();
    await _orderBy.close();
    await _conditions.close();
    await _selectedType.close();
  }
}

class Condition {
  final String field;
  final Operator? operator;
  final dynamic value;
  final dynamic serializedValue;

  const Condition({
    required this.field,
    required this.operator,
    this.value,
    this.serializedValue,
  });

  Condition copyWith({
    String? field,
    Operator? operator,
    dynamic value,
    dynamic serializedValue,
  }) {
    return Condition(
      field: field ?? this.field,
      operator: operator ?? this.operator,
      value: value ?? this.value,
      serializedValue: serializedValue ?? this.serializedValue,
    );
  }

  Json toJson() {
    return {
      field: operator == null
          ? (serializedValue ?? value)
          : {
              if ((serializedValue ?? value) == null)
                '_isNull': true
              else
                operator!.name: serializedValue ?? value,
            },
    };
  }
}

bool isSubtype<Super, Subtype>() => <Subtype>[] is List<Super>;
