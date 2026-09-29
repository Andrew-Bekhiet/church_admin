import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Query_classesForService {
  factory Variables_Query_classesForService({required UuidValue serviceId}) =>
      Variables_Query_classesForService._({r'serviceId': serviceId});

  Variables_Query_classesForService._(this._$data);

  factory Variables_Query_classesForService.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$serviceId = data['serviceId'];
    result$data['serviceId'] = stringToUuid(l$serviceId);
    return Variables_Query_classesForService._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get serviceId => (_$data['serviceId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$serviceId = serviceId;
    result$data['serviceId'] = uuidToString(l$serviceId);
    return result$data;
  }

  CopyWith_Variables_Query_classesForService<Variables_Query_classesForService>
  get copyWith => CopyWith_Variables_Query_classesForService(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_classesForService ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$serviceId = serviceId;
    return Object.hashAll([l$serviceId]);
  }
}

abstract class CopyWith_Variables_Query_classesForService<TRes> {
  factory CopyWith_Variables_Query_classesForService(
    Variables_Query_classesForService instance,
    TRes Function(Variables_Query_classesForService) then,
  ) = _CopyWithImpl_Variables_Query_classesForService;

  factory CopyWith_Variables_Query_classesForService.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_classesForService;

  TRes call({UuidValue? serviceId});
}

class _CopyWithImpl_Variables_Query_classesForService<TRes>
    implements CopyWith_Variables_Query_classesForService<TRes> {
  _CopyWithImpl_Variables_Query_classesForService(this._instance, this._then);

  final Variables_Query_classesForService _instance;

  final TRes Function(Variables_Query_classesForService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceId = _undefined}) => _then(
    Variables_Query_classesForService._({
      ..._instance._$data,
      if (serviceId != _undefined && serviceId != null)
        'serviceId': (serviceId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_classesForService<TRes>
    implements CopyWith_Variables_Query_classesForService<TRes> {
  _CopyWithStubImpl_Variables_Query_classesForService(this._res);

  TRes _res;

  call({UuidValue? serviceId}) => _res;
}

class Query_classesForService {
  Query_classesForService({required this.classes});

  factory Query_classesForService.fromJson(Map<String, dynamic> json) {
    final l$classes = json['classes'];
    return Query_classesForService(
      classes: (l$classes as List<dynamic>)
          .map(
            (e) => Query_classesForService_classes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final List<Query_classesForService_classes> classes;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classes = classes;
    return Object.hashAll([Object.hashAll(l$classes.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_classesForService || runtimeType != other.runtimeType) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes.length != lOther$classes.length) {
      return false;
    }
    for (int i = 0; i < l$classes.length; i++) {
      final l$classes$entry = l$classes[i];
      final lOther$classes$entry = lOther$classes[i];
      if (l$classes$entry != lOther$classes$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_classesForService on Query_classesForService {
  CopyWith_Query_classesForService<Query_classesForService> get copyWith =>
      CopyWith_Query_classesForService(this, (i) => i);
}

abstract class CopyWith_Query_classesForService<TRes> {
  factory CopyWith_Query_classesForService(
    Query_classesForService instance,
    TRes Function(Query_classesForService) then,
  ) = _CopyWithImpl_Query_classesForService;

  factory CopyWith_Query_classesForService.stub(TRes res) =
      _CopyWithStubImpl_Query_classesForService;

  TRes call({List<Query_classesForService_classes>? classes});
  TRes classes(
    Iterable<Query_classesForService_classes> Function(
      Iterable<
        CopyWith_Query_classesForService_classes<
          Query_classesForService_classes
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_classesForService<TRes>
    implements CopyWith_Query_classesForService<TRes> {
  _CopyWithImpl_Query_classesForService(this._instance, this._then);

  final Query_classesForService _instance;

  final TRes Function(Query_classesForService) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? classes = _undefined}) => _then(
    Query_classesForService(
      classes: classes == _undefined || classes == null
          ? _instance.classes
          : (classes as List<Query_classesForService_classes>),
    ),
  );

  TRes classes(
    Iterable<Query_classesForService_classes> Function(
      Iterable<
        CopyWith_Query_classesForService_classes<
          Query_classesForService_classes
        >
      >,
    )
    _fn,
  ) => call(
    classes: _fn(
      _instance.classes.map(
        (e) => CopyWith_Query_classesForService_classes(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_classesForService<TRes>
    implements CopyWith_Query_classesForService<TRes> {
  _CopyWithStubImpl_Query_classesForService(this._res);

  TRes _res;

  call({List<Query_classesForService_classes>? classes}) => _res;

  classes(_fn) => _res;
}

const documentNodeQueryclassesForService = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'classesForService'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'serviceId')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'classes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'serviceId'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(
                              name: NameNode(value: 'serviceId'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ListValueNode(
                  values: [
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'name'),
                          value: EnumValueNode(name: NameNode(value: 'ASC')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'color'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'serviceStudyYear'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'serviceGender'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'studyYear'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'order'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ],
);

class Query_classesForService_classes {
  Query_classesForService_classes({
    required this.id,
    required this.name,
    this.color,
    required this.serviceStudyYear,
    this.serviceGender,
    required this.studyYear,
    this.$__typename = 'Classes',
  });

  factory Query_classesForService_classes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$serviceStudyYear = json['serviceStudyYear'];
    final l$serviceGender = json['serviceGender'];
    final l$studyYear = json['studyYear'];
    final l$$__typename = json['__typename'];
    return Query_classesForService_classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      serviceStudyYear: (l$serviceStudyYear as int),
      serviceGender: (l$serviceGender as bool?),
      studyYear: Query_classesForService_classes_studyYear.fromJson(
        (l$studyYear as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final int serviceStudyYear;

  final bool? serviceGender;

  final Query_classesForService_classes_studyYear studyYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$serviceStudyYear = serviceStudyYear;
    _resultData['serviceStudyYear'] = l$serviceStudyYear;
    final l$serviceGender = serviceGender;
    _resultData['serviceGender'] = l$serviceGender;
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceGender = serviceGender;
    final l$studyYear = studyYear;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$serviceStudyYear,
      l$serviceGender,
      l$studyYear,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_classesForService_classes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (l$serviceGender != lOther$serviceGender) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_classesForService_classes
    on Query_classesForService_classes {
  CopyWith_Query_classesForService_classes<Query_classesForService_classes>
  get copyWith => CopyWith_Query_classesForService_classes(this, (i) => i);
}

abstract class CopyWith_Query_classesForService_classes<TRes> {
  factory CopyWith_Query_classesForService_classes(
    Query_classesForService_classes instance,
    TRes Function(Query_classesForService_classes) then,
  ) = _CopyWithImpl_Query_classesForService_classes;

  factory CopyWith_Query_classesForService_classes.stub(TRes res) =
      _CopyWithStubImpl_Query_classesForService_classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    int? serviceStudyYear,
    bool? serviceGender,
    Query_classesForService_classes_studyYear? studyYear,
    String? $__typename,
  });
  CopyWith_Query_classesForService_classes_studyYear<TRes> get studyYear;
}

class _CopyWithImpl_Query_classesForService_classes<TRes>
    implements CopyWith_Query_classesForService_classes<TRes> {
  _CopyWithImpl_Query_classesForService_classes(this._instance, this._then);

  final Query_classesForService_classes _instance;

  final TRes Function(Query_classesForService_classes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceGender = _undefined,
    Object? studyYear = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_classesForService_classes(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      serviceStudyYear:
          serviceStudyYear == _undefined || serviceStudyYear == null
          ? _instance.serviceStudyYear
          : (serviceStudyYear as int),
      serviceGender: serviceGender == _undefined
          ? _instance.serviceGender
          : (serviceGender as bool?),
      studyYear: studyYear == _undefined || studyYear == null
          ? _instance.studyYear
          : (studyYear as Query_classesForService_classes_studyYear),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_classesForService_classes_studyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return CopyWith_Query_classesForService_classes_studyYear(
      local$studyYear,
      (e) => call(studyYear: e),
    );
  }
}

class _CopyWithStubImpl_Query_classesForService_classes<TRes>
    implements CopyWith_Query_classesForService_classes<TRes> {
  _CopyWithStubImpl_Query_classesForService_classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    int? serviceStudyYear,
    bool? serviceGender,
    Query_classesForService_classes_studyYear? studyYear,
    String? $__typename,
  }) => _res;

  CopyWith_Query_classesForService_classes_studyYear<TRes> get studyYear =>
      CopyWith_Query_classesForService_classes_studyYear.stub(_res);
}

class Query_classesForService_classes_studyYear {
  Query_classesForService_classes_studyYear({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Query_classesForService_classes_studyYear.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query_classesForService_classes_studyYear(
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$order, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_classesForService_classes_studyYear ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_classesForService_classes_studyYear
    on Query_classesForService_classes_studyYear {
  CopyWith_Query_classesForService_classes_studyYear<
    Query_classesForService_classes_studyYear
  >
  get copyWith =>
      CopyWith_Query_classesForService_classes_studyYear(this, (i) => i);
}

abstract class CopyWith_Query_classesForService_classes_studyYear<TRes> {
  factory CopyWith_Query_classesForService_classes_studyYear(
    Query_classesForService_classes_studyYear instance,
    TRes Function(Query_classesForService_classes_studyYear) then,
  ) = _CopyWithImpl_Query_classesForService_classes_studyYear;

  factory CopyWith_Query_classesForService_classes_studyYear.stub(TRes res) =
      _CopyWithStubImpl_Query_classesForService_classes_studyYear;

  TRes call({int? order, String? name, String? $__typename});
}

class _CopyWithImpl_Query_classesForService_classes_studyYear<TRes>
    implements CopyWith_Query_classesForService_classes_studyYear<TRes> {
  _CopyWithImpl_Query_classesForService_classes_studyYear(
    this._instance,
    this._then,
  );

  final Query_classesForService_classes_studyYear _instance;

  final TRes Function(Query_classesForService_classes_studyYear) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_classesForService_classes_studyYear(
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_classesForService_classes_studyYear<TRes>
    implements CopyWith_Query_classesForService_classes_studyYear<TRes> {
  _CopyWithStubImpl_Query_classesForService_classes_studyYear(this._res);

  TRes _res;

  call({int? order, String? name, String? $__typename}) => _res;
}
