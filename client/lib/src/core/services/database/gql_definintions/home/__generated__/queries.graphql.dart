import '../../areas/__generated__/fragments.graphql.dart';
import '../../classes/__generated__/fragments.graphql.dart';
import '../../data_checks/__generated__/fragments.graphql.dart';
import '../../families/__generated__/fragments.graphql.dart';
import '../../groups/__generated__/fragments.graphql.dart';
import '../../persons/__generated__/fragments.graphql.dart';
import '../../services/__generated__/fragments.graphql.dart';
import '../../stores/__generated__/fragments.graphql.dart';
import '../../streets/__generated__/fragments.graphql.dart';

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
    this.persons,
    this.classes,
    this.groups,
    this.families,
    this.services,
    this.streets,
    this.stores,
    this.areas,
    this.$__typename = 'RootQueryType',
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
    final l$$__typename = json['__typename'];
    return Query_homeSearch(
      persons: l$persons == null
          ? null
          : Query_homeSearch_persons.fromJson(
              (l$persons as Map<String, dynamic>),
            ),
      classes: l$classes == null
          ? null
          : Query_homeSearch_classes.fromJson(
              (l$classes as Map<String, dynamic>),
            ),
      groups: l$groups == null
          ? null
          : Query_homeSearch_groups.fromJson(
              (l$groups as Map<String, dynamic>),
            ),
      families: l$families == null
          ? null
          : Query_homeSearch_families.fromJson(
              (l$families as Map<String, dynamic>),
            ),
      services: l$services == null
          ? null
          : Query_homeSearch_services.fromJson(
              (l$services as Map<String, dynamic>),
            ),
      streets: l$streets == null
          ? null
          : Query_homeSearch_streets.fromJson(
              (l$streets as Map<String, dynamic>),
            ),
      stores: l$stores == null
          ? null
          : Query_homeSearch_stores.fromJson(
              (l$stores as Map<String, dynamic>),
            ),
      areas: l$areas == null
          ? null
          : Query_homeSearch_areas.fromJson((l$areas as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_homeSearch_persons? persons;

  final Query_homeSearch_classes? classes;

  final Query_homeSearch_groups? groups;

  final Query_homeSearch_families? families;

  final Query_homeSearch_services? services;

  final Query_homeSearch_streets? streets;

  final Query_homeSearch_stores? stores;

  final Query_homeSearch_areas? areas;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$persons = persons;
    _resultData['persons'] = l$persons?.toJson();
    final l$classes = classes;
    _resultData['classes'] = l$classes?.toJson();
    final l$groups = groups;
    _resultData['groups'] = l$groups?.toJson();
    final l$families = families;
    _resultData['families'] = l$families?.toJson();
    final l$services = services;
    _resultData['services'] = l$services?.toJson();
    final l$streets = streets;
    _resultData['streets'] = l$streets?.toJson();
    final l$stores = stores;
    _resultData['stores'] = l$stores?.toJson();
    final l$areas = areas;
    _resultData['areas'] = l$areas?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$persons,
      l$classes,
      l$groups,
      l$families,
      l$services,
      l$streets,
      l$stores,
      l$areas,
      l$$__typename,
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
    if (l$persons != lOther$persons) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes != lOther$classes) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups != lOther$groups) {
      return false;
    }
    final l$families = families;
    final lOther$families = other.families;
    if (l$families != lOther$families) {
      return false;
    }
    final l$services = services;
    final lOther$services = other.services;
    if (l$services != lOther$services) {
      return false;
    }
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (l$streets != lOther$streets) {
      return false;
    }
    final l$stores = stores;
    final lOther$stores = other.stores;
    if (l$stores != lOther$stores) {
      return false;
    }
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (l$areas != lOther$areas) {
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
    Query_homeSearch_persons? persons,
    Query_homeSearch_classes? classes,
    Query_homeSearch_groups? groups,
    Query_homeSearch_families? families,
    Query_homeSearch_services? services,
    Query_homeSearch_streets? streets,
    Query_homeSearch_stores? stores,
    Query_homeSearch_areas? areas,
    String? $__typename,
  });
  CopyWith_Query_homeSearch_persons<TRes> get persons;
  CopyWith_Query_homeSearch_classes<TRes> get classes;
  CopyWith_Query_homeSearch_groups<TRes> get groups;
  CopyWith_Query_homeSearch_families<TRes> get families;
  CopyWith_Query_homeSearch_services<TRes> get services;
  CopyWith_Query_homeSearch_streets<TRes> get streets;
  CopyWith_Query_homeSearch_stores<TRes> get stores;
  CopyWith_Query_homeSearch_areas<TRes> get areas;
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
    Object? $__typename = _undefined,
  }) => _then(
    Query_homeSearch(
      persons: persons == _undefined
          ? _instance.persons
          : (persons as Query_homeSearch_persons?),
      classes: classes == _undefined
          ? _instance.classes
          : (classes as Query_homeSearch_classes?),
      groups: groups == _undefined
          ? _instance.groups
          : (groups as Query_homeSearch_groups?),
      families: families == _undefined
          ? _instance.families
          : (families as Query_homeSearch_families?),
      services: services == _undefined
          ? _instance.services
          : (services as Query_homeSearch_services?),
      streets: streets == _undefined
          ? _instance.streets
          : (streets as Query_homeSearch_streets?),
      stores: stores == _undefined
          ? _instance.stores
          : (stores as Query_homeSearch_stores?),
      areas: areas == _undefined
          ? _instance.areas
          : (areas as Query_homeSearch_areas?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Query_homeSearch_persons<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Query_homeSearch_persons.stub(_then(_instance))
        : CopyWith_Query_homeSearch_persons(
            local$persons,
            (e) => call(persons: e),
          );
  }

  CopyWith_Query_homeSearch_classes<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Query_homeSearch_classes.stub(_then(_instance))
        : CopyWith_Query_homeSearch_classes(
            local$classes,
            (e) => call(classes: e),
          );
  }

  CopyWith_Query_homeSearch_groups<TRes> get groups {
    final local$groups = _instance.groups;
    return local$groups == null
        ? CopyWith_Query_homeSearch_groups.stub(_then(_instance))
        : CopyWith_Query_homeSearch_groups(
            local$groups,
            (e) => call(groups: e),
          );
  }

  CopyWith_Query_homeSearch_families<TRes> get families {
    final local$families = _instance.families;
    return local$families == null
        ? CopyWith_Query_homeSearch_families.stub(_then(_instance))
        : CopyWith_Query_homeSearch_families(
            local$families,
            (e) => call(families: e),
          );
  }

  CopyWith_Query_homeSearch_services<TRes> get services {
    final local$services = _instance.services;
    return local$services == null
        ? CopyWith_Query_homeSearch_services.stub(_then(_instance))
        : CopyWith_Query_homeSearch_services(
            local$services,
            (e) => call(services: e),
          );
  }

  CopyWith_Query_homeSearch_streets<TRes> get streets {
    final local$streets = _instance.streets;
    return local$streets == null
        ? CopyWith_Query_homeSearch_streets.stub(_then(_instance))
        : CopyWith_Query_homeSearch_streets(
            local$streets,
            (e) => call(streets: e),
          );
  }

  CopyWith_Query_homeSearch_stores<TRes> get stores {
    final local$stores = _instance.stores;
    return local$stores == null
        ? CopyWith_Query_homeSearch_stores.stub(_then(_instance))
        : CopyWith_Query_homeSearch_stores(
            local$stores,
            (e) => call(stores: e),
          );
  }

  CopyWith_Query_homeSearch_areas<TRes> get areas {
    final local$areas = _instance.areas;
    return local$areas == null
        ? CopyWith_Query_homeSearch_areas.stub(_then(_instance))
        : CopyWith_Query_homeSearch_areas(local$areas, (e) => call(areas: e));
  }
}

