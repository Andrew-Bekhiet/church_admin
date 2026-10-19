import 'package:gql/ast.dart';

class Fragment_PersonType {
  Fragment_PersonType({
    required this.id,
    required this.name,
    required this.order,
    required this.isFamilyAdmin,
    required this.isHidden,
    this.$__typename = 'PersonType',
  });

  factory Fragment_PersonType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$isFamilyAdmin = json['isFamilyAdmin'];
    final l$isHidden = json['isHidden'];
    final l$$__typename = json['__typename'];
    return Fragment_PersonType(
      id: (l$id as String),
      name: (l$name as String),
      order: (l$order as int),
      isFamilyAdmin: (l$isFamilyAdmin as bool),
      isHidden: (l$isHidden as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int order;

  final bool isFamilyAdmin;

  final bool isHidden;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$isFamilyAdmin = isFamilyAdmin;
    _resultData['isFamilyAdmin'] = l$isFamilyAdmin;
    final l$isHidden = isHidden;
    _resultData['isHidden'] = l$isHidden;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$order = order;
    final l$isFamilyAdmin = isFamilyAdmin;
    final l$isHidden = isHidden;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$order,
      l$isFamilyAdmin,
      l$isHidden,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_PersonType || runtimeType != other.runtimeType) {
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
    final l$isFamilyAdmin = isFamilyAdmin;
    final lOther$isFamilyAdmin = other.isFamilyAdmin;
    if (l$isFamilyAdmin != lOther$isFamilyAdmin) {
      return false;
    }
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (l$isHidden != lOther$isHidden) {
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

extension UtilityExtension_Fragment_PersonType on Fragment_PersonType {
  CopyWith_Fragment_PersonType<Fragment_PersonType> get copyWith =>
      CopyWith_Fragment_PersonType(this, (i) => i);
}

abstract class CopyWith_Fragment_PersonType<TRes> {
  factory CopyWith_Fragment_PersonType(
    Fragment_PersonType instance,
    TRes Function(Fragment_PersonType) then,
  ) = _CopyWithImpl_Fragment_PersonType;

  factory CopyWith_Fragment_PersonType.stub(TRes res) =
      _CopyWithStubImpl_Fragment_PersonType;

  TRes call({
    String? id,
    String? name,
    int? order,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_PersonType<TRes>
    implements CopyWith_Fragment_PersonType<TRes> {
  _CopyWithImpl_Fragment_PersonType(this._instance, this._then);

  final Fragment_PersonType _instance;

  final TRes Function(Fragment_PersonType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? isFamilyAdmin = _undefined,
    Object? isHidden = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_PersonType(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      isFamilyAdmin: isFamilyAdmin == _undefined || isFamilyAdmin == null
          ? _instance.isFamilyAdmin
          : (isFamilyAdmin as bool),
      isHidden: isHidden == _undefined || isHidden == null
          ? _instance.isHidden
          : (isHidden as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_PersonType<TRes>
    implements CopyWith_Fragment_PersonType<TRes> {
  _CopyWithStubImpl_Fragment_PersonType(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? order,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionPersonType = FragmentDefinitionNode(
  name: NameNode(value: 'PersonType'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'PersonType'), isNonNull: false),
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
        name: NameNode(value: 'isFamilyAdmin'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isHidden'),
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
const documentNodeFragmentPersonType = DocumentNode(
  definitions: [fragmentDefinitionPersonType],
);
