import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_deleteArea {
  factory Variables_Mutation_deleteArea({required UuidValue areaId}) =>
      Variables_Mutation_deleteArea._({
        r'areaId': areaId,
      });

  Variables_Mutation_deleteArea._(this._$data);

  factory Variables_Mutation_deleteArea.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$areaId = data['areaId'];
    result$data['areaId'] = stringToUuid(l$areaId);
    return Variables_Mutation_deleteArea._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get areaId => (_$data['areaId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$areaId = areaId;
    result$data['areaId'] = uuidToString(l$areaId);
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteArea<Variables_Mutation_deleteArea>
      get copyWith => CopyWith_Variables_Mutation_deleteArea(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteArea ||
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

abstract class CopyWith_Variables_Mutation_deleteArea<TRes> {
  factory CopyWith_Variables_Mutation_deleteArea(
    Variables_Mutation_deleteArea instance,
    TRes Function(Variables_Mutation_deleteArea) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteArea;

  factory CopyWith_Variables_Mutation_deleteArea.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteArea;

  TRes call({UuidValue? areaId});
}

class _CopyWithImpl_Variables_Mutation_deleteArea<TRes>
    implements CopyWith_Variables_Mutation_deleteArea<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteArea(
    this._instance,
    this._then,
  );

  final Variables_Mutation_deleteArea _instance;

  final TRes Function(Variables_Mutation_deleteArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? areaId = _undefined}) =>
      _then(Variables_Mutation_deleteArea._({
        ..._instance._$data,
        if (areaId != _undefined && areaId != null)
          'areaId': (areaId as UuidValue),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_deleteArea<TRes>
    implements CopyWith_Variables_Mutation_deleteArea<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteArea(this._res);

  TRes _res;

  call({UuidValue? areaId}) => _res;
}

class Mutation_deleteArea {
  Mutation_deleteArea({
    this.deleteAreasByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_deleteArea.fromJson(Map<String, dynamic> json) {
    final l$deleteAreasByPk = json['deleteAreasByPk'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteArea(
      deleteAreasByPk: l$deleteAreasByPk == null
          ? null
          : Fragment_Area.fromJson((l$deleteAreasByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Area? deleteAreasByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAreasByPk = deleteAreasByPk;
    _resultData['deleteAreasByPk'] = l$deleteAreasByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAreasByPk = deleteAreasByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteAreasByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteArea || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAreasByPk = deleteAreasByPk;
    final lOther$deleteAreasByPk = other.deleteAreasByPk;
    if (l$deleteAreasByPk != lOther$deleteAreasByPk) {
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

extension UtilityExtension_Mutation_deleteArea on Mutation_deleteArea {
  CopyWith_Mutation_deleteArea<Mutation_deleteArea> get copyWith =>
      CopyWith_Mutation_deleteArea(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_deleteArea<TRes> {
  factory CopyWith_Mutation_deleteArea(
    Mutation_deleteArea instance,
    TRes Function(Mutation_deleteArea) then,
  ) = _CopyWithImpl_Mutation_deleteArea;

  factory CopyWith_Mutation_deleteArea.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteArea;

  TRes call({
    Fragment_Area? deleteAreasByPk,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get deleteAreasByPk;
}

class _CopyWithImpl_Mutation_deleteArea<TRes>
    implements CopyWith_Mutation_deleteArea<TRes> {
  _CopyWithImpl_Mutation_deleteArea(
    this._instance,
    this._then,
  );

  final Mutation_deleteArea _instance;

  final TRes Function(Mutation_deleteArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAreasByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_deleteArea(
        deleteAreasByPk: deleteAreasByPk == _undefined
            ? _instance.deleteAreasByPk
            : (deleteAreasByPk as Fragment_Area?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Area<TRes> get deleteAreasByPk {
    final local$deleteAreasByPk = _instance.deleteAreasByPk;
    return local$deleteAreasByPk == null
        ? CopyWith_Fragment_Area.stub(_then(_instance))
        : CopyWith_Fragment_Area(
            local$deleteAreasByPk, (e) => call(deleteAreasByPk: e));
  }
}

class _CopyWithStubImpl_Mutation_deleteArea<TRes>
    implements CopyWith_Mutation_deleteArea<TRes> {
  _CopyWithStubImpl_Mutation_deleteArea(this._res);

  TRes _res;

  call({
    Fragment_Area? deleteAreasByPk,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Area<TRes> get deleteAreasByPk =>
      CopyWith_Fragment_Area.stub(_res);
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
        name: NameNode(value: 'deleteAreasByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'areaId')),
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

class Variables_Mutation_insertArea {
  factory Variables_Mutation_insertArea(
          {required Input_AreasInsertInput newArea}) =>
      Variables_Mutation_insertArea._({
        r'newArea': newArea,
      });

  Variables_Mutation_insertArea._(this._$data);

  factory Variables_Mutation_insertArea.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$newArea = data['newArea'];
    result$data['newArea'] =
        Input_AreasInsertInput.fromJson((l$newArea as Map<String, dynamic>));
    return Variables_Mutation_insertArea._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AreasInsertInput get newArea =>
      (_$data['newArea'] as Input_AreasInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$newArea = newArea;
    result$data['newArea'] = l$newArea.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_insertArea<Variables_Mutation_insertArea>
      get copyWith => CopyWith_Variables_Mutation_insertArea(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertArea ||
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

abstract class CopyWith_Variables_Mutation_insertArea<TRes> {
  factory CopyWith_Variables_Mutation_insertArea(
    Variables_Mutation_insertArea instance,
    TRes Function(Variables_Mutation_insertArea) then,
  ) = _CopyWithImpl_Variables_Mutation_insertArea;

  factory CopyWith_Variables_Mutation_insertArea.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertArea;

  TRes call({Input_AreasInsertInput? newArea});
}

class _CopyWithImpl_Variables_Mutation_insertArea<TRes>
    implements CopyWith_Variables_Mutation_insertArea<TRes> {
  _CopyWithImpl_Variables_Mutation_insertArea(
    this._instance,
    this._then,
  );

  final Variables_Mutation_insertArea _instance;

  final TRes Function(Variables_Mutation_insertArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newArea = _undefined}) =>
      _then(Variables_Mutation_insertArea._({
        ..._instance._$data,
        if (newArea != _undefined && newArea != null)
          'newArea': (newArea as Input_AreasInsertInput),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_insertArea<TRes>
    implements CopyWith_Variables_Mutation_insertArea<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertArea(this._res);

  TRes _res;

  call({Input_AreasInsertInput? newArea}) => _res;
}

class Mutation_insertArea {
  Mutation_insertArea({
    this.insertAreasOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertArea.fromJson(Map<String, dynamic> json) {
    final l$insertAreasOne = json['insertAreasOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertArea(
      insertAreasOne: l$insertAreasOne == null
          ? null
          : Fragment_Area.fromJson((l$insertAreasOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Area? insertAreasOne;

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
    if (other is! Mutation_insertArea || runtimeType != other.runtimeType) {
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

extension UtilityExtension_Mutation_insertArea on Mutation_insertArea {
  CopyWith_Mutation_insertArea<Mutation_insertArea> get copyWith =>
      CopyWith_Mutation_insertArea(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_insertArea<TRes> {
  factory CopyWith_Mutation_insertArea(
    Mutation_insertArea instance,
    TRes Function(Mutation_insertArea) then,
  ) = _CopyWithImpl_Mutation_insertArea;

  factory CopyWith_Mutation_insertArea.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertArea;

  TRes call({
    Fragment_Area? insertAreasOne,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get insertAreasOne;
}

class _CopyWithImpl_Mutation_insertArea<TRes>
    implements CopyWith_Mutation_insertArea<TRes> {
  _CopyWithImpl_Mutation_insertArea(
    this._instance,
    this._then,
  );

  final Mutation_insertArea _instance;

  final TRes Function(Mutation_insertArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertAreasOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_insertArea(
        insertAreasOne: insertAreasOne == _undefined
            ? _instance.insertAreasOne
            : (insertAreasOne as Fragment_Area?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Area<TRes> get insertAreasOne {
    final local$insertAreasOne = _instance.insertAreasOne;
    return local$insertAreasOne == null
        ? CopyWith_Fragment_Area.stub(_then(_instance))
        : CopyWith_Fragment_Area(
            local$insertAreasOne, (e) => call(insertAreasOne: e));
  }
}

class _CopyWithStubImpl_Mutation_insertArea<TRes>
    implements CopyWith_Mutation_insertArea<TRes> {
  _CopyWithStubImpl_Mutation_insertArea(this._res);

  TRes _res;

  call({
    Fragment_Area? insertAreasOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Area<TRes> get insertAreasOne =>
      CopyWith_Fragment_Area.stub(_res);
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

class Variables_Mutation_updateArea {
  factory Variables_Mutation_updateArea({
    required UuidValue areaId,
    required Input_AreasSetInput newArea,
    DateTime? lastVisit,
    required bool updateLastVisit,
  }) =>
      Variables_Mutation_updateArea._({
        r'areaId': areaId,
        r'newArea': newArea,
        if (lastVisit != null) r'lastVisit': lastVisit,
        r'updateLastVisit': updateLastVisit,
      });

  Variables_Mutation_updateArea._(this._$data);

  factory Variables_Mutation_updateArea.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$areaId = data['areaId'];
    result$data['areaId'] = stringToUuid(l$areaId);
    final l$newArea = data['newArea'];
    result$data['newArea'] =
        Input_AreasSetInput.fromJson((l$newArea as Map<String, dynamic>));
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] =
          l$lastVisit == null ? null : tstzFromString(l$lastVisit);
    }
    final l$updateLastVisit = data['updateLastVisit'];
    result$data['updateLastVisit'] = (l$updateLastVisit as bool);
    return Variables_Mutation_updateArea._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get areaId => (_$data['areaId'] as UuidValue);

  Input_AreasSetInput get newArea => (_$data['newArea'] as Input_AreasSetInput);

  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);

  bool get updateLastVisit => (_$data['updateLastVisit'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$areaId = areaId;
    result$data['areaId'] = uuidToString(l$areaId);
    final l$newArea = newArea;
    result$data['newArea'] = l$newArea.toJson();
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] =
          l$lastVisit == null ? null : tstzToString(l$lastVisit);
    }
    final l$updateLastVisit = updateLastVisit;
    result$data['updateLastVisit'] = l$updateLastVisit;
    return result$data;
  }

  CopyWith_Variables_Mutation_updateArea<Variables_Mutation_updateArea>
      get copyWith => CopyWith_Variables_Mutation_updateArea(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateArea ||
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
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    final l$updateLastVisit = updateLastVisit;
    final lOther$updateLastVisit = other.updateLastVisit;
    if (l$updateLastVisit != lOther$updateLastVisit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$areaId = areaId;
    final l$newArea = newArea;
    final l$lastVisit = lastVisit;
    final l$updateLastVisit = updateLastVisit;
    return Object.hashAll([
      l$areaId,
      l$newArea,
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
      l$updateLastVisit,
    ]);
  }
}

abstract class CopyWith_Variables_Mutation_updateArea<TRes> {
  factory CopyWith_Variables_Mutation_updateArea(
    Variables_Mutation_updateArea instance,
    TRes Function(Variables_Mutation_updateArea) then,
  ) = _CopyWithImpl_Variables_Mutation_updateArea;

  factory CopyWith_Variables_Mutation_updateArea.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateArea;

  TRes call({
    UuidValue? areaId,
    Input_AreasSetInput? newArea,
    DateTime? lastVisit,
    bool? updateLastVisit,
  });
}

class _CopyWithImpl_Variables_Mutation_updateArea<TRes>
    implements CopyWith_Variables_Mutation_updateArea<TRes> {
  _CopyWithImpl_Variables_Mutation_updateArea(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updateArea _instance;

  final TRes Function(Variables_Mutation_updateArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? areaId = _undefined,
    Object? newArea = _undefined,
    Object? lastVisit = _undefined,
    Object? updateLastVisit = _undefined,
  }) =>
      _then(Variables_Mutation_updateArea._({
        ..._instance._$data,
        if (areaId != _undefined && areaId != null)
          'areaId': (areaId as UuidValue),
        if (newArea != _undefined && newArea != null)
          'newArea': (newArea as Input_AreasSetInput),
        if (lastVisit != _undefined) 'lastVisit': (lastVisit as DateTime?),
        if (updateLastVisit != _undefined && updateLastVisit != null)
          'updateLastVisit': (updateLastVisit as bool),
      }));
}

class _CopyWithStubImpl_Variables_Mutation_updateArea<TRes>
    implements CopyWith_Variables_Mutation_updateArea<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateArea(this._res);

  TRes _res;

  call({
    UuidValue? areaId,
    Input_AreasSetInput? newArea,
    DateTime? lastVisit,
    bool? updateLastVisit,
  }) =>
      _res;
}

class Mutation_updateArea {
  Mutation_updateArea({
    this.updateAreasByPk,
    this.insertHistoryVisitHistoryOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_updateArea.fromJson(Map<String, dynamic> json) {
    final l$updateAreasByPk = json['updateAreasByPk'];
    final l$insertHistoryVisitHistoryOne = json['insertHistoryVisitHistoryOne'];
    final l$$__typename = json['__typename'];
    return Mutation_updateArea(
      updateAreasByPk: l$updateAreasByPk == null
          ? null
          : Fragment_Area.fromJson((l$updateAreasByPk as Map<String, dynamic>)),
      insertHistoryVisitHistoryOne: l$insertHistoryVisitHistoryOne == null
          ? null
          : Fragment_VisitHistory.fromJson(
              (l$insertHistoryVisitHistoryOne as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Area? updateAreasByPk;

  final Fragment_VisitHistory? insertHistoryVisitHistoryOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAreasByPk = updateAreasByPk;
    _resultData['updateAreasByPk'] = l$updateAreasByPk?.toJson();
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    _resultData['insertHistoryVisitHistoryOne'] =
        l$insertHistoryVisitHistoryOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAreasByPk = updateAreasByPk;
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateAreasByPk,
      l$insertHistoryVisitHistoryOne,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateArea || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAreasByPk = updateAreasByPk;
    final lOther$updateAreasByPk = other.updateAreasByPk;
    if (l$updateAreasByPk != lOther$updateAreasByPk) {
      return false;
    }
    final l$insertHistoryVisitHistoryOne = insertHistoryVisitHistoryOne;
    final lOther$insertHistoryVisitHistoryOne =
        other.insertHistoryVisitHistoryOne;
    if (l$insertHistoryVisitHistoryOne != lOther$insertHistoryVisitHistoryOne) {
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

extension UtilityExtension_Mutation_updateArea on Mutation_updateArea {
  CopyWith_Mutation_updateArea<Mutation_updateArea> get copyWith =>
      CopyWith_Mutation_updateArea(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_updateArea<TRes> {
  factory CopyWith_Mutation_updateArea(
    Mutation_updateArea instance,
    TRes Function(Mutation_updateArea) then,
  ) = _CopyWithImpl_Mutation_updateArea;

  factory CopyWith_Mutation_updateArea.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateArea;

  TRes call({
    Fragment_Area? updateAreasByPk,
    Fragment_VisitHistory? insertHistoryVisitHistoryOne,
    String? $__typename,
  });
  CopyWith_Fragment_Area<TRes> get updateAreasByPk;
  CopyWith_Fragment_VisitHistory<TRes> get insertHistoryVisitHistoryOne;
}

class _CopyWithImpl_Mutation_updateArea<TRes>
    implements CopyWith_Mutation_updateArea<TRes> {
  _CopyWithImpl_Mutation_updateArea(
    this._instance,
    this._then,
  );

  final Mutation_updateArea _instance;

  final TRes Function(Mutation_updateArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAreasByPk = _undefined,
    Object? insertHistoryVisitHistoryOne = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation_updateArea(
        updateAreasByPk: updateAreasByPk == _undefined
            ? _instance.updateAreasByPk
            : (updateAreasByPk as Fragment_Area?),
        insertHistoryVisitHistoryOne: insertHistoryVisitHistoryOne == _undefined
            ? _instance.insertHistoryVisitHistoryOne
            : (insertHistoryVisitHistoryOne as Fragment_VisitHistory?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_Area<TRes> get updateAreasByPk {
    final local$updateAreasByPk = _instance.updateAreasByPk;
    return local$updateAreasByPk == null
        ? CopyWith_Fragment_Area.stub(_then(_instance))
        : CopyWith_Fragment_Area(
            local$updateAreasByPk, (e) => call(updateAreasByPk: e));
  }

  CopyWith_Fragment_VisitHistory<TRes> get insertHistoryVisitHistoryOne {
    final local$insertHistoryVisitHistoryOne =
        _instance.insertHistoryVisitHistoryOne;
    return local$insertHistoryVisitHistoryOne == null
        ? CopyWith_Fragment_VisitHistory.stub(_then(_instance))
        : CopyWith_Fragment_VisitHistory(local$insertHistoryVisitHistoryOne,
            (e) => call(insertHistoryVisitHistoryOne: e));
  }
}

class _CopyWithStubImpl_Mutation_updateArea<TRes>
    implements CopyWith_Mutation_updateArea<TRes> {
  _CopyWithStubImpl_Mutation_updateArea(this._res);

  TRes _res;

  call({
    Fragment_Area? updateAreasByPk,
    Fragment_VisitHistory? insertHistoryVisitHistoryOne,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_Area<TRes> get updateAreasByPk =>
      CopyWith_Fragment_Area.stub(_res);

  CopyWith_Fragment_VisitHistory<TRes> get insertHistoryVisitHistoryOne =>
      CopyWith_Fragment_VisitHistory.stub(_res);
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastVisit')),
        type: NamedTypeNode(
          name: NameNode(value: 'timestamptz'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'updateLastVisit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
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
            name: NameNode(value: 'pkColumns'),
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
        name: NameNode(value: 'insertHistoryVisitHistoryOne'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'table'),
                value: StringValueNode(
                  value: 'areas',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'recordId'),
                value: VariableNode(name: NameNode(value: 'areaId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: VariableNode(name: NameNode(value: 'lastVisit')),
              ),
            ]),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(name: NameNode(value: 'updateLastVisit')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'VisitHistory'),
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
  fragmentDefinitionVisitHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);
