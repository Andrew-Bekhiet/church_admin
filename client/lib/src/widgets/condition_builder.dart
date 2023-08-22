import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:collection/collection.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flutter/material.dart';

class ConditionBuilder<T> extends StatefulWidget {
  final Type type;
  final T dummyInstance;
  final List<Condition> conditions;
  final void Function(List<Condition>) onChanged;

  const ConditionBuilder({
    required this.type,
    required this.dummyInstance,
    required this.conditions,
    required this.onChanged,
    super.key,
  });

  @override
  State<ConditionBuilder> createState() => _ConditionBuilderState();
}

class _ConditionBuilderState extends State<ConditionBuilder> {
  static final _propertyType = {
    'color': (Color, Colors.transparent, false),
    'geolocation': (Point, Point(0, 0), false),
    'bounds': (Polygon, Polygon([]), false),
    'line': (Line, Line([]), false),
    'validity': (
      DateTimeRange,
      DateTimeRange(start: DateTime.now(), end: DateTime.now()),
      false
    ),
    'adminOn': (AdminOnData, const AdminOnData(permissionId: ''), false),
    'person': (Person, Person(id: '', name: ''), false),
    'user': (User, User(uid: '', name: ''), false),
    'family': (Family, Family(id: '', name: ''), false),
    'adminFamily': (Family, Family(id: '', name: ''), false),
    'studyYearFrom': (StudyYear, StudyYear(order: 0, name: ''), false),
    'studyYearTo': (StudyYear, StudyYear(order: 0, name: ''), false),
    'nextService': (Service, Service(id: '', name: ''), false),
    'service': (Service, Service(id: '', name: ''), false),
    'studyYear': (StudyYear, StudyYear(order: 0, name: ''), false),
    'serviceStudyYear': (StudyYear, StudyYear(order: 0, name: ''), false),
    'shammasLevel': (
      ShammasLevel,
      ShammasLevel(order: 0, id: '', name: ''),
      false
    ),
    'school': (School, School(id: '', name: ''), false),
    'college': (College, College(id: '', name: ''), false),
    'church': (Church, Church(id: '', name: ''), false),
    'father': (Father, Father(id: '', name: ''), false),
    'job': (Job, Job(id: '', name: ''), false),
    'qualification': (Qualification, Qualification(id: '', name: ''), false),
    'personType': (PersonType, PersonType(id: '', name: ''), false),
    'state': (PersonState, PersonState(id: '', name: ''), false),
    'adminUsers': (User, User(uid: '', name: ''), true),
    'areas': (Area, Area(id: '', name: ''), true),
    'streets': (Street, Street(id: '', name: ''), true),
    'children,': (Family, Family(id: '', name: ''), true),
    'parents': (Family, Family(id: '', name: ''), true),
    'classes': (Class, Class(id: '', name: ''), true),
    'groups': (Group, Group(id: '', name: ''), true),
    'permissions': (UserPermission, UserPermission.approved, true),
    'services': (Service, Service(id: '', name: ''), true),
    'tags': (Tag, Tag(id: '', name: ''), true),
    'hobbies': (Hobby, Hobby(id: '', name: ''), true),
  };

  static (Type, Object, bool) getFieldType(
    String name,
    (Type, Object, bool) valueOnId,
  ) {
    switch (name) {
      case 'name' || 'jobDescription' || 'notes' || 'address' || 'mainPhone':
      case _ when name.endsWith('Id'):
        return (String, '', false);

      case 'serviceGender' || 'gender':
      case _ when name.startsWith('is'):
        return (bool, false, false);

      case 'photoUpdatedAt' || 'birthdate':
      case _ when name.startsWith('last'):
        return (DateTime, DateTime.now(), false);

      case 'id':
        return valueOnId;
      default:
        return _propertyType[name]!;
    }
  }

  late List<Condition> _conditions = widget.conditions;

  List<Condition> get conditions => _conditions;

  set conditions(List<Condition> value) {
    _conditions = value;
    setState(() {});
    widget.onChanged(value);
  }

  Iterable<String> get properties =>
      AdvancedSearchScreenState.properties[widget.type] ?? [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...conditions.mapIndexed(
          (i, condition) {
            final validOperators = validOperatorsForField(condition.field)
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.name),
                  ),
                )
                .toList();

