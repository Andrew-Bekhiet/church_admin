import 'package:gql/ast.dart';

class Fragment_District {
  Fragment_District({
    required this.id,
    required this.name,
    this.$__typename = 'District',
  });

  factory Fragment_District.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_District(
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
    if (other is! Fragment_District || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_District on Fragment_District {
  CopyWith_Fragment_District<Fragment_District> get copyWith =>
      CopyWith_Fragment_District(this, (i) => i);
}

abstract class CopyWith_Fragment_District<TRes> {
  factory CopyWith_Fragment_District(
    Fragment_District instance,
    TRes Function(Fragment_District) then,
  ) = _CopyWithImpl_Fragment_District;

  factory CopyWith_Fragment_District.stub(TRes res) =
      _CopyWithStubImpl_Fragment_District;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_District<TRes>
    implements CopyWith_Fragment_District<TRes> {
  _CopyWithImpl_Fragment_District(this._instance, this._then);

  final Fragment_District _instance;

  final TRes Function(Fragment_District) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_District(
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

class _CopyWithStubImpl_Fragment_District<TRes>
    implements CopyWith_Fragment_District<TRes> {
  _CopyWithStubImpl_Fragment_District(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

const fragmentDefinitionDistrict = FragmentDefinitionNode(
  name: NameNode(value: 'District'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'District'), isNonNull: false),
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
const documentNodeFragmentDistrict = DocumentNode(
  definitions: [fragmentDefinitionDistrict],
);
