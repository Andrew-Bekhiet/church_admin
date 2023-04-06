import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$deleteArea {
  factory Variables$Mutation$deleteArea({required UuidValue areaId}) =>
      Variables$Mutation$deleteArea._({
        r'areaId': areaId,
      });

  Variables$Mutation$deleteArea._(this._$data);

  factory Variables$Mutation$deleteArea.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$areaId = data['areaId'];
    result$data['areaId'] = stringToUuid(l$areaId);
    return Variables$Mutation$deleteArea._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get areaId => (_$data['areaId'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$areaId = areaId;
    result$data['areaId'] = uuidToString(l$areaId);
    return result$data;
  }

  CopyWith$Variables$Mutation$deleteArea<Variables$Mutation$deleteArea>
      get copyWith => CopyWith$Variables$Mutation$deleteArea(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$deleteArea) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (l$areaId != lOther$areaId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$areaId = areaId;
    return Object.hashAll([l$areaId]);
  }
}

abstract class CopyWith$Variables$Mutation$deleteArea<TRes> {
  factory CopyWith$Variables$Mutation$deleteArea(
    Variables$Mutation$deleteArea instance,
    TRes Function(Variables$Mutation$deleteArea) then,
  ) = _CopyWithImpl$Variables$Mutation$deleteArea;

  factory CopyWith$Variables$Mutation$deleteArea.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$deleteArea;

  TRes call({UuidValue? areaId});
}

class _CopyWithImpl$Variables$Mutation$deleteArea<TRes>
    implements CopyWith$Variables$Mutation$deleteArea<TRes> {
  _CopyWithImpl$Variables$Mutation$deleteArea(
    this._instance,
    this._then,
  );

  final Variables$Mutation$deleteArea _instance;

  final TRes Function(Variables$Mutation$deleteArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? areaId = _undefined}) =>
      _then(Variables$Mutation$deleteArea._({
        ..._instance._$data,
        if (areaId != _undefined && areaId != null)
          'areaId': (areaId as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$deleteArea<TRes>
    implements CopyWith$Variables$Mutation$deleteArea<TRes> {
  _CopyWithStubImpl$Variables$Mutation$deleteArea(this._res);

  TRes _res;

  call({UuidValue? areaId}) => _res;
}

class Mutation$deleteArea {
  Mutation$deleteArea({
    this.deleteAreas,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$deleteArea.fromJson(Map<String, dynamic> json) {
    final l$deleteAreas = json['deleteAreas'];
    final l$$__typename = json['__typename'];
    return Mutation$deleteArea(
      deleteAreas: l$deleteAreas == null
          ? null
          : Mutation$deleteArea$deleteAreas.fromJson(
              (l$deleteAreas as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$deleteArea$deleteAreas? deleteAreas;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAreas = deleteAreas;
    _resultData['deleteAreas'] = l$deleteAreas?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAreas = deleteAreas;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteAreas,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$deleteArea) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAreas = deleteAreas;
    final lOther$deleteAreas = other.deleteAreas;
    if (l$deleteAreas != lOther$deleteAreas) {
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

extension UtilityExtension$Mutation$deleteArea on Mutation$deleteArea {
  CopyWith$Mutation$deleteArea<Mutation$deleteArea> get copyWith =>
      CopyWith$Mutation$deleteArea(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$deleteArea<TRes> {
  factory CopyWith$Mutation$deleteArea(
    Mutation$deleteArea instance,
    TRes Function(Mutation$deleteArea) then,
  ) = _CopyWithImpl$Mutation$deleteArea;

  factory CopyWith$Mutation$deleteArea.stub(TRes res) =
      _CopyWithStubImpl$Mutation$deleteArea;

  TRes call({
    Mutation$deleteArea$deleteAreas? deleteAreas,
    String? $__typename,
  });
  CopyWith$Mutation$deleteArea$deleteAreas<TRes> get deleteAreas;
}

class _CopyWithImpl$Mutation$deleteArea<TRes>
    implements CopyWith$Mutation$deleteArea<TRes> {
  _CopyWithImpl$Mutation$deleteArea(
    this._instance,
    this._then,
  );

  final Mutation$deleteArea _instance;

  final TRes Function(Mutation$deleteArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAreas = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deleteArea(
        deleteAreas: deleteAreas == _undefined
            ? _instance.deleteAreas
            : (deleteAreas as Mutation$deleteArea$deleteAreas?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$deleteArea$deleteAreas<TRes> get deleteAreas {
    final local$deleteAreas = _instance.deleteAreas;
    return local$deleteAreas == null
        ? CopyWith$Mutation$deleteArea$deleteAreas.stub(_then(_instance))
        : CopyWith$Mutation$deleteArea$deleteAreas(
            local$deleteAreas, (e) => call(deleteAreas: e));
  }
}

class _CopyWithStubImpl$Mutation$deleteArea<TRes>
    implements CopyWith$Mutation$deleteArea<TRes> {
  _CopyWithStubImpl$Mutation$deleteArea(this._res);

  TRes _res;

  call({
    Mutation$deleteArea$deleteAreas? deleteAreas,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$deleteArea$deleteAreas<TRes> get deleteAreas =>
      CopyWith$Mutation$deleteArea$deleteAreas.stub(_res);
}

const documentNodeMutationdeleteArea = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deleteArea'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'areaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteAreas'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'areaId')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'returning'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
]);

class Mutation$deleteArea$deleteAreas {
  Mutation$deleteArea$deleteAreas({
    required this.returning,
    this.$__typename = 'AreasMutationResponse',
  });

  factory Mutation$deleteArea$deleteAreas.fromJson(Map<String, dynamic> json) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$deleteArea$deleteAreas(
      returning: (l$returning as List<dynamic>)
          .map((e) => Fragment$Area.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Area> returning;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$returning = returning;
    _resultData['returning'] = l$returning.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$returning = returning;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$returning.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$deleteArea$deleteAreas) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$returning = returning;
    final lOther$returning = other.returning;
    if (l$returning.length != lOther$returning.length) {
      return false;
    }
    for (int i = 0; i < l$returning.length; i++) {
      final l$returning$entry = l$returning[i];
      final lOther$returning$entry = lOther$returning[i];
      if (l$returning$entry != lOther$returning$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$deleteArea$deleteAreas
    on Mutation$deleteArea$deleteAreas {
  CopyWith$Mutation$deleteArea$deleteAreas<Mutation$deleteArea$deleteAreas>
      get copyWith => CopyWith$Mutation$deleteArea$deleteAreas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$deleteArea$deleteAreas<TRes> {
  factory CopyWith$Mutation$deleteArea$deleteAreas(
    Mutation$deleteArea$deleteAreas instance,
    TRes Function(Mutation$deleteArea$deleteAreas) then,
  ) = _CopyWithImpl$Mutation$deleteArea$deleteAreas;

  factory CopyWith$Mutation$deleteArea$deleteAreas.stub(TRes res) =
      _CopyWithStubImpl$Mutation$deleteArea$deleteAreas;

  TRes call({
    List<Fragment$Area>? returning,
    String? $__typename,
  });
  TRes returning(
      Iterable<Fragment$Area> Function(
              Iterable<CopyWith$Fragment$Area<Fragment$Area>>)
          _fn);
}

class _CopyWithImpl$Mutation$deleteArea$deleteAreas<TRes>
    implements CopyWith$Mutation$deleteArea$deleteAreas<TRes> {
  _CopyWithImpl$Mutation$deleteArea$deleteAreas(
    this._instance,
    this._then,
  );

  final Mutation$deleteArea$deleteAreas _instance;

  final TRes Function(Mutation$deleteArea$deleteAreas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deleteArea$deleteAreas(
        returning: returning == _undefined || returning == null
            ? _instance.returning
            : (returning as List<Fragment$Area>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes returning(
          Iterable<Fragment$Area> Function(
                  Iterable<CopyWith$Fragment$Area<Fragment$Area>>)
              _fn) =>
      call(
          returning: _fn(_instance.returning.map((e) => CopyWith$Fragment$Area(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$deleteArea$deleteAreas<TRes>
    implements CopyWith$Mutation$deleteArea$deleteAreas<TRes> {
  _CopyWithStubImpl$Mutation$deleteArea$deleteAreas(this._res);

  TRes _res;

  call({
    List<Fragment$Area>? returning,
    String? $__typename,
  }) =>
      _res;
  returning(_fn) => _res;
}

class Variables$Mutation$insertArea {
  factory Variables$Mutation$insertArea(
          {required Input$AreasInsertInput newArea}) =>
      Variables$Mutation$insertArea._({
        r'newArea': newArea,
      });

  Variables$Mutation$insertArea._(this._$data);

  factory Variables$Mutation$insertArea.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newArea = data['newArea'];
    result$data['newArea'] =
        Input$AreasInsertInput.fromJson((l$newArea as Map<String, dynamic>));
    return Variables$Mutation$insertArea._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AreasInsertInput get newArea =>
      (_$data['newArea'] as Input$AreasInsertInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newArea = newArea;
    result$data['newArea'] = l$newArea.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$insertArea<Variables$Mutation$insertArea>
      get copyWith => CopyWith$Variables$Mutation$insertArea(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$insertArea) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newArea = newArea;
    final lOther$newArea = other.newArea;
    if (l$newArea != lOther$newArea) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$newArea = newArea;
    return Object.hashAll([l$newArea]);
  }
}

abstract class CopyWith$Variables$Mutation$insertArea<TRes> {
  factory CopyWith$Variables$Mutation$insertArea(
    Variables$Mutation$insertArea instance,
    TRes Function(Variables$Mutation$insertArea) then,
  ) = _CopyWithImpl$Variables$Mutation$insertArea;

  factory CopyWith$Variables$Mutation$insertArea.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$insertArea;

  TRes call({Input$AreasInsertInput? newArea});
}

class _CopyWithImpl$Variables$Mutation$insertArea<TRes>
    implements CopyWith$Variables$Mutation$insertArea<TRes> {
  _CopyWithImpl$Variables$Mutation$insertArea(
    this._instance,
    this._then,
  );

  final Variables$Mutation$insertArea _instance;

  final TRes Function(Variables$Mutation$insertArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newArea = _undefined}) =>
      _then(Variables$Mutation$insertArea._({
        ..._instance._$data,
        if (newArea != _undefined && newArea != null)
          'newArea': (newArea as Input$AreasInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$insertArea<TRes>
    implements CopyWith$Variables$Mutation$insertArea<TRes> {
  _CopyWithStubImpl$Variables$Mutation$insertArea(this._res);

  TRes _res;

  call({Input$AreasInsertInput? newArea}) => _res;
}

class Mutation$insertArea {
  Mutation$insertArea({
    this.insertAreasOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$insertArea.fromJson(Map<String, dynamic> json) {
    final l$insertAreasOne = json['insertAreasOne'];
    final l$$__typename = json['__typename'];
    return Mutation$insertArea(
      insertAreasOne: l$insertAreasOne == null
          ? null
          : Fragment$Area.fromJson((l$insertAreasOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Area? insertAreasOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertAreasOne = insertAreasOne;
    _resultData['insertAreasOne'] = l$insertAreasOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertAreasOne = insertAreasOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertAreasOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$insertArea) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertAreasOne = insertAreasOne;
    final lOther$insertAreasOne = other.insertAreasOne;
    if (l$insertAreasOne != lOther$insertAreasOne) {
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

extension UtilityExtension$Mutation$insertArea on Mutation$insertArea {
  CopyWith$Mutation$insertArea<Mutation$insertArea> get copyWith =>
      CopyWith$Mutation$insertArea(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$insertArea<TRes> {
  factory CopyWith$Mutation$insertArea(
    Mutation$insertArea instance,
    TRes Function(Mutation$insertArea) then,
  ) = _CopyWithImpl$Mutation$insertArea;

  factory CopyWith$Mutation$insertArea.stub(TRes res) =
      _CopyWithStubImpl$Mutation$insertArea;

  TRes call({
    Fragment$Area? insertAreasOne,
    String? $__typename,
  });
  CopyWith$Fragment$Area<TRes> get insertAreasOne;
}

class _CopyWithImpl$Mutation$insertArea<TRes>
    implements CopyWith$Mutation$insertArea<TRes> {
  _CopyWithImpl$Mutation$insertArea(
    this._instance,
    this._then,
  );

  final Mutation$insertArea _instance;

  final TRes Function(Mutation$insertArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertAreasOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$insertArea(
        insertAreasOne: insertAreasOne == _undefined
            ? _instance.insertAreasOne
            : (insertAreasOne as Fragment$Area?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Area<TRes> get insertAreasOne {
    final local$insertAreasOne = _instance.insertAreasOne;
    return local$insertAreasOne == null
        ? CopyWith$Fragment$Area.stub(_then(_instance))
        : CopyWith$Fragment$Area(
            local$insertAreasOne, (e) => call(insertAreasOne: e));
  }
}

class _CopyWithStubImpl$Mutation$insertArea<TRes>
    implements CopyWith$Mutation$insertArea<TRes> {
  _CopyWithStubImpl$Mutation$insertArea(this._res);

  TRes _res;

  call({
    Fragment$Area? insertAreasOne,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Area<TRes> get insertAreasOne =>
      CopyWith$Fragment$Area.stub(_res);
}

const documentNodeMutationinsertArea = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'insertArea'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newArea')),
        type: NamedTypeNode(
          name: NameNode(value: 'AreasInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertAreasOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: VariableNode(name: NameNode(value: 'newArea')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
]);

class Variables$Mutation$updateArea {
  factory Variables$Mutation$updateArea({
    required UuidValue areaId,
    required Input$AreasSetInput newArea,
  }) =>
      Variables$Mutation$updateArea._({
        r'areaId': areaId,
        r'newArea': newArea,
      });

  Variables$Mutation$updateArea._(this._$data);

  factory Variables$Mutation$updateArea.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$areaId = data['areaId'];
    result$data['areaId'] = stringToUuid(l$areaId);
    final l$newArea = data['newArea'];
    result$data['newArea'] =
        Input$AreasSetInput.fromJson((l$newArea as Map<String, dynamic>));
    return Variables$Mutation$updateArea._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get areaId => (_$data['areaId'] as UuidValue);
  Input$AreasSetInput get newArea => (_$data['newArea'] as Input$AreasSetInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$areaId = areaId;
    result$data['areaId'] = uuidToString(l$areaId);
    final l$newArea = newArea;
    result$data['newArea'] = l$newArea.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateArea<Variables$Mutation$updateArea>
      get copyWith => CopyWith$Variables$Mutation$updateArea(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updateArea) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (l$areaId != lOther$areaId) {
      return false;
    }
    final l$newArea = newArea;
    final lOther$newArea = other.newArea;
    if (l$newArea != lOther$newArea) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$areaId = areaId;
    final l$newArea = newArea;
    return Object.hashAll([
      l$areaId,
      l$newArea,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updateArea<TRes> {
  factory CopyWith$Variables$Mutation$updateArea(
    Variables$Mutation$updateArea instance,
    TRes Function(Variables$Mutation$updateArea) then,
  ) = _CopyWithImpl$Variables$Mutation$updateArea;

  factory CopyWith$Variables$Mutation$updateArea.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateArea;

  TRes call({
    UuidValue? areaId,
    Input$AreasSetInput? newArea,
  });
}

class _CopyWithImpl$Variables$Mutation$updateArea<TRes>
    implements CopyWith$Variables$Mutation$updateArea<TRes> {
  _CopyWithImpl$Variables$Mutation$updateArea(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateArea _instance;

  final TRes Function(Variables$Mutation$updateArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? areaId = _undefined,
    Object? newArea = _undefined,
  }) =>
      _then(Variables$Mutation$updateArea._({
        ..._instance._$data,
        if (areaId != _undefined && areaId != null)
          'areaId': (areaId as UuidValue),
        if (newArea != _undefined && newArea != null)
          'newArea': (newArea as Input$AreasSetInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateArea<TRes>
    implements CopyWith$Variables$Mutation$updateArea<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateArea(this._res);

  TRes _res;

  call({
    UuidValue? areaId,
    Input$AreasSetInput? newArea,
  }) =>
      _res;
}

class Mutation$updateArea {
  Mutation$updateArea({
    this.updateAreasByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$updateArea.fromJson(Map<String, dynamic> json) {
    final l$updateAreasByPk = json['updateAreasByPk'];
    final l$$__typename = json['__typename'];
    return Mutation$updateArea(
      updateAreasByPk: l$updateAreasByPk == null
          ? null
          : Fragment$Area.fromJson((l$updateAreasByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Area? updateAreasByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAreasByPk = updateAreasByPk;
    _resultData['updateAreasByPk'] = l$updateAreasByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAreasByPk = updateAreasByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateAreasByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updateArea) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAreasByPk = updateAreasByPk;
    final lOther$updateAreasByPk = other.updateAreasByPk;
    if (l$updateAreasByPk != lOther$updateAreasByPk) {
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

extension UtilityExtension$Mutation$updateArea on Mutation$updateArea {
  CopyWith$Mutation$updateArea<Mutation$updateArea> get copyWith =>
      CopyWith$Mutation$updateArea(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updateArea<TRes> {
  factory CopyWith$Mutation$updateArea(
    Mutation$updateArea instance,
    TRes Function(Mutation$updateArea) then,
  ) = _CopyWithImpl$Mutation$updateArea;

  factory CopyWith$Mutation$updateArea.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateArea;

  TRes call({
    Fragment$Area? updateAreasByPk,
    String? $__typename,
  });
  CopyWith$Fragment$Area<TRes> get updateAreasByPk;
}

class _CopyWithImpl$Mutation$updateArea<TRes>
    implements CopyWith$Mutation$updateArea<TRes> {
  _CopyWithImpl$Mutation$updateArea(
    this._instance,
    this._then,
  );

  final Mutation$updateArea _instance;

  final TRes Function(Mutation$updateArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAreasByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateArea(
        updateAreasByPk: updateAreasByPk == _undefined
            ? _instance.updateAreasByPk
            : (updateAreasByPk as Fragment$Area?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Area<TRes> get updateAreasByPk {
    final local$updateAreasByPk = _instance.updateAreasByPk;
    return local$updateAreasByPk == null
        ? CopyWith$Fragment$Area.stub(_then(_instance))
        : CopyWith$Fragment$Area(
            local$updateAreasByPk, (e) => call(updateAreasByPk: e));
  }
}

class _CopyWithStubImpl$Mutation$updateArea<TRes>
    implements CopyWith$Mutation$updateArea<TRes> {
  _CopyWithStubImpl$Mutation$updateArea(this._res);

  TRes _res;

  call({
    Fragment$Area? updateAreasByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Area<TRes> get updateAreasByPk =>
      CopyWith$Fragment$Area.stub(_res);
}

const documentNodeMutationupdateArea = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateArea'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'areaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newArea')),
        type: NamedTypeNode(
          name: NameNode(value: 'AreasSetInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateAreasByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'pk_columns'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'areaId')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: '_set'),
            value: VariableNode(name: NameNode(value: 'newArea')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
]);