            final conditionFieldType = getFieldType(
              condition.field,
              (widget.type, widget.dummyInstance, false),
            );

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            labelText: 'بشرط',
                          ),
                          isExpanded: true,
                          value: condition.field,
                          items: properties
                              .map(
                                (p) => DropdownMenuItem(
                                  value: p,
                                  child: Text(p),
                                ),
                              )
                              .toList(),
                          onChanged: (field) {
                            final fieldType = getFieldType(
                              field!,
                              (widget.type, widget.dummyInstance, false),
                            );
                            final firstValidOperator =
                                Operator.values.firstWhereOrNull(
                              (o) => o.isValidType(
                                fieldType.$2,
                                fieldType.$3,
                              ),
                            );

                            conditions = conditions.mapIndexed(
                              (_i, e) {
                                return i == _i
                                    ? Condition(
                                        field: field,
                                        operator: firstValidOperator,
                                        value: fieldType.$2,
                                      )
                                    : e;
                              },
                            ).toList();
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      if (validOperators.isNotEmpty)
                        Expanded(
                          child: DropdownButtonFormField<Operator>(
                            isExpanded: true,
                            value: condition.operator,
                            items: validOperators,
                            onChanged: (value) {
                              conditions = conditions
                                  .mapIndexed(
                                    (_i, e) => i == _i
                                        ? Condition(
                                            field: condition.field,
                                            operator: value,
                                            value: condition.value,
                                            serializedValue:
                                                condition.serializedValue,
                                          )
                                        : e,
                                  )
                                  .toList();
                            },
                          ),
                        ),
                      IconButton(
                        onPressed: () {
                          conditions = conditions
                              .whereIndexed((_i, e) => i != _i)
                              .toList();
                        },
                        icon: const Icon(Icons.clear),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _SelectValueWidget(
                      type: conditionFieldType.$1,
                      condition: condition,
                      onChanged: (value) {
                        final isNested =
                            conditionFieldType.$2 is ViewableWithID &&
                                condition.field != 'id';
                        conditions = conditions
                            .mapIndexed(
                              (_i, e) => i == _i
                                  ? isNested
                                      ? Condition(
                                          field: condition.field,
                                          operator: condition.operator,
                                          value: value,
                                          serializedValue: {
                                            '_and': value
                                                .map((c) => c.toJson())
                                                .toList(),
                                          },
                                        )
                                      : value.single
                                  : e,
                            )
                            .toList();
                      },
                      dummyInstance: conditionFieldType.$2,
                      isList: conditionFieldType.$3,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        ElevatedButton.icon(
          onPressed: () {
            conditions = [
              ...conditions,
              Condition(
                field: properties.first,
                operator: validOperatorsForField(properties.first).firstOrNull,
              ),
            ];
          },
          icon: const Icon(Icons.filter_alt),
          label: const Text('إضافة شرط'),
        ),
      ],
    );
  }

  Iterable<Operator> validOperatorsForField(String field) {
    if (field == 'id') return [Operator.eq];

    final fieldType =
        getFieldType(field, (widget.type, widget.dummyInstance, false));

    return Operator.values.where(
      (o) => o.isValidType(
        fieldType.$2,
        fieldType.$3,
      ),
    );
  }
}

class _SelectValueWidget<T> extends StatelessWidget {
/*   static const _allTypes = {
    Point,
    Polygon,
    Line,
    DateTimeRange,
    AdminOnData,
    Person,
    User,
    Family,
    StudyYear,
    Service,
    ShammasLevel,
    School,
    College,
    Church,
    Father,
    Job,
    Qualification,
    PersonType,
    State,
    List<User>,
    List<Area>,
    List<Street>,
    List<Family>,
    List<Class>,
    List<Group>,
    List<UserPermission>,
    List<Service>,
    List<Tag>,
    List<Hobby>,
  }; */

  final Type type;
  final bool isList;
  final T dummyInstance;
  final Condition condition;
  final void Function(List<Condition>) onChanged;

  const _SelectValueWidget({
    required this.type,
    required this.isList,
    required this.condition,
    required this.onChanged,
    required this.dummyInstance,
  });