class _CopyWithStubImpl_Query_homeSearch<TRes>
    implements CopyWith_Query_homeSearch<TRes> {
  _CopyWithStubImpl_Query_homeSearch(this._res);

  TRes _res;

  call({
    Query_homeSearch_persons? persons,
    Query_homeSearch_classes? classes,
    Query_homeSearch_groups? groups,
    Query_homeSearch_families? families,
    Query_homeSearch_services? services,
    Query_homeSearch_streets? streets,
    Query_homeSearch_stores? stores,
    Query_homeSearch_areas? areas,
    String? $__typename,
  }) => _res;

  CopyWith_Query_homeSearch_persons<TRes> get persons =>
      CopyWith_Query_homeSearch_persons.stub(_res);

  CopyWith_Query_homeSearch_classes<TRes> get classes =>
      CopyWith_Query_homeSearch_classes.stub(_res);

  CopyWith_Query_homeSearch_groups<TRes> get groups =>
      CopyWith_Query_homeSearch_groups.stub(_res);

  CopyWith_Query_homeSearch_families<TRes> get families =>
      CopyWith_Query_homeSearch_families.stub(_res);

  CopyWith_Query_homeSearch_services<TRes> get services =>
      CopyWith_Query_homeSearch_services.stub(_res);

  CopyWith_Query_homeSearch_streets<TRes> get streets =>
      CopyWith_Query_homeSearch_streets.stub(_res);

  CopyWith_Query_homeSearch_stores<TRes> get stores =>
      CopyWith_Query_homeSearch_stores.stub(_res);

  CopyWith_Query_homeSearch_areas<TRes> get areas =>
      CopyWith_Query_homeSearch_areas.stub(_res);
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
                name: NameNode(value: 'filter'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
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
                name: NameNode(value: 'filter'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
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
                name: NameNode(value: 'filter'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
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
                name: NameNode(value: 'filter'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
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
                name: NameNode(value: 'filter'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
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
                name: NameNode(value: 'filter'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
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
                name: NameNode(value: 'filter'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
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
                name: NameNode(value: 'filter'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'ilike'),
                            value: VariableNode(name: NameNode(value: 'query')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '5'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
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
    fragmentDefinitionPerson,
    fragmentDefinitionPersonNoPhoto,
    fragmentDefinitionDataCheck,
    fragmentDefinitionClass,
    fragmentDefinitionClassNoPhoto,
    fragmentDefinitionGroup,
    fragmentDefinitionGroupNoPhoto,
    fragmentDefinitionFamily,
    fragmentDefinitionService,
    fragmentDefinitionServiceNoPhoto,
    fragmentDefinitionStreet,
    fragmentDefinitionStore,
    fragmentDefinitionArea,
  ],
);

class Query_homeSearch_persons {
  Query_homeSearch_persons({
    this.results,
    this.$__typename = 'KeysetPageOfPerson',
  });

  factory Query_homeSearch_persons.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_homeSearch_persons(
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Person.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_Person>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_homeSearch_persons ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_homeSearch_persons
    on Query_homeSearch_persons {
  CopyWith_Query_homeSearch_persons<Query_homeSearch_persons> get copyWith =>
      CopyWith_Query_homeSearch_persons(this, (i) => i);
}

abstract class CopyWith_Query_homeSearch_persons<TRes> {
  factory CopyWith_Query_homeSearch_persons(
    Query_homeSearch_persons instance,
    TRes Function(Query_homeSearch_persons) then,
  ) = _CopyWithImpl_Query_homeSearch_persons;

  factory CopyWith_Query_homeSearch_persons.stub(TRes res) =
      _CopyWithStubImpl_Query_homeSearch_persons;

  TRes call({List<Fragment_Person>? results, String? $__typename});
  TRes results(
    Iterable<Fragment_Person>? Function(
      Iterable<CopyWith_Fragment_Person<Fragment_Person>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_homeSearch_persons<TRes>
    implements CopyWith_Query_homeSearch_persons<TRes> {
  _CopyWithImpl_Query_homeSearch_persons(this._instance, this._then);

  final Query_homeSearch_persons _instance;

  final TRes Function(Query_homeSearch_persons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? results = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_homeSearch_persons(
          results: results == _undefined
              ? _instance.results
              : (results as List<Fragment_Person>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes results(
    Iterable<Fragment_Person>? Function(
      Iterable<CopyWith_Fragment_Person<Fragment_Person>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Person(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_homeSearch_persons<TRes>
    implements CopyWith_Query_homeSearch_persons<TRes> {
  _CopyWithStubImpl_Query_homeSearch_persons(this._res);

  TRes _res;

  call({List<Fragment_Person>? results, String? $__typename}) => _res;

  results(_fn) => _res;
}

class Query_homeSearch_classes {
  Query_homeSearch_classes({
    this.results,
    this.$__typename = 'KeysetPageOfClass',
  });

  factory Query_homeSearch_classes.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_homeSearch_classes(
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Class.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_Class>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_homeSearch_classes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_homeSearch_classes
    on Query_homeSearch_classes {
  CopyWith_Query_homeSearch_classes<Query_homeSearch_classes> get copyWith =>
      CopyWith_Query_homeSearch_classes(this, (i) => i);
}

abstract class CopyWith_Query_homeSearch_classes<TRes> {
  factory CopyWith_Query_homeSearch_classes(
    Query_homeSearch_classes instance,
    TRes Function(Query_homeSearch_classes) then,
  ) = _CopyWithImpl_Query_homeSearch_classes;

  factory CopyWith_Query_homeSearch_classes.stub(TRes res) =
      _CopyWithStubImpl_Query_homeSearch_classes;

  TRes call({List<Fragment_Class>? results, String? $__typename});
  TRes results(
    Iterable<Fragment_Class>? Function(
      Iterable<CopyWith_Fragment_Class<Fragment_Class>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_homeSearch_classes<TRes>
    implements CopyWith_Query_homeSearch_classes<TRes> {
  _CopyWithImpl_Query_homeSearch_classes(this._instance, this._then);

  final Query_homeSearch_classes _instance;

  final TRes Function(Query_homeSearch_classes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? results = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_homeSearch_classes(
          results: results == _undefined
              ? _instance.results
              : (results as List<Fragment_Class>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes results(
    Iterable<Fragment_Class>? Function(
      Iterable<CopyWith_Fragment_Class<Fragment_Class>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Class(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_homeSearch_classes<TRes>
    implements CopyWith_Query_homeSearch_classes<TRes> {
  _CopyWithStubImpl_Query_homeSearch_classes(this._res);

  TRes _res;

  call({List<Fragment_Class>? results, String? $__typename}) => _res;

  results(_fn) => _res;
}

class Query_homeSearch_groups {
  Query_homeSearch_groups({
    this.results,
    this.$__typename = 'KeysetPageOfGroup',
  });

  factory Query_homeSearch_groups.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_homeSearch_groups(
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Group.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_Group>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_homeSearch_groups || runtimeType != other.runtimeType) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_homeSearch_groups on Query_homeSearch_groups {
  CopyWith_Query_homeSearch_groups<Query_homeSearch_groups> get copyWith =>
      CopyWith_Query_homeSearch_groups(this, (i) => i);
}

abstract class CopyWith_Query_homeSearch_groups<TRes> {
  factory CopyWith_Query_homeSearch_groups(
    Query_homeSearch_groups instance,
    TRes Function(Query_homeSearch_groups) then,
  ) = _CopyWithImpl_Query_homeSearch_groups;

  factory CopyWith_Query_homeSearch_groups.stub(TRes res) =
      _CopyWithStubImpl_Query_homeSearch_groups;

  TRes call({List<Fragment_Group>? results, String? $__typename});
  TRes results(
    Iterable<Fragment_Group>? Function(
      Iterable<CopyWith_Fragment_Group<Fragment_Group>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_homeSearch_groups<TRes>
    implements CopyWith_Query_homeSearch_groups<TRes> {
  _CopyWithImpl_Query_homeSearch_groups(this._instance, this._then);

  final Query_homeSearch_groups _instance;

  final TRes Function(Query_homeSearch_groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? results = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_homeSearch_groups(
          results: results == _undefined
              ? _instance.results
              : (results as List<Fragment_Group>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes results(
    Iterable<Fragment_Group>? Function(
      Iterable<CopyWith_Fragment_Group<Fragment_Group>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Group(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_homeSearch_groups<TRes>
    implements CopyWith_Query_homeSearch_groups<TRes> {
  _CopyWithStubImpl_Query_homeSearch_groups(this._res);

  TRes _res;

  call({List<Fragment_Group>? results, String? $__typename}) => _res;

  results(_fn) => _res;
}

class Query_homeSearch_families {
  Query_homeSearch_families({
    this.results,
    this.$__typename = 'KeysetPageOfFamily',
  });

  factory Query_homeSearch_families.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_homeSearch_families(
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Family.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_Family>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_homeSearch_families ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_homeSearch_families
    on Query_homeSearch_families {
  CopyWith_Query_homeSearch_families<Query_homeSearch_families> get copyWith =>
      CopyWith_Query_homeSearch_families(this, (i) => i);
}

abstract class CopyWith_Query_homeSearch_families<TRes> {
  factory CopyWith_Query_homeSearch_families(
    Query_homeSearch_families instance,
    TRes Function(Query_homeSearch_families) then,
  ) = _CopyWithImpl_Query_homeSearch_families;

  factory CopyWith_Query_homeSearch_families.stub(TRes res) =
      _CopyWithStubImpl_Query_homeSearch_families;

  TRes call({List<Fragment_Family>? results, String? $__typename});
  TRes results(
    Iterable<Fragment_Family>? Function(
      Iterable<CopyWith_Fragment_Family<Fragment_Family>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_homeSearch_families<TRes>
    implements CopyWith_Query_homeSearch_families<TRes> {
  _CopyWithImpl_Query_homeSearch_families(this._instance, this._then);

  final Query_homeSearch_families _instance;

  final TRes Function(Query_homeSearch_families) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? results = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_homeSearch_families(
          results: results == _undefined
              ? _instance.results
              : (results as List<Fragment_Family>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes results(
    Iterable<Fragment_Family>? Function(
      Iterable<CopyWith_Fragment_Family<Fragment_Family>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Family(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_homeSearch_families<TRes>
    implements CopyWith_Query_homeSearch_families<TRes> {
  _CopyWithStubImpl_Query_homeSearch_families(this._res);

  TRes _res;

  call({List<Fragment_Family>? results, String? $__typename}) => _res;

  results(_fn) => _res;
}

class Query_homeSearch_services {
  Query_homeSearch_services({
    this.results,
    this.$__typename = 'KeysetPageOfService',
  });

  factory Query_homeSearch_services.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_homeSearch_services(
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Service.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_Service>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_homeSearch_services ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_homeSearch_services
    on Query_homeSearch_services {
  CopyWith_Query_homeSearch_services<Query_homeSearch_services> get copyWith =>
      CopyWith_Query_homeSearch_services(this, (i) => i);
}

abstract class CopyWith_Query_homeSearch_services<TRes> {
  factory CopyWith_Query_homeSearch_services(
    Query_homeSearch_services instance,
    TRes Function(Query_homeSearch_services) then,
  ) = _CopyWithImpl_Query_homeSearch_services;

  factory CopyWith_Query_homeSearch_services.stub(TRes res) =
      _CopyWithStubImpl_Query_homeSearch_services;

  TRes call({List<Fragment_Service>? results, String? $__typename});
  TRes results(
    Iterable<Fragment_Service>? Function(
      Iterable<CopyWith_Fragment_Service<Fragment_Service>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_homeSearch_services<TRes>
    implements CopyWith_Query_homeSearch_services<TRes> {
  _CopyWithImpl_Query_homeSearch_services(this._instance, this._then);

  final Query_homeSearch_services _instance;

  final TRes Function(Query_homeSearch_services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? results = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_homeSearch_services(
          results: results == _undefined
              ? _instance.results
              : (results as List<Fragment_Service>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes results(
    Iterable<Fragment_Service>? Function(
      Iterable<CopyWith_Fragment_Service<Fragment_Service>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Service(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_homeSearch_services<TRes>
    implements CopyWith_Query_homeSearch_services<TRes> {
  _CopyWithStubImpl_Query_homeSearch_services(this._res);

  TRes _res;

  call({List<Fragment_Service>? results, String? $__typename}) => _res;

  results(_fn) => _res;
}

class Query_homeSearch_streets {
  Query_homeSearch_streets({
    this.results,
    this.$__typename = 'KeysetPageOfStreet',
  });

  factory Query_homeSearch_streets.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_homeSearch_streets(
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Street.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_Street>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_homeSearch_streets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_homeSearch_streets
    on Query_homeSearch_streets {
  CopyWith_Query_homeSearch_streets<Query_homeSearch_streets> get copyWith =>
      CopyWith_Query_homeSearch_streets(this, (i) => i);
}

abstract class CopyWith_Query_homeSearch_streets<TRes> {
  factory CopyWith_Query_homeSearch_streets(
    Query_homeSearch_streets instance,
    TRes Function(Query_homeSearch_streets) then,
  ) = _CopyWithImpl_Query_homeSearch_streets;

  factory CopyWith_Query_homeSearch_streets.stub(TRes res) =
      _CopyWithStubImpl_Query_homeSearch_streets;

  TRes call({List<Fragment_Street>? results, String? $__typename});
  TRes results(
    Iterable<Fragment_Street>? Function(
      Iterable<CopyWith_Fragment_Street<Fragment_Street>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_homeSearch_streets<TRes>
    implements CopyWith_Query_homeSearch_streets<TRes> {
  _CopyWithImpl_Query_homeSearch_streets(this._instance, this._then);

  final Query_homeSearch_streets _instance;

  final TRes Function(Query_homeSearch_streets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? results = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_homeSearch_streets(
          results: results == _undefined
              ? _instance.results
              : (results as List<Fragment_Street>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes results(
    Iterable<Fragment_Street>? Function(
      Iterable<CopyWith_Fragment_Street<Fragment_Street>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Street(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_homeSearch_streets<TRes>
    implements CopyWith_Query_homeSearch_streets<TRes> {
  _CopyWithStubImpl_Query_homeSearch_streets(this._res);

  TRes _res;

  call({List<Fragment_Street>? results, String? $__typename}) => _res;

  results(_fn) => _res;
}

class Query_homeSearch_stores {
  Query_homeSearch_stores({
    this.results,
    this.$__typename = 'KeysetPageOfStore',
  });

  factory Query_homeSearch_stores.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_homeSearch_stores(
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Store.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_Store>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_homeSearch_stores || runtimeType != other.runtimeType) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_homeSearch_stores on Query_homeSearch_stores {
  CopyWith_Query_homeSearch_stores<Query_homeSearch_stores> get copyWith =>
      CopyWith_Query_homeSearch_stores(this, (i) => i);
}

abstract class CopyWith_Query_homeSearch_stores<TRes> {
  factory CopyWith_Query_homeSearch_stores(
    Query_homeSearch_stores instance,
    TRes Function(Query_homeSearch_stores) then,
  ) = _CopyWithImpl_Query_homeSearch_stores;

  factory CopyWith_Query_homeSearch_stores.stub(TRes res) =
      _CopyWithStubImpl_Query_homeSearch_stores;

  TRes call({List<Fragment_Store>? results, String? $__typename});
  TRes results(
    Iterable<Fragment_Store>? Function(
      Iterable<CopyWith_Fragment_Store<Fragment_Store>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_homeSearch_stores<TRes>
    implements CopyWith_Query_homeSearch_stores<TRes> {
  _CopyWithImpl_Query_homeSearch_stores(this._instance, this._then);

  final Query_homeSearch_stores _instance;

  final TRes Function(Query_homeSearch_stores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? results = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_homeSearch_stores(
          results: results == _undefined
              ? _instance.results
              : (results as List<Fragment_Store>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes results(
    Iterable<Fragment_Store>? Function(
      Iterable<CopyWith_Fragment_Store<Fragment_Store>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Store(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_homeSearch_stores<TRes>
    implements CopyWith_Query_homeSearch_stores<TRes> {
  _CopyWithStubImpl_Query_homeSearch_stores(this._res);

  TRes _res;

  call({List<Fragment_Store>? results, String? $__typename}) => _res;

  results(_fn) => _res;
}

class Query_homeSearch_areas {
  Query_homeSearch_areas({this.results, this.$__typename = 'KeysetPageOfArea'});

  factory Query_homeSearch_areas.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query_homeSearch_areas(
      results: (l$results as List<dynamic>?)
          ?.map((e) => Fragment_Area.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment_Area>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_homeSearch_areas || runtimeType != other.runtimeType) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension_Query_homeSearch_areas on Query_homeSearch_areas {
  CopyWith_Query_homeSearch_areas<Query_homeSearch_areas> get copyWith =>
      CopyWith_Query_homeSearch_areas(this, (i) => i);
}

abstract class CopyWith_Query_homeSearch_areas<TRes> {
  factory CopyWith_Query_homeSearch_areas(
    Query_homeSearch_areas instance,
    TRes Function(Query_homeSearch_areas) then,
  ) = _CopyWithImpl_Query_homeSearch_areas;

  factory CopyWith_Query_homeSearch_areas.stub(TRes res) =
      _CopyWithStubImpl_Query_homeSearch_areas;

  TRes call({List<Fragment_Area>? results, String? $__typename});
  TRes results(
    Iterable<Fragment_Area>? Function(
      Iterable<CopyWith_Fragment_Area<Fragment_Area>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_homeSearch_areas<TRes>
    implements CopyWith_Query_homeSearch_areas<TRes> {
  _CopyWithImpl_Query_homeSearch_areas(this._instance, this._then);

  final Query_homeSearch_areas _instance;

  final TRes Function(Query_homeSearch_areas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? results = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query_homeSearch_areas(
          results: results == _undefined
              ? _instance.results
              : (results as List<Fragment_Area>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes results(
    Iterable<Fragment_Area>? Function(
      Iterable<CopyWith_Fragment_Area<Fragment_Area>>?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map((e) => CopyWith_Fragment_Area(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Query_homeSearch_areas<TRes>
    implements CopyWith_Query_homeSearch_areas<TRes> {
  _CopyWithStubImpl_Query_homeSearch_areas(this._res);

  TRes _res;

  call({List<Fragment_Area>? results, String? $__typename}) => _res;

  results(_fn) => _res;
}
