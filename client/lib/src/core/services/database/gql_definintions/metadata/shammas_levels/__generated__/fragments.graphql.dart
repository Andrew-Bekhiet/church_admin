import 'package:gql/ast.dart';

class Fragment_ShammasLevel {
  Fragment_ShammasLevel({
    required this.id,
    required this.name,
    required this.order,
    this.$__typename = 'ShammasLevel',
  });

  factory Fragment_ShammasLevel.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment_ShammasLevel(
      id: (l$id as String),
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$order, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_ShammasLevel || runtimeType != other.runtimeType) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension_Fragment_ShammasLevel on Fragment_ShammasLevel {
  CopyWith_Fragment_ShammasLevel<Fragment_ShammasLevel> get copyWith =>
      CopyWith_Fragment_ShammasLevel(this, (i) => i);
}

abstract class CopyWith_Fragment_ShammasLevel<TRes> {
  factory CopyWith_Fragment_ShammasLevel(
    Fragment_ShammasLevel instance,
    TRes Function(Fragment_ShammasLevel) then,
  ) = _CopyWithImpl_Fragment_ShammasLevel;

  factory CopyWith_Fragment_ShammasLevel.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ShammasLevel;

  TRes call({String? id, String? name, int? order, String? $__typename});
}

class _CopyWithImpl_Fragment_ShammasLevel<TRes>
    implements CopyWith_Fragment_ShammasLevel<TRes> {
  _CopyWithImpl_Fragment_ShammasLevel(this._instance, this._then);

  final Fragment_ShammasLevel _instance;

  final TRes Function(Fragment_ShammasLevel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_ShammasLevel(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_ShammasLevel<TRes>
    implements CopyWith_Fragment_ShammasLevel<TRes> {
  _CopyWithStubImpl_Fragment_ShammasLevel(this._res);

  TRes _res;

  call({String? id, String? name, int? order, String? $__typename}) => _res;
}

const fragmentDefinitionShammasLevel = FragmentDefinitionNode(
  name: NameNode(value: 'ShammasLevel'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'ShammasLevel'), isNonNull: false),
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
        name: NameNode(value: 'order'),
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
const documentNodeFragmentShammasLevel = DocumentNode(
  definitions: [fragmentDefinitionShammasLevel],
);
