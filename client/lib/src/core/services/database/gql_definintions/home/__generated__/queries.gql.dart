import '../../areas/__generated__/fragments.gql.dart';
import '../../classes/__generated__/fragments.gql.dart';
import '../../families/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../persons/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import '../../stores/__generated__/fragments.gql.dart';
import '../../streets/__generated__/fragments.gql.dart';
import 'package:gql/ast.dart';

class Variables_Query_homeSearch {
  factory Variables_Query_homeSearch({required String query}) =>
      Variables_Query_homeSearch._({r'query': query});

  Variables_Query_homeSearch._(this._$data);

  factory Variables_Query_homeSearch.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    return Variables_Query_homeSearch._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    return result$data;
  }

  CopyWith_Variables_Query_homeSearch<Variables_Query_homeSearch>
  get copyWith => CopyWith_Variables_Query_homeSearch(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_homeSearch ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    return Object.hashAll([l$query]);
  }
}

abstract class CopyWith_Variables_Query_homeSearch<TRes> {
  factory CopyWith_Variables_Query_homeSearch(
    Variables_Query_homeSearch instance,
    TRes Function(Variables_Query_homeSearch) then,
  ) = _CopyWithImpl_Variables_Query_homeSearch;

  factory CopyWith_Variables_Query_homeSearch.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_homeSearch;

  TRes call({String? query});
}

