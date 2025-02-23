import '../../users/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment_EditHistory {
  Fragment_EditHistory({
    required this.time,
    this.user,
    this.$__typename = 'HistoryEditHistory',
  });

  factory Fragment_EditHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_EditHistory(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_EditHistory || runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_EditHistory on Fragment_EditHistory {
  CopyWith_Fragment_EditHistory<Fragment_EditHistory> get copyWith =>
      CopyWith_Fragment_EditHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Fragment_EditHistory<TRes> {
  factory CopyWith_Fragment_EditHistory(
    Fragment_EditHistory instance,
    TRes Function(Fragment_EditHistory) then,
  ) = _CopyWithImpl_Fragment_EditHistory;

  factory CopyWith_Fragment_EditHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_EditHistory;

  TRes call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_EditHistory<TRes>
    implements CopyWith_Fragment_EditHistory<TRes> {
  _CopyWithImpl_Fragment_EditHistory(
    this._instance,
    this._then,
  );

  final Fragment_EditHistory _instance;

  final TRes Function(Fragment_EditHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_EditHistory(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        user: user == _undefined ? _instance.user : (user as Fragment_User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_EditHistory<TRes>
    implements CopyWith_Fragment_EditHistory<TRes> {
  _CopyWithStubImpl_Fragment_EditHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionEditHistory = FragmentDefinitionNode(
  name: NameNode(value: 'EditHistory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'HistoryEditHistory'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'time'),
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
      selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentEditHistory = DocumentNode(definitions: [
  fragmentDefinitionEditHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Fragment_AttendanceHistory {
  Fragment_AttendanceHistory({
    required this.time,
    required this.user,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Fragment_AttendanceHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_AttendanceHistory(
      time: tstzFromString(l$time),
      user: Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment_User user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_AttendanceHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_AttendanceHistory
    on Fragment_AttendanceHistory {
  CopyWith_Fragment_AttendanceHistory<Fragment_AttendanceHistory>
      get copyWith => CopyWith_Fragment_AttendanceHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_AttendanceHistory<TRes> {
  factory CopyWith_Fragment_AttendanceHistory(
    Fragment_AttendanceHistory instance,
    TRes Function(Fragment_AttendanceHistory) then,
  ) = _CopyWithImpl_Fragment_AttendanceHistory;

  factory CopyWith_Fragment_AttendanceHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_AttendanceHistory;

  TRes call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_AttendanceHistory<TRes>
    implements CopyWith_Fragment_AttendanceHistory<TRes> {
  _CopyWithImpl_Fragment_AttendanceHistory(
    this._instance,
    this._then,
  );

  final Fragment_AttendanceHistory _instance;

  final TRes Function(Fragment_AttendanceHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_AttendanceHistory(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment_User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_AttendanceHistory<TRes>
    implements CopyWith_Fragment_AttendanceHistory<TRes> {
  _CopyWithStubImpl_Fragment_AttendanceHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionAttendanceHistory = FragmentDefinitionNode(
  name: NameNode(value: 'AttendanceHistory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'HistoryAttendanceHistory'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'time'),
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
      selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentAttendanceHistory = DocumentNode(definitions: [
  fragmentDefinitionAttendanceHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Fragment_CallHistory {
  Fragment_CallHistory({
    required this.time,
    this.user,
    this.$__typename = 'HistoryCallHistory',
  });

  factory Fragment_CallHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_CallHistory(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_CallHistory || runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_CallHistory on Fragment_CallHistory {
  CopyWith_Fragment_CallHistory<Fragment_CallHistory> get copyWith =>
      CopyWith_Fragment_CallHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Fragment_CallHistory<TRes> {
  factory CopyWith_Fragment_CallHistory(
    Fragment_CallHistory instance,
    TRes Function(Fragment_CallHistory) then,
  ) = _CopyWithImpl_Fragment_CallHistory;

  factory CopyWith_Fragment_CallHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_CallHistory;

  TRes call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_CallHistory<TRes>
    implements CopyWith_Fragment_CallHistory<TRes> {
  _CopyWithImpl_Fragment_CallHistory(
    this._instance,
    this._then,
  );

  final Fragment_CallHistory _instance;

  final TRes Function(Fragment_CallHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_CallHistory(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        user: user == _undefined ? _instance.user : (user as Fragment_User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_CallHistory<TRes>
    implements CopyWith_Fragment_CallHistory<TRes> {
  _CopyWithStubImpl_Fragment_CallHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionCallHistory = FragmentDefinitionNode(
  name: NameNode(value: 'CallHistory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'HistoryCallHistory'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'time'),
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
      selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentCallHistory = DocumentNode(definitions: [
  fragmentDefinitionCallHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Fragment_VisitHistory {
  Fragment_VisitHistory({
    required this.time,
    this.user,
    this.$__typename = 'HistoryVisitHistory',
  });

  factory Fragment_VisitHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_VisitHistory(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_VisitHistory || runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_VisitHistory on Fragment_VisitHistory {
  CopyWith_Fragment_VisitHistory<Fragment_VisitHistory> get copyWith =>
      CopyWith_Fragment_VisitHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Fragment_VisitHistory<TRes> {
  factory CopyWith_Fragment_VisitHistory(
    Fragment_VisitHistory instance,
    TRes Function(Fragment_VisitHistory) then,
  ) = _CopyWithImpl_Fragment_VisitHistory;

  factory CopyWith_Fragment_VisitHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_VisitHistory;

  TRes call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_VisitHistory<TRes>
    implements CopyWith_Fragment_VisitHistory<TRes> {
  _CopyWithImpl_Fragment_VisitHistory(
    this._instance,
    this._then,
  );

  final Fragment_VisitHistory _instance;

  final TRes Function(Fragment_VisitHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_VisitHistory(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        user: user == _undefined ? _instance.user : (user as Fragment_User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_VisitHistory<TRes>
    implements CopyWith_Fragment_VisitHistory<TRes> {
  _CopyWithStubImpl_Fragment_VisitHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionVisitHistory = FragmentDefinitionNode(
  name: NameNode(value: 'VisitHistory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'HistoryVisitHistory'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'time'),
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
      selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentVisitHistory = DocumentNode(definitions: [
  fragmentDefinitionVisitHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Fragment_KodasHistory {
  Fragment_KodasHistory({
    this.time,
    required this.user,
    this.$__typename = 'HistoryKodasHistory',
  });

  factory Fragment_KodasHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_KodasHistory(
      time: l$time == null ? null : dateFromString(l$time),
      user: Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_KodasHistory || runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_KodasHistory on Fragment_KodasHistory {
  CopyWith_Fragment_KodasHistory<Fragment_KodasHistory> get copyWith =>
      CopyWith_Fragment_KodasHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Fragment_KodasHistory<TRes> {
  factory CopyWith_Fragment_KodasHistory(
    Fragment_KodasHistory instance,
    TRes Function(Fragment_KodasHistory) then,
  ) = _CopyWithImpl_Fragment_KodasHistory;

  factory CopyWith_Fragment_KodasHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_KodasHistory;

  TRes call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_KodasHistory<TRes>
    implements CopyWith_Fragment_KodasHistory<TRes> {
  _CopyWithImpl_Fragment_KodasHistory(
    this._instance,
    this._then,
  );

  final Fragment_KodasHistory _instance;

  final TRes Function(Fragment_KodasHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_KodasHistory(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment_User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_KodasHistory<TRes>
    implements CopyWith_Fragment_KodasHistory<TRes> {
  _CopyWithStubImpl_Fragment_KodasHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionKodasHistory = FragmentDefinitionNode(
  name: NameNode(value: 'KodasHistory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'HistoryKodasHistory'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'time'),
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
      selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentKodasHistory = DocumentNode(definitions: [
  fragmentDefinitionKodasHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Fragment_ConfessionHistory {
  Fragment_ConfessionHistory({
    this.time,
    required this.user,
    this.$__typename = 'HistoryConfessionHistory',
  });

  factory Fragment_ConfessionHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_ConfessionHistory(
      time: l$time == null ? null : dateFromString(l$time),
      user: Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_ConfessionHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_ConfessionHistory
    on Fragment_ConfessionHistory {
  CopyWith_Fragment_ConfessionHistory<Fragment_ConfessionHistory>
      get copyWith => CopyWith_Fragment_ConfessionHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_ConfessionHistory<TRes> {
  factory CopyWith_Fragment_ConfessionHistory(
    Fragment_ConfessionHistory instance,
    TRes Function(Fragment_ConfessionHistory) then,
  ) = _CopyWithImpl_Fragment_ConfessionHistory;

  factory CopyWith_Fragment_ConfessionHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_ConfessionHistory;

  TRes call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_ConfessionHistory<TRes>
    implements CopyWith_Fragment_ConfessionHistory<TRes> {
  _CopyWithImpl_Fragment_ConfessionHistory(
    this._instance,
    this._then,
  );

  final Fragment_ConfessionHistory _instance;

  final TRes Function(Fragment_ConfessionHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_ConfessionHistory(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment_User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_ConfessionHistory<TRes>
    implements CopyWith_Fragment_ConfessionHistory<TRes> {
  _CopyWithStubImpl_Fragment_ConfessionHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionConfessionHistory = FragmentDefinitionNode(
  name: NameNode(value: 'ConfessionHistory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'HistoryConfessionHistory'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'time'),
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
      selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentConfessionHistory = DocumentNode(definitions: [
  fragmentDefinitionConfessionHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Fragment_LatestEditHistory {
  Fragment_LatestEditHistory({
    this.time,
    this.user,
    this.$__typename = 'HistoryLatestEdits',
  });

  factory Fragment_LatestEditHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestEditHistory(
      time: l$time == null ? null : tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestEditHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_LatestEditHistory
    on Fragment_LatestEditHistory {
  CopyWith_Fragment_LatestEditHistory<Fragment_LatestEditHistory>
      get copyWith => CopyWith_Fragment_LatestEditHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_LatestEditHistory<TRes> {
  factory CopyWith_Fragment_LatestEditHistory(
    Fragment_LatestEditHistory instance,
    TRes Function(Fragment_LatestEditHistory) then,
  ) = _CopyWithImpl_Fragment_LatestEditHistory;

  factory CopyWith_Fragment_LatestEditHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestEditHistory;

  TRes call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestEditHistory<TRes>
    implements CopyWith_Fragment_LatestEditHistory<TRes> {
  _CopyWithImpl_Fragment_LatestEditHistory(
    this._instance,
    this._then,
  );

  final Fragment_LatestEditHistory _instance;

  final TRes Function(Fragment_LatestEditHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_LatestEditHistory(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        user: user == _undefined ? _instance.user : (user as Fragment_User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_LatestEditHistory<TRes>
    implements CopyWith_Fragment_LatestEditHistory<TRes> {
  _CopyWithStubImpl_Fragment_LatestEditHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestEditHistory = FragmentDefinitionNode(
  name: NameNode(value: 'LatestEditHistory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'HistoryLatestEdits'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'time'),
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
      selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentLatestEditHistory = DocumentNode(definitions: [
  fragmentDefinitionLatestEditHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Fragment_LatestCallHistory {
  Fragment_LatestCallHistory({
    this.time,
    this.user,
    this.$__typename = 'HistoryLatestCalls',
  });

  factory Fragment_LatestCallHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestCallHistory(
      time: l$time == null ? null : tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestCallHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_LatestCallHistory
    on Fragment_LatestCallHistory {
  CopyWith_Fragment_LatestCallHistory<Fragment_LatestCallHistory>
      get copyWith => CopyWith_Fragment_LatestCallHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_LatestCallHistory<TRes> {
  factory CopyWith_Fragment_LatestCallHistory(
    Fragment_LatestCallHistory instance,
    TRes Function(Fragment_LatestCallHistory) then,
  ) = _CopyWithImpl_Fragment_LatestCallHistory;

  factory CopyWith_Fragment_LatestCallHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestCallHistory;

  TRes call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestCallHistory<TRes>
    implements CopyWith_Fragment_LatestCallHistory<TRes> {
  _CopyWithImpl_Fragment_LatestCallHistory(
    this._instance,
    this._then,
  );

  final Fragment_LatestCallHistory _instance;

  final TRes Function(Fragment_LatestCallHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_LatestCallHistory(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        user: user == _undefined ? _instance.user : (user as Fragment_User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_LatestCallHistory<TRes>
    implements CopyWith_Fragment_LatestCallHistory<TRes> {
  _CopyWithStubImpl_Fragment_LatestCallHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestCallHistory = FragmentDefinitionNode(
  name: NameNode(value: 'LatestCallHistory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'HistoryLatestCalls'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'time'),
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
      selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentLatestCallHistory = DocumentNode(definitions: [
  fragmentDefinitionLatestCallHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Fragment_LatestVisitHistory {
  Fragment_LatestVisitHistory({
    this.time,
    this.user,
    this.$__typename = 'HistoryLatestVisits',
  });

  factory Fragment_LatestVisitHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestVisitHistory(
      time: l$time == null ? null : tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestVisitHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_LatestVisitHistory
    on Fragment_LatestVisitHistory {
  CopyWith_Fragment_LatestVisitHistory<Fragment_LatestVisitHistory>
      get copyWith => CopyWith_Fragment_LatestVisitHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_LatestVisitHistory<TRes> {
  factory CopyWith_Fragment_LatestVisitHistory(
    Fragment_LatestVisitHistory instance,
    TRes Function(Fragment_LatestVisitHistory) then,
  ) = _CopyWithImpl_Fragment_LatestVisitHistory;

  factory CopyWith_Fragment_LatestVisitHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestVisitHistory;

  TRes call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestVisitHistory<TRes>
    implements CopyWith_Fragment_LatestVisitHistory<TRes> {
  _CopyWithImpl_Fragment_LatestVisitHistory(
    this._instance,
    this._then,
  );

  final Fragment_LatestVisitHistory _instance;

  final TRes Function(Fragment_LatestVisitHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_LatestVisitHistory(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        user: user == _undefined ? _instance.user : (user as Fragment_User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_LatestVisitHistory<TRes>
    implements CopyWith_Fragment_LatestVisitHistory<TRes> {
  _CopyWithStubImpl_Fragment_LatestVisitHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestVisitHistory = FragmentDefinitionNode(
  name: NameNode(value: 'LatestVisitHistory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'HistoryLatestVisits'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'time'),
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
      selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentLatestVisitHistory = DocumentNode(definitions: [
  fragmentDefinitionLatestVisitHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Fragment_LatestKodasHistory {
  Fragment_LatestKodasHistory({
    this.time,
    this.user,
    this.$__typename = 'HistoryLatestKodases',
  });

  factory Fragment_LatestKodasHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestKodasHistory(
      time: l$time == null ? null : dateFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestKodasHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_LatestKodasHistory
    on Fragment_LatestKodasHistory {
  CopyWith_Fragment_LatestKodasHistory<Fragment_LatestKodasHistory>
      get copyWith => CopyWith_Fragment_LatestKodasHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_LatestKodasHistory<TRes> {
  factory CopyWith_Fragment_LatestKodasHistory(
    Fragment_LatestKodasHistory instance,
    TRes Function(Fragment_LatestKodasHistory) then,
  ) = _CopyWithImpl_Fragment_LatestKodasHistory;

  factory CopyWith_Fragment_LatestKodasHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestKodasHistory;

  TRes call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestKodasHistory<TRes>
    implements CopyWith_Fragment_LatestKodasHistory<TRes> {
  _CopyWithImpl_Fragment_LatestKodasHistory(
    this._instance,
    this._then,
  );

  final Fragment_LatestKodasHistory _instance;

  final TRes Function(Fragment_LatestKodasHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_LatestKodasHistory(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        user: user == _undefined ? _instance.user : (user as Fragment_User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_LatestKodasHistory<TRes>
    implements CopyWith_Fragment_LatestKodasHistory<TRes> {
  _CopyWithStubImpl_Fragment_LatestKodasHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestKodasHistory = FragmentDefinitionNode(
  name: NameNode(value: 'LatestKodasHistory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'HistoryLatestKodases'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'time'),
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
      selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentLatestKodasHistory = DocumentNode(definitions: [
  fragmentDefinitionLatestKodasHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Fragment_LatestConfessionHistory {
  Fragment_LatestConfessionHistory({
    this.time,
    this.user,
    this.$__typename = 'HistoryLatestConfessions',
  });

  factory Fragment_LatestConfessionHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment_LatestConfessionHistory(
      time: l$time == null ? null : dateFromString(l$time),
      user: l$user == null
          ? null
          : Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment_User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment_LatestConfessionHistory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
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

extension UtilityExtension_Fragment_LatestConfessionHistory
    on Fragment_LatestConfessionHistory {
  CopyWith_Fragment_LatestConfessionHistory<Fragment_LatestConfessionHistory>
      get copyWith => CopyWith_Fragment_LatestConfessionHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Fragment_LatestConfessionHistory<TRes> {
  factory CopyWith_Fragment_LatestConfessionHistory(
    Fragment_LatestConfessionHistory instance,
    TRes Function(Fragment_LatestConfessionHistory) then,
  ) = _CopyWithImpl_Fragment_LatestConfessionHistory;

  factory CopyWith_Fragment_LatestConfessionHistory.stub(TRes res) =
      _CopyWithStubImpl_Fragment_LatestConfessionHistory;

  TRes call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  });
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Fragment_LatestConfessionHistory<TRes>
    implements CopyWith_Fragment_LatestConfessionHistory<TRes> {
  _CopyWithImpl_Fragment_LatestConfessionHistory(
    this._instance,
    this._then,
  );

  final Fragment_LatestConfessionHistory _instance;

  final TRes Function(Fragment_LatestConfessionHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment_LatestConfessionHistory(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        user: user == _undefined ? _instance.user : (user as Fragment_User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Fragment_User.stub(_then(_instance))
        : CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Fragment_LatestConfessionHistory<TRes>
    implements CopyWith_Fragment_LatestConfessionHistory<TRes> {
  _CopyWithStubImpl_Fragment_LatestConfessionHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment_User? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}

const fragmentDefinitionLatestConfessionHistory = FragmentDefinitionNode(
  name: NameNode(value: 'LatestConfessionHistory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'HistoryLatestConfessions'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'time'),
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
      selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentLatestConfessionHistory = DocumentNode(definitions: [
  fragmentDefinitionLatestConfessionHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);
