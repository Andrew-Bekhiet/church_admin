import 'fragments.gql.dart';
import 'package:gql/ast.dart';

class Variables_Query_getStudyYearName {
  factory Variables_Query_getStudyYearName({required int order}) =>
      Variables_Query_getStudyYearName._({r'order': order});

  Variables_Query_getStudyYearName._(this._$data);

  factory Variables_Query_getStudyYearName.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$order = data['order'];
    result$data['order'] = (l$order as int);
    return Variables_Query_getStudyYearName._(result$data);
  }

  Map<String, dynamic> _$data;

  int get order => (_$data['order'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$order = order;
    result$data['order'] = l$order;
    return result$data;
  }

  CopyWith_Variables_Query_getStudyYearName<Variables_Query_getStudyYearName>
  get copyWith => CopyWith_Variables_Query_getStudyYearName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Query_getStudyYearName ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    return Object.hashAll([l$order]);
  }
}

abstract class CopyWith_Variables_Query_getStudyYearName<TRes> {
  factory CopyWith_Variables_Query_getStudyYearName(
    Variables_Query_getStudyYearName instance,
    TRes Function(Variables_Query_getStudyYearName) then,
  ) = _CopyWithImpl_Variables_Query_getStudyYearName;

  factory CopyWith_Variables_Query_getStudyYearName.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_getStudyYearName;

  TRes call({int? order});
}

class _CopyWithImpl_Variables_Query_getStudyYearName<TRes>
    implements CopyWith_Variables_Query_getStudyYearName<TRes> {
  _CopyWithImpl_Variables_Query_getStudyYearName(this._instance, this._then);

  final Variables_Query_getStudyYearName _instance;

  final TRes Function(Variables_Query_getStudyYearName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined}) => _then(
    Variables_Query_getStudyYearName._({
      ..._instance._$data,
      if (order != _undefined && order != null) 'order': (order as int),
    }),
  );
}

class _CopyWithStubImpl_Variables_Query_getStudyYearName<TRes>
    implements CopyWith_Variables_Query_getStudyYearName<TRes> {
  _CopyWithStubImpl_Variables_Query_getStudyYearName(this._res);

  TRes _res;

  call({int? order}) => _res;
}

class Query_getStudyYearName {
  Query_getStudyYearName({this.studyYearsByPk});

  factory Query_getStudyYearName.fromJson(Map<String, dynamic> json) {
    final l$studyYearsByPk = json['studyYearsByPk'];
    return Query_getStudyYearName(
      studyYearsByPk: l$studyYearsByPk == null
          ? null
          : Fragment_StudyYear.fromJson(
              (l$studyYearsByPk as Map<String, dynamic>),
            ),
    );
  }

  final Fragment_StudyYear? studyYearsByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$studyYearsByPk = studyYearsByPk;
    _resultData['studyYearsByPk'] = l$studyYearsByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$studyYearsByPk = studyYearsByPk;
    return Object.hashAll([l$studyYearsByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_getStudyYearName || runtimeType != other.runtimeType) {
      return false;
    }
    final l$studyYearsByPk = studyYearsByPk;
    final lOther$studyYearsByPk = other.studyYearsByPk;
    if (l$studyYearsByPk != lOther$studyYearsByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_getStudyYearName on Query_getStudyYearName {
  CopyWith_Query_getStudyYearName<Query_getStudyYearName> get copyWith =>
      CopyWith_Query_getStudyYearName(this, (i) => i);
}

abstract class CopyWith_Query_getStudyYearName<TRes> {
  factory CopyWith_Query_getStudyYearName(
    Query_getStudyYearName instance,
    TRes Function(Query_getStudyYearName) then,
  ) = _CopyWithImpl_Query_getStudyYearName;

  factory CopyWith_Query_getStudyYearName.stub(TRes res) =
      _CopyWithStubImpl_Query_getStudyYearName;

  TRes call({Fragment_StudyYear? studyYearsByPk});
  CopyWith_Fragment_StudyYear<TRes> get studyYearsByPk;
}

class _CopyWithImpl_Query_getStudyYearName<TRes>
    implements CopyWith_Query_getStudyYearName<TRes> {
  _CopyWithImpl_Query_getStudyYearName(this._instance, this._then);

  final Query_getStudyYearName _instance;

  final TRes Function(Query_getStudyYearName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? studyYearsByPk = _undefined}) => _then(
    Query_getStudyYearName(
      studyYearsByPk: studyYearsByPk == _undefined
          ? _instance.studyYearsByPk
          : (studyYearsByPk as Fragment_StudyYear?),
    ),
  );

  CopyWith_Fragment_StudyYear<TRes> get studyYearsByPk {
    final local$studyYearsByPk = _instance.studyYearsByPk;
    return local$studyYearsByPk == null
        ? CopyWith_Fragment_StudyYear.stub(_then(_instance))
        : CopyWith_Fragment_StudyYear(
            local$studyYearsByPk,
            (e) => call(studyYearsByPk: e),
          );
  }
}

class _CopyWithStubImpl_Query_getStudyYearName<TRes>
    implements CopyWith_Query_getStudyYearName<TRes> {
  _CopyWithStubImpl_Query_getStudyYearName(this._res);

  TRes _res;

  call({Fragment_StudyYear? studyYearsByPk}) => _res;

  CopyWith_Fragment_StudyYear<TRes> get studyYearsByPk =>
      CopyWith_Fragment_StudyYear.stub(_res);
}

const documentNodeQuerygetStudyYearName = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getStudyYearName'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'order')),
          type: NamedTypeNode(
            name: NameNode(value: 'smallint'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'studyYearsByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'order'),
                value: VariableNode(name: NameNode(value: 'order')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'StudyYear'),
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
    fragmentDefinitionStudyYear,
  ],
);
