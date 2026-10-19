import 'package:gql/ast.dart';

class Fragment_Job {
  Fragment_Job({
    required this.id,
    required this.name,
    this.$__typename = 'Job',
  });

  factory Fragment_Job.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_Job(
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
    if (other is! Fragment_Job || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_Job on Fragment_Job {
  CopyWith_Fragment_Job<Fragment_Job> get copyWith =>
      CopyWith_Fragment_Job(this, (i) => i);
}

abstract class CopyWith_Fragment_Job<TRes> {
  factory CopyWith_Fragment_Job(
    Fragment_Job instance,
    TRes Function(Fragment_Job) then,
  ) = _CopyWithImpl_Fragment_Job;

  factory CopyWith_Fragment_Job.stub(TRes res) = _CopyWithStubImpl_Fragment_Job;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_Job<TRes> implements CopyWith_Fragment_Job<TRes> {
  _CopyWithImpl_Fragment_Job(this._instance, this._then);

  final Fragment_Job _instance;

  final TRes Function(Fragment_Job) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Job(
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

class _CopyWithStubImpl_Fragment_Job<TRes>
    implements CopyWith_Fragment_Job<TRes> {
  _CopyWithStubImpl_Fragment_Job(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

const fragmentDefinitionJob = FragmentDefinitionNode(
  name: NameNode(value: 'Job'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Job'), isNonNull: false),
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
const documentNodeFragmentJob = DocumentNode(
  definitions: [fragmentDefinitionJob],
);