class _CopyWithImpl_Variables_Query_homeSearch<TRes>
    implements CopyWith_Variables_Query_homeSearch<TRes> {
  _CopyWithImpl_Variables_Query_homeSearch(this._instance, this._then);

  final Variables_Query_homeSearch _instance;

  final TRes Function(Variables_Query_homeSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) => _then(
    Variables_Query_homeSearch._({
      ..._instance._$data,
      if (query != _undefined && query != null) 'query': (query as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_homeSearch<TRes>
    implements CopyWith_Variables_Query_homeSearch<TRes> {
  _CopyWithStubImpl_Variables_Query_homeSearch(this._res);

  TRes _res;

  call({String? query}) => _res;
}

class Query_homeSearch {
  Query_homeSearch({
    required this.persons,
    required this.classes,
    required this.groups,
    required this.families,
    required this.services,
    required this.streets,
    required this.stores,
    required this.areas,
  });

  factory Query_homeSearch.fromJson(Map<String, dynamic> json) {
    final l$persons = json['persons'];
    final l$classes = json['classes'];
    final l$groups = json['groups'];
    final l$families = json['families'];
    final l$services = json['services'];
    final l$streets = json['streets'];
    final l$stores = json['stores'];
    final l$areas = json['areas'];
    return Query_homeSearch(
      persons: (l$persons as List<dynamic>)
          .map((e) => Fragment_Person.fromJson((e as Map<String, dynamic>)))
          .toList(),
      classes: (l$classes as List<dynamic>)
          .map((e) => Fragment_Class.fromJson((e as Map<String, dynamic>)))
          .toList(),
      groups: (l$groups as List<dynamic>)
          .map((e) => Fragment_Group.fromJson((e as Map<String, dynamic>)))
          .toList(),
      families: (l$families as List<dynamic>)
          .map((e) => Fragment_Family.fromJson((e as Map<String, dynamic>)))
          .toList(),
      services: (l$services as List<dynamic>)
          .map((e) => Fragment_Service.fromJson((e as Map<String, dynamic>)))
          .toList(),
      streets: (l$streets as List<dynamic>)
          .map((e) => Fragment_Street.fromJson((e as Map<String, dynamic>)))
          .toList(),
      stores: (l$stores as List<dynamic>)
          .map((e) => Fragment_Store.fromJson((e as Map<String, dynamic>)))
          .toList(),
      areas: (l$areas as List<dynamic>)
          .map((e) => Fragment_Area.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final List<Fragment_Person> persons;

  final List<Fragment_Class> classes;

  final List<Fragment_Group> groups;

  final List<Fragment_Family> families;

  final List<Fragment_Service> services;

  final List<Fragment_Street> streets;

  final List<Fragment_Store> stores;

  final List<Fragment_Area> areas;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$persons = persons;
    _resultData['persons'] = l$persons.map((e) => e.toJson()).toList();
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
    final l$groups = groups;
    _resultData['groups'] = l$groups.map((e) => e.toJson()).toList();
    final l$families = families;
    _resultData['families'] = l$families.map((e) => e.toJson()).toList();
    final l$services = services;
    _resultData['services'] = l$services.map((e) => e.toJson()).toList();
    final l$streets = streets;
    _resultData['streets'] = l$streets.map((e) => e.toJson()).toList();
    final l$stores = stores;
    _resultData['stores'] = l$stores.map((e) => e.toJson()).toList();
    final l$areas = areas;
    _resultData['areas'] = l$areas.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$persons = persons;
    final l$classes = classes;
    final l$groups = groups;
    final l$families = families;
    final l$services = services;
    final l$streets = streets;
    final l$stores = stores;
    final l$areas = areas;
    return Object.hashAll([
      Object.hashAll(l$persons.map((v) => v)),
      Object.hashAll(l$classes.map((v) => v)),
      Object.hashAll(l$groups.map((v) => v)),
      Object.hashAll(l$families.map((v) => v)),
      Object.hashAll(l$services.map((v) => v)),
      Object.hashAll(l$streets.map((v) => v)),
      Object.hashAll(l$stores.map((v) => v)),
      Object.hashAll(l$areas.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_homeSearch || runtimeType != other.runtimeType) {
      return false;
    }
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (l$persons.length != lOther$persons.length) {
      return false;
    }
    for (int i = 0; i < l$persons.length; i++) {
      final l$persons$entry = l$persons[i];
      final lOther$persons$entry = lOther$persons[i];
      if (l$persons$entry != lOther$persons$entry) {
        return false;
      }
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
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups.length != lOther$groups.length) {
      return false;
    }
    for (int i = 0; i < l$groups.length; i++) {
      final l$groups$entry = l$groups[i];
      final lOther$groups$entry = lOther$groups[i];
      if (l$groups$entry != lOther$groups$entry) {
        return false;
      }
    }
    final l$families = families;
    final lOther$families = other.families;
    if (l$families.length != lOther$families.length) {
      return false;
    }
    for (int i = 0; i < l$families.length; i++) {
      final l$families$entry = l$families[i];
      final lOther$families$entry = lOther$families[i];
      if (l$families$entry != lOther$families$entry) {
        return false;
      }
    }
    final l$services = services;
    final lOther$services = other.services;
    if (l$services.length != lOther$services.length) {
      return false;
    }
    for (int i = 0; i < l$services.length; i++) {
      final l$services$entry = l$services[i];
      final lOther$services$entry = lOther$services[i];
      if (l$services$entry != lOther$services$entry) {
        return false;
      }
    }
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (l$streets.length != lOther$streets.length) {
      return false;
    }
    for (int i = 0; i < l$streets.length; i++) {
      final l$streets$entry = l$streets[i];
      final lOther$streets$entry = lOther$streets[i];
      if (l$streets$entry != lOther$streets$entry) {
        return false;
      }
    }
    final l$stores = stores;
    final lOther$stores = other.stores;
    if (l$stores.length != lOther$stores.length) {
      return false;
    }
    for (int i = 0; i < l$stores.length; i++) {
      final l$stores$entry = l$stores[i];
      final lOther$stores$entry = lOther$stores[i];
      if (l$stores$entry != lOther$stores$entry) {
        return false;
      }
    }
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (l$areas.length != lOther$areas.length) {
      return false;
    }
    for (int i = 0; i < l$areas.length; i++) {
      final l$areas$entry = l$areas[i];
      final lOther$areas$entry = lOther$areas[i];
      if (l$areas$entry != lOther$areas$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_homeSearch on Query_homeSearch {
  CopyWith_Query_homeSearch<Query_homeSearch> get copyWith =>
      CopyWith_Query_homeSearch(this, (i) => i);
}

abstract class CopyWith_Query_homeSearch<TRes> {
  factory CopyWith_Query_homeSearch(
    Query_homeSearch instance,
    TRes Function(Query_homeSearch) then,
  ) = _CopyWithImpl_Query_homeSearch;

  factory CopyWith_Query_homeSearch.stub(TRes res) =
      _CopyWithStubImpl_Query_homeSearch;

  TRes call({
    List<Fragment_Person>? persons,
    List<Fragment_Class>? classes,
    List<Fragment_Group>? groups,
    List<Fragment_Family>? families,
    List<Fragment_Service>? services,
    List<Fragment_Street>? streets,
    List<Fragment_Store>? stores,
    List<Fragment_Area>? areas,
  });
  TRes persons(
    Iterable<Fragment_Person> Function(
      Iterable<CopyWith_Fragment_Person<Fragment_Person>>,
    )
    _fn,
  );
  TRes classes(
    Iterable<Fragment_Class> Function(
      Iterable<CopyWith_Fragment_Class<Fragment_Class>>,
    )
    _fn,
  );
  TRes groups(
    Iterable<Fragment_Group> Function(
      Iterable<CopyWith_Fragment_Group<Fragment_Group>>,
    )
    _fn,
  );
  TRes families(
    Iterable<Fragment_Family> Function(
      Iterable<CopyWith_Fragment_Family<Fragment_Family>>,
    )
    _fn,
  );
  TRes services(
    Iterable<Fragment_Service> Function(
      Iterable<CopyWith_Fragment_Service<Fragment_Service>>,
    )
    _fn,
  );
  TRes streets(
    Iterable<Fragment_Street> Function(
      Iterable<CopyWith_Fragment_Street<Fragment_Street>>,
    )
    _fn,
  );
  TRes stores(
    Iterable<Fragment_Store> Function(
      Iterable<CopyWith_Fragment_Store<Fragment_Store>>,
    )
    _fn,
  );
  TRes areas(
    Iterable<Fragment_Area> Function(
      Iterable<CopyWith_Fragment_Area<Fragment_Area>>,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_homeSearch<TRes>
    implements CopyWith_Query_homeSearch<TRes> {
  _CopyWithImpl_Query_homeSearch(this._instance, this._then);

  final Query_homeSearch _instance;

  final TRes Function(Query_homeSearch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? persons = _undefined,
    Object? classes = _undefined,
    Object? groups = _undefined,
    Object? families = _undefined,
    Object? services = _undefined,
    Object? streets = _undefined,
    Object? stores = _undefined,
    Object? areas = _undefined,
  }) => _then(
    Query_homeSearch(
      persons: persons == _undefined || persons == null
          ? _instance.persons
          : (persons as List<Fragment_Person>),
      classes: classes == _undefined || classes == null
          ? _instance.classes
          : (classes as List<Fragment_Class>),
      groups: groups == _undefined || groups == null
          ? _instance.groups
          : (groups as List<Fragment_Group>),
      families: families == _undefined || families == null
          ? _instance.families
          : (families as List<Fragment_Family>),
      services: services == _undefined || services == null
          ? _instance.services
          : (services as List<Fragment_Service>),
      streets: streets == _undefined || streets == null
          ? _instance.streets
          : (streets as List<Fragment_Street>),
      stores: stores == _undefined || stores == null
          ? _instance.stores
          : (stores as List<Fragment_Store>),
      areas: areas == _undefined || areas == null
          ? _instance.areas
          : (areas as List<Fragment_Area>),
    ),
  );

  TRes persons(
    Iterable<Fragment_Person> Function(
      Iterable<CopyWith_Fragment_Person<Fragment_Person>>,
    )
    _fn,
  ) => call(
    persons: _fn(
      _instance.persons.map((e) => CopyWith_Fragment_Person(e, (i) => i)),
    ).toList(),
  );

  TRes classes(
    Iterable<Fragment_Class> Function(
      Iterable<CopyWith_Fragment_Class<Fragment_Class>>,
    )
    _fn,
  ) => call(
    classes: _fn(
      _instance.classes.map((e) => CopyWith_Fragment_Class(e, (i) => i)),
    ).toList(),
  );

  TRes groups(
    Iterable<Fragment_Group> Function(
      Iterable<CopyWith_Fragment_Group<Fragment_Group>>,
    )
    _fn,
  ) => call(
    groups: _fn(
      _instance.groups.map((e) => CopyWith_Fragment_Group(e, (i) => i)),
    ).toList(),
  );

  TRes families(
    Iterable<Fragment_Family> Function(
      Iterable<CopyWith_Fragment_Family<Fragment_Family>>,
    )
    _fn,
  ) => call(
    families: _fn(
      _instance.families.map((e) => CopyWith_Fragment_Family(e, (i) => i)),
    ).toList(),
  );

  TRes services(
    Iterable<Fragment_Service> Function(
      Iterable<CopyWith_Fragment_Service<Fragment_Service>>,
    )
    _fn,
  ) => call(
    services: _fn(
      _instance.services.map((e) => CopyWith_Fragment_Service(e, (i) => i)),
    ).toList(),
  );

  TRes streets(
    Iterable<Fragment_Street> Function(
      Iterable<CopyWith_Fragment_Street<Fragment_Street>>,
    )
    _fn,
  ) => call(
    streets: _fn(
      _instance.streets.map((e) => CopyWith_Fragment_Street(e, (i) => i)),
    ).toList(),
  );

  TRes stores(
    Iterable<Fragment_Store> Function(
      Iterable<CopyWith_Fragment_Store<Fragment_Store>>,
    )
    _fn,
  ) => call(
    stores: _fn(
      _instance.stores.map((e) => CopyWith_Fragment_Store(e, (i) => i)),
    ).toList(),
  );

  TRes areas(
    Iterable<Fragment_Area> Function(
      Iterable<CopyWith_Fragment_Area<Fragment_Area>>,
    )
    _fn,
  ) => call(
    areas: _fn(
      _instance.areas.map((e) => CopyWith_Fragment_Area(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_homeSearch<TRes>
    implements CopyWith_Query_homeSearch<TRes> {
  _CopyWithStubImpl_Query_homeSearch(this._res);

  TRes _res;

  call({
    List<Fragment_Person>? persons,
    List<Fragment_Class>? classes,
    List<Fragment_Group>? groups,
    List<Fragment_Family>? families,
    List<Fragment_Service>? services,
    List<Fragment_Street>? streets,
    List<Fragment_Store>? stores,
    List<Fragment_Area>? areas,
  }) => _res;

  persons(_fn) => _res;

  classes(_fn) => _res;

  groups(_fn) => _res;

  families(_fn) => _res;

  services(_fn) => _res;

  streets(_fn) => _res;

  stores(_fn) => _res;

  areas(_fn) => _res;
}

const documentNodeQueryhomeSearch = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'homeSearch'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'persons'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Person'),
                  directives: [],
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
            name: NameNode(value: 'classes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Class'),
                  directives: [],
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
            name: NameNode(value: 'groups'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Group'),
                  directives: [],
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
            name: NameNode(value: 'families'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Family'),
                  directives: [],
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
            name: NameNode(value: 'services'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Service'),
                  directives: [],
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
            name: NameNode(value: 'streets'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Street'),
                  directives: [],
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
            name: NameNode(value: 'stores'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Store'),
                  directives: [],
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
            name: NameNode(value: 'areas'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Area'),
                  directives: [],
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
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionFamily,
    fragmentDefinitionFamilyNoPhoto,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStreet,
    fragmentDefinitionStreetNoPhoto,
    fragmentDefinitionStore,
    fragmentDefinitionStoreNoPhoto,
    fragmentDefinitionArea,
    fragmentDefinitionAreaNoPhoto,
  ],
);
