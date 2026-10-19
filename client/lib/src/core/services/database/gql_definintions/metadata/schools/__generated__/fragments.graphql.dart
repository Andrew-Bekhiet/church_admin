import 'package:gql/ast.dart';

class Fragment_School {
  Fragment_School({
    required this.id,
    required this.name,
    this.$__typename = 'School',
  });

  factory Fragment_School.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_School(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_School || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Fragment_School on Fragment_School {
  CopyWith_Fragment_School<Fragment_School> get copyWith =>
      CopyWith_Fragment_School(this, (i) => i);
}

abstract class CopyWith_Fragment_School<TRes> {
  factory CopyWith_Fragment_School(
    Fragment_School instance,
    TRes Function(Fragment_School) then,
  ) = _CopyWithImpl_Fragment_School;

  factory CopyWith_Fragment_School.stub(TRes res) =
      _CopyWithStubImpl_Fragment_School;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_School<TRes>
    implements CopyWith_Fragment_School<TRes> {
  _CopyWithImpl_Fragment_School(this._instance, this._then);

  final Fragment_School _instance;

  final TRes Function(Fragment_School) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_School(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_School<TRes>
    implements CopyWith_Fragment_School<TRes> {
  _CopyWithStubImpl_Fragment_School(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

const fragmentDefinitionSchool = FragmentDefinitionNode(
  name: NameNode(value: 'School'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'School'), isNonNull: false),
  ),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentSchool = DocumentNode(
  definitions: [fragmentDefinitionSchool],
);