  @override
  Widget build(BuildContext context) {
    if (dummyInstance is String) {
      return TextFormField(
        initialValue: condition.value,
        onChanged: (v) => onChanged([
          condition.copyWith(value: v, serializedValue: _serializeValue(v)),
        ]),
      );
    } else if (dummyInstance is bool && condition.field.endsWith('ender')) {
      return DropdownButtonFormField<bool?>(
        value: condition.value,
        items: [null, true, false]
            .map(
              (item) => DropdownMenuItem(
                value: item,
                child: Text(
                  item == null
                      ? 'غير محدد'
                      : item
                          ? 'بنين'
                          : 'بنات',
                ),
              ),
            )
            .toList(),
        onChanged: (v) => onChanged([
          condition.copyWith(value: v, serializedValue: _serializeValue(v)),
        ]),
      );
    } else if (dummyInstance is bool) {
      return CheckboxListTile(
        title: const Text('قيمة البحث'),
        subtitle: Text(condition.value == true ? 'نعم' : 'لا'),
        value: condition.value,
        onChanged: (v) => onChanged([
          condition.copyWith(value: v, serializedValue: _serializeValue(v)),
        ]),
      );
    } else if (dummyInstance is Color) {
      return ColorField(
        initialValue: condition.value as Color?,
        onChanged: (v) => onChanged([
          condition.copyWith(value: v, serializedValue: _serializeValue(v)),
        ]),
      );
    } else if (dummyInstance is DateTime) {
      return DateTimeField(
        label: '',
        initialValue: condition.value as DateTime?,
        onChanged: (v) => onChanged([
          condition.copyWith(value: v, serializedValue: _serializeValue(v)),
        ]),
      );
    } else if (dummyInstance is DateTimeRange) {
      return DateTimeRangeField(
        label: '',
        initialValue: condition.value as DateTimeRange?,
        onChanged: (v) => onChanged([
          condition.copyWith(value: v, serializedValue: _serializeValue(v)),
        ]),
        nullable: true,
      );
    } else if (dummyInstance is Point) {
    } else if (dummyInstance is Polygon) {
    } else if (dummyInstance is Line) {
    } else if (dummyInstance is AdminOnData) {
    } else if (dummyInstance is ViewableWithID && condition.field == 'id') {
      return ObjectSelectionField<ViewableWithID, ViewableWithID?>(
        listController: _listControllerForType,
        builder: _buildViewableObject,
        initialValue: condition.value,
        labelText: '',
        onChanged: (v) => onChanged([
          condition.copyWith(
            field: 'id',
            operator: Operator.eq,
            value: v,
            serializedValue: v?.id,
          ),
        ]),
      );
    } else if (dummyInstance is ViewableWithID) {
      return ConditionBuilder(
        type: type,
        conditions: const [],
        onChanged: onChanged,
        dummyInstance: dummyInstance,
      );
    }
    return const SizedBox();
  }

  dynamic _serializeValue(dynamic value) {
    switch (value) {
      case ToJson _:
        return value.toJson();
      case Color _:
        return colorToInt(value);
      case DateTime _:
        return dateToString(value);
      case DateTimeRange _:
        return dateRangeToString(value);
      default:
        return value;
    }
  }

  Widget? _buildViewableObject(
    BuildContext _,
    FormFieldState<ViewableWithID?> state,
  ) =>
      state.value == null
          ? null
          : IgnorePointer(
              child: ViewableObjectWidget<ViewableWithID>(
                state.value!,
                wrapInCard: false,
                dense: true,
                forceShowSecondLine: false,
              ),
            );

  Widget _buildViewableObjects(
    BuildContext context,
    FormFieldState<Set<ViewableWithID>> state,
  ) {
    final themeData = Theme.of(context);
    final labelStyle = themeData.textTheme.labelSmall!;
    return state.value != null && state.value!.isNotEmpty
        ? Wrap(
            spacing: 3,
            children: [
              for (final object in state.value ?? <ViewableWithID>[])
                Material(
                  type: MaterialType.transparency,
                  child: Chip(
                    side: BorderSide(
                      color: object.color?.findInvert() ?? labelStyle.color!,
                    ),
                    label: Text(
                      object.name,
                      style: labelStyle.copyWith(
                        color: object.color?.findInvert(),
                      ),
                    ),
                    backgroundColor: object.color,
                  ),
                ),
            ],
          )
        : const Text('(فارغ)');
  }

  ViewableObjectListController<ViewableWithID> _listControllerForType(s) =>
      ViewableObjectListController(
        objectsPaginatableStream: AdvancedSearchScreenState
            .queryableTypes[type]!.$2
            .streamAll(searchQuery: s),
      );
}

enum Operator {
  eq('_eq'),
  gt('_gt'),
  gte('_gte'),
  ilike('_ilike'),
  iregex('_iregex'),
  like('_like'),
  lt('_lt'),
  lte('_lte'),
  neq('_neq'),
  nilike('_nilike'),
  niregex('_niregex'),
  nlike('_nlike'),
  nregex('_nregex'),
  regex('_regex'),
  isNull('_isNull'),
  $in('_in'),
  nin('_nin'),
  stDWithin('_stDWithin'),
  stIntersects('_stIntersects');

  final String name;

  const Operator(this.name);

  bool isValidType<T>(T object, bool isList) {
    switch (this) {
      case Operator.eq ||
            Operator.gt ||
            Operator.gte ||
            Operator.lt ||
            Operator.lte ||
            Operator.neq:
        return object is! ViewableWithID;
      case Operator.$in || Operator.nin:
        return isList &&
            object is! ViewableWithID &&
            object is! Point &&
            object is! Line &&
            object is! Polygon;
      case Operator.isNull:
        return object is bool;
      case Operator.ilike ||
            Operator.iregex ||
            Operator.like ||
            Operator.nilike ||
            Operator.niregex ||
            Operator.nlike ||
            Operator.nregex ||
            Operator.regex:
        return object is String;
      case Operator.stDWithin || Operator.stIntersects:
        return object is Point || object is Line || object is Polygon;

      default:
        return false;
    }
  }
}
