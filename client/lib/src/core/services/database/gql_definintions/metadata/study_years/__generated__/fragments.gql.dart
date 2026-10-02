import 'package:gql/ast.dart';

class Fragment_StudyYear {
  Fragment_StudyYear({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Fragment_StudyYear.fromJson(Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment_StudyYear(
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
    if (other is! Fragment_StudyYear || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Fragment_StudyYear on Fragment_StudyYear {
  CopyWith_Fragment_StudyYear<Fragment_StudyYear> get copyWith =>
      CopyWith_Fragment_StudyYear(this, (i) => i);
}

abstract class CopyWith_Fragment_StudyYear<TRes> {
  factory CopyWith_Fragment_StudyYear(
    Fragment_StudyYear instance,
    TRes Function(Fragment_StudyYear) then,
  ) = _CopyWithImpl_Fragment_StudyYear;

  factory CopyWith_Fragment_StudyYear.stub(TRes res) =
      _CopyWithStubImpl_Fragment_StudyYear;

  TRes call({int? order, String? name, String? $__typename});
}

class _CopyWithImpl_Fragment_StudyYear<TRes>
    implements CopyWith_Fragment_StudyYear<TRes> {
  _CopyWithImpl_Fragment_StudyYear(this._instance, this._then);

  final Fragment_StudyYear _instance;

  final TRes Function(Fragment_StudyYear) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_StudyYear(
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

class _CopyWithStubImpl_Fragment_StudyYear<TRes>
    implements CopyWith_Fragment_StudyYear<TRes> {
  _CopyWithStubImpl_Fragment_StudyYear(this._res);

  TRes _res;

  call({int? order, String? name, String? $__typename}) => _res;
}

const fragmentDefinitionStudyYear = FragmentDefinitionNode(
  name: NameNode(value: 'StudyYear'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'StudyYears'), isNonNull: false),
  ),
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
);
const documentNodeFragmentStudyYear = DocumentNode(
  definitions: [fragmentDefinitionStudyYear],
);
