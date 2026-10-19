import '../../gql/__generated__/fragments.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_Edit {
  Fragment_Edit({
    required this.time,
    this.recordedBy,
    this.user,
    this.$__typename = 'Edit',
  });

  factory Fragment_Edit.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$recordedBy = json['recordedBy'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_Edit(
      time: tstzFromString(l$time),
      recordedBy: (l$recordedBy as String?),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final String? recordedBy;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = l$recordedBy;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$recordedBy = recordedBy;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$time, l$recordedBy, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_Edit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Fragment_Edit on Fragment_Edit {
  CopyWith_Fragment_Edit<Fragment_Edit> get copyWith =>
      CopyWith_Fragment_Edit(this, (i) => i);
}

abstract class CopyWith_Fragment_Edit<TRes> {
  factory CopyWith_Fragment_Edit(
    Fragment_Edit instance,
    TRes Function(Fragment_Edit) then,
  ) = _CopyWithImpl_Fragment_Edit;

  factory CopyWith_Fragment_Edit.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Edit;

  TRes call({
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_Edit<TRes>
    implements CopyWith_Fragment_Edit<TRes> {
  _CopyWithImpl_Fragment_Edit(this._instance, this._then);

  final Fragment_Edit _instance;

  final TRes Function(Fragment_Edit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? recordedBy = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Edit(
      time: time == _undefined || time == null
          ? _instance.time
          : (time as DateTime),
      recordedBy: recordedBy == _undefined
          ? _instance.recordedBy
          : (recordedBy as String?),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_Edit<TRes>
    implements CopyWith_Fragment_Edit<TRes> {
  _CopyWithStubImpl_Fragment_Edit(this._res);

  TRes _res;

  call({
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionEdit = FragmentDefinitionNode(
  name: NameNode(value: 'Edit'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Edit'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'time'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'recordedBy'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'User'),
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
);
const documentNodeFragmentEdit = DocumentNode(
  definitions: [fragmentDefinitionEdit, fragmentDefinitionUser],
);

class Fragment_Visit {
  Fragment_Visit({
    required this.id,
    required this.time,
    this.recordedBy,
    required this.isFatherVisit,
    this.user,
    this.$__typename = 'Visit',
  });

  factory Fragment_Visit.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$recordedBy = json['recordedBy'];
    final l$isFatherVisit = json['isFatherVisit'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_Visit(
      id: (l$id as String),
      time: tstzFromString(l$time),
      recordedBy: (l$recordedBy as String?),
      isFatherVisit: (l$isFatherVisit as bool),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime time;

  final String? recordedBy;

  final bool isFatherVisit;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = l$recordedBy;
    final l$isFatherVisit = isFatherVisit;
    _resultData['isFatherVisit'] = l$isFatherVisit;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$recordedBy = recordedBy;
    final l$isFatherVisit = isFatherVisit;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$time,
      l$recordedBy,
      l$isFatherVisit,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_Visit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$isFatherVisit = isFatherVisit;
    final lOther$isFatherVisit = other.isFatherVisit;
    if (l$isFatherVisit != lOther$isFatherVisit) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Fragment_Visit on Fragment_Visit {
  CopyWith_Fragment_Visit<Fragment_Visit> get copyWith =>
      CopyWith_Fragment_Visit(this, (i) => i);
}

abstract class CopyWith_Fragment_Visit<TRes> {
  factory CopyWith_Fragment_Visit(
    Fragment_Visit instance,
    TRes Function(Fragment_Visit) then,
  ) = _CopyWithImpl_Fragment_Visit;

  factory CopyWith_Fragment_Visit.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Visit;

  TRes call({
    String? id,
    DateTime? time,
    String? recordedBy,
    bool? isFatherVisit,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_Visit<TRes>
    implements CopyWith_Fragment_Visit<TRes> {
  _CopyWithImpl_Fragment_Visit(this._instance, this._then);

  final Fragment_Visit _instance;

  final TRes Function(Fragment_Visit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? recordedBy = _undefined,
    Object? isFatherVisit = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Visit(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined || time == null
          ? _instance.time
          : (time as DateTime),
      recordedBy: recordedBy == _undefined
          ? _instance.recordedBy
          : (recordedBy as String?),
      isFatherVisit: isFatherVisit == _undefined || isFatherVisit == null
          ? _instance.isFatherVisit
          : (isFatherVisit as bool),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_Visit<TRes>
    implements CopyWith_Fragment_Visit<TRes> {
  _CopyWithStubImpl_Fragment_Visit(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    String? recordedBy,
    bool? isFatherVisit,
    Fragment_User? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionVisit = FragmentDefinitionNode(
  name: NameNode(value: 'Visit'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Visit'), isNonNull: false),
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
        name: NameNode(value: 'time'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'recordedBy'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isFatherVisit'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'User'),
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
);
const documentNodeFragmentVisit = DocumentNode(
  definitions: [fragmentDefinitionVisit, fragmentDefinitionUser],
);

class Fragment_Call {
  Fragment_Call({
    required this.id,
    required this.time,
    this.recordedBy,
    this.user,
    this.$__typename = 'Call',
  });

  factory Fragment_Call.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$recordedBy = json['recordedBy'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_Call(
      id: (l$id as String),
      time: tstzFromString(l$time),
      recordedBy: (l$recordedBy as String?),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime time;

  final String? recordedBy;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = l$recordedBy;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$recordedBy = recordedBy;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$recordedBy, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_Call || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Fragment_Call on Fragment_Call {
  CopyWith_Fragment_Call<Fragment_Call> get copyWith =>
      CopyWith_Fragment_Call(this, (i) => i);
}

abstract class CopyWith_Fragment_Call<TRes> {
  factory CopyWith_Fragment_Call(
    Fragment_Call instance,
    TRes Function(Fragment_Call) then,
  ) = _CopyWithImpl_Fragment_Call;

  factory CopyWith_Fragment_Call.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Call;

  TRes call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_Call<TRes>
    implements CopyWith_Fragment_Call<TRes> {
  _CopyWithImpl_Fragment_Call(this._instance, this._then);

  final Fragment_Call _instance;

  final TRes Function(Fragment_Call) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? recordedBy = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Call(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined || time == null
          ? _instance.time
          : (time as DateTime),
      recordedBy: recordedBy == _undefined
          ? _instance.recordedBy
          : (recordedBy as String?),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_Call<TRes>
    implements CopyWith_Fragment_Call<TRes> {
  _CopyWithStubImpl_Fragment_Call(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionCall = FragmentDefinitionNode(
  name: NameNode(value: 'Call'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Call'), isNonNull: false),
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
        name: NameNode(value: 'time'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'recordedBy'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'User'),
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
);
const documentNodeFragmentCall = DocumentNode(
  definitions: [fragmentDefinitionCall, fragmentDefinitionUser],
);

class Fragment_Confession {
  Fragment_Confession({
    required this.id,
    this.time,
    required this.recordedBy,
    this.user,
    this.$__typename = 'Confession',
  });

  factory Fragment_Confession.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$recordedBy = json['recordedBy'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_Confession(
      id: (l$id as String),
      time: l$time == null ? null : dateFromString(l$time),
      recordedBy: (l$recordedBy as String),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final String recordedBy;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = l$recordedBy;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$recordedBy = recordedBy;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$recordedBy, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_Confession || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Fragment_Confession on Fragment_Confession {
  CopyWith_Fragment_Confession<Fragment_Confession> get copyWith =>
      CopyWith_Fragment_Confession(this, (i) => i);
}

abstract class CopyWith_Fragment_Confession<TRes> {
  factory CopyWith_Fragment_Confession(
    Fragment_Confession instance,
    TRes Function(Fragment_Confession) then,
  ) = _CopyWithImpl_Fragment_Confession;

  factory CopyWith_Fragment_Confession.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Confession;

  TRes call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_Confession<TRes>
    implements CopyWith_Fragment_Confession<TRes> {
  _CopyWithImpl_Fragment_Confession(this._instance, this._then);

  final Fragment_Confession _instance;

  final TRes Function(Fragment_Confession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? recordedBy = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Confession(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      recordedBy: recordedBy == _undefined || recordedBy == null
          ? _instance.recordedBy
          : (recordedBy as String),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_Confession<TRes>
    implements CopyWith_Fragment_Confession<TRes> {
  _CopyWithStubImpl_Fragment_Confession(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionConfession = FragmentDefinitionNode(
  name: NameNode(value: 'Confession'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Confession'), isNonNull: false),
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
        name: NameNode(value: 'time'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'recordedBy'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'User'),
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
);
const documentNodeFragmentConfession = DocumentNode(
  definitions: [fragmentDefinitionConfession, fragmentDefinitionUser],
);

class Fragment_Kodas {
  Fragment_Kodas({
    required this.id,
    this.time,
    required this.recordedBy,
    this.user,
    this.$__typename = 'Kodas',
  });

  factory Fragment_Kodas.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$time = json['time'];
    final l$recordedBy = json['recordedBy'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_Kodas(
      id: (l$id as String),
      time: l$time == null ? null : dateFromString(l$time),
      recordedBy: (l$recordedBy as String),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime? time;

  final String recordedBy;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = l$recordedBy;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$time = time;
    final l$recordedBy = recordedBy;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$time, l$recordedBy, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_Kodas || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Fragment_Kodas on Fragment_Kodas {
  CopyWith_Fragment_Kodas<Fragment_Kodas> get copyWith =>
      CopyWith_Fragment_Kodas(this, (i) => i);
}

abstract class CopyWith_Fragment_Kodas<TRes> {
  factory CopyWith_Fragment_Kodas(
    Fragment_Kodas instance,
    TRes Function(Fragment_Kodas) then,
  ) = _CopyWithImpl_Fragment_Kodas;

  factory CopyWith_Fragment_Kodas.stub(TRes res) =
      _CopyWithStubImpl_Fragment_Kodas;

  TRes call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_Kodas<TRes>
    implements CopyWith_Fragment_Kodas<TRes> {
  _CopyWithImpl_Fragment_Kodas(this._instance, this._then);

  final Fragment_Kodas _instance;

  final TRes Function(Fragment_Kodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? time = _undefined,
    Object? recordedBy = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_Kodas(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      time: time == _undefined ? _instance.time : (time as DateTime?),
      recordedBy: recordedBy == _undefined || recordedBy == null
          ? _instance.recordedBy
          : (recordedBy as String),
      user: user == _undefined ? _instance.user : (user as Fragment_User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_Kodas<TRes>
    implements CopyWith_Fragment_Kodas<TRes> {
  _CopyWithStubImpl_Fragment_Kodas(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? time,
    String? recordedBy,
    Fragment_User? user,
    String? $__typename,
  }) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionKodas = FragmentDefinitionNode(
  name: NameNode(value: 'Kodas'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Kodas'), isNonNull: false),
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
        name: NameNode(value: 'time'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'recordedBy'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'User'),
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
);
const documentNodeFragmentKodas = DocumentNode(
  definitions: [fragmentDefinitionKodas, fragmentDefinitionUser],
);

class Fragment_KodasDayRecord {
  Fragment_KodasDayRecord({
    required this.id,
    required this.personId,
    required this.dayId,
    this.$__typename = 'Kodas',
  });

  factory Fragment_KodasDayRecord.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$personId = json['personId'];
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Fragment_KodasDayRecord(
      id: (l$id as String),
      personId: (l$personId as String),
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String personId;

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$personId = personId;
    _resultData['personId'] = l$personId;
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$personId = personId;
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$personId, l$dayId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_KodasDayRecord || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
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

extension UtilityExtension_Fragment_KodasDayRecord on Fragment_KodasDayRecord {
  CopyWith_Fragment_KodasDayRecord<Fragment_KodasDayRecord> get copyWith =>
      CopyWith_Fragment_KodasDayRecord(this, (i) => i);
}

abstract class CopyWith_Fragment_KodasDayRecord<TRes> {
  factory CopyWith_Fragment_KodasDayRecord(
    Fragment_KodasDayRecord instance,
    TRes Function(Fragment_KodasDayRecord) then,
  ) = _CopyWithImpl_Fragment_KodasDayRecord;

  factory CopyWith_Fragment_KodasDayRecord.stub(TRes res) =
      _CopyWithStubImpl_Fragment_KodasDayRecord;

  TRes call({
    String? id,
    String? personId,
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Fragment_KodasDayRecord<TRes>
    implements CopyWith_Fragment_KodasDayRecord<TRes> {
  _CopyWithImpl_Fragment_KodasDayRecord(this._instance, this._then);

  final Fragment_KodasDayRecord _instance;

  final TRes Function(Fragment_KodasDayRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment_KodasDayRecord(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      personId: personId == _undefined || personId == null
          ? _instance.personId
          : (personId as String),
      dayId: dayId == _undefined || dayId == null
          ? _instance.dayId
          : (dayId as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Fragment_KodasDayRecord<TRes>
    implements CopyWith_Fragment_KodasDayRecord<TRes> {
  _CopyWithStubImpl_Fragment_KodasDayRecord(this._res);

  TRes _res;

  call({String? id, String? personId, DateTime? dayId, String? $__typename}) =>
      _res;
}

const fragmentDefinitionKodasDayRecord = FragmentDefinitionNode(
  name: NameNode(value: 'KodasDayRecord'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Kodas'), isNonNull: false),
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
        name: NameNode(value: 'personId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'dayId'),
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
const documentNodeFragmentKodasDayRecord = DocumentNode(
  definitions: [fragmentDefinitionKodasDayRecord],
);
