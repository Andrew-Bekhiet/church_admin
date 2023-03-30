import '../../users/__generated__/fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Fragment$EditHistory {
  Fragment$EditHistory({
    required this.time,
    this.user,
    this.$__typename = 'HistoryEditHistory',
  });

  factory Fragment$EditHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$EditHistory(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment$User? user;

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
    if (!(other is Fragment$EditHistory) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$EditHistory on Fragment$EditHistory {
  CopyWith$Fragment$EditHistory<Fragment$EditHistory> get copyWith =>
      CopyWith$Fragment$EditHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$EditHistory<TRes> {
  factory CopyWith$Fragment$EditHistory(
    Fragment$EditHistory instance,
    TRes Function(Fragment$EditHistory) then,
  ) = _CopyWithImpl$Fragment$EditHistory;

  factory CopyWith$Fragment$EditHistory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$EditHistory;

  TRes call({
    DateTime? time,
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Fragment$EditHistory<TRes>
    implements CopyWith$Fragment$EditHistory<TRes> {
  _CopyWithImpl$Fragment$EditHistory(
    this._instance,
    this._then,
  );

  final Fragment$EditHistory _instance;

  final TRes Function(Fragment$EditHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$EditHistory(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        user: user == _undefined ? _instance.user : (user as Fragment$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$User.stub(_then(_instance))
        : CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Fragment$EditHistory<TRes>
    implements CopyWith$Fragment$EditHistory<TRes> {
  _CopyWithStubImpl$Fragment$EditHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment$User? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
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

class Fragment$AttendanceHistory {
  Fragment$AttendanceHistory({
    required this.time,
    required this.user,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Fragment$AttendanceHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$AttendanceHistory(
      time: tstzFromString(l$time),
      user: Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment$User user;

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
    if (!(other is Fragment$AttendanceHistory) ||
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

extension UtilityExtension$Fragment$AttendanceHistory
    on Fragment$AttendanceHistory {
  CopyWith$Fragment$AttendanceHistory<Fragment$AttendanceHistory>
      get copyWith => CopyWith$Fragment$AttendanceHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$AttendanceHistory<TRes> {
  factory CopyWith$Fragment$AttendanceHistory(
    Fragment$AttendanceHistory instance,
    TRes Function(Fragment$AttendanceHistory) then,
  ) = _CopyWithImpl$Fragment$AttendanceHistory;

  factory CopyWith$Fragment$AttendanceHistory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AttendanceHistory;

  TRes call({
    DateTime? time,
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Fragment$AttendanceHistory<TRes>
    implements CopyWith$Fragment$AttendanceHistory<TRes> {
  _CopyWithImpl$Fragment$AttendanceHistory(
    this._instance,
    this._then,
  );

  final Fragment$AttendanceHistory _instance;

  final TRes Function(Fragment$AttendanceHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$AttendanceHistory(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Fragment$AttendanceHistory<TRes>
    implements CopyWith$Fragment$AttendanceHistory<TRes> {
  _CopyWithStubImpl$Fragment$AttendanceHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment$User? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
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

class Fragment$CallHistory {
  Fragment$CallHistory({
    required this.time,
    this.user,
    this.$__typename = 'HistoryCallHistory',
  });

  factory Fragment$CallHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$CallHistory(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment$User? user;

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
    if (!(other is Fragment$CallHistory) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$CallHistory on Fragment$CallHistory {
  CopyWith$Fragment$CallHistory<Fragment$CallHistory> get copyWith =>
      CopyWith$Fragment$CallHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CallHistory<TRes> {
  factory CopyWith$Fragment$CallHistory(
    Fragment$CallHistory instance,
    TRes Function(Fragment$CallHistory) then,
  ) = _CopyWithImpl$Fragment$CallHistory;

  factory CopyWith$Fragment$CallHistory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CallHistory;

  TRes call({
    DateTime? time,
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Fragment$CallHistory<TRes>
    implements CopyWith$Fragment$CallHistory<TRes> {
  _CopyWithImpl$Fragment$CallHistory(
    this._instance,
    this._then,
  );

  final Fragment$CallHistory _instance;

  final TRes Function(Fragment$CallHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CallHistory(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        user: user == _undefined ? _instance.user : (user as Fragment$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$User.stub(_then(_instance))
        : CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Fragment$CallHistory<TRes>
    implements CopyWith$Fragment$CallHistory<TRes> {
  _CopyWithStubImpl$Fragment$CallHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment$User? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
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

class Fragment$VisitHistory {
  Fragment$VisitHistory({
    required this.time,
    this.user,
    this.$__typename = 'HistoryVisitHistory',
  });

  factory Fragment$VisitHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$VisitHistory(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Fragment$User? user;

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
    if (!(other is Fragment$VisitHistory) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$VisitHistory on Fragment$VisitHistory {
  CopyWith$Fragment$VisitHistory<Fragment$VisitHistory> get copyWith =>
      CopyWith$Fragment$VisitHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$VisitHistory<TRes> {
  factory CopyWith$Fragment$VisitHistory(
    Fragment$VisitHistory instance,
    TRes Function(Fragment$VisitHistory) then,
  ) = _CopyWithImpl$Fragment$VisitHistory;

  factory CopyWith$Fragment$VisitHistory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VisitHistory;

  TRes call({
    DateTime? time,
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Fragment$VisitHistory<TRes>
    implements CopyWith$Fragment$VisitHistory<TRes> {
  _CopyWithImpl$Fragment$VisitHistory(
    this._instance,
    this._then,
  );

  final Fragment$VisitHistory _instance;

  final TRes Function(Fragment$VisitHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$VisitHistory(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        user: user == _undefined ? _instance.user : (user as Fragment$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$User.stub(_then(_instance))
        : CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Fragment$VisitHistory<TRes>
    implements CopyWith$Fragment$VisitHistory<TRes> {
  _CopyWithStubImpl$Fragment$VisitHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment$User? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
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

class Fragment$KodasHistory {
  Fragment$KodasHistory({
    this.time,
    required this.user,
    this.$__typename = 'HistoryKodasHistory',
  });

  factory Fragment$KodasHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$KodasHistory(
      time: l$time == null ? null : dateFromString(l$time),
      user: Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment$User user;

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
    if (!(other is Fragment$KodasHistory) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$KodasHistory on Fragment$KodasHistory {
  CopyWith$Fragment$KodasHistory<Fragment$KodasHistory> get copyWith =>
      CopyWith$Fragment$KodasHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$KodasHistory<TRes> {
  factory CopyWith$Fragment$KodasHistory(
    Fragment$KodasHistory instance,
    TRes Function(Fragment$KodasHistory) then,
  ) = _CopyWithImpl$Fragment$KodasHistory;

  factory CopyWith$Fragment$KodasHistory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$KodasHistory;

  TRes call({
    DateTime? time,
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Fragment$KodasHistory<TRes>
    implements CopyWith$Fragment$KodasHistory<TRes> {
  _CopyWithImpl$Fragment$KodasHistory(
    this._instance,
    this._then,
  );

  final Fragment$KodasHistory _instance;

  final TRes Function(Fragment$KodasHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$KodasHistory(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Fragment$KodasHistory<TRes>
    implements CopyWith$Fragment$KodasHistory<TRes> {
  _CopyWithStubImpl$Fragment$KodasHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment$User? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
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

class Fragment$ConfessionHistory {
  Fragment$ConfessionHistory({
    this.time,
    required this.user,
    this.$__typename = 'HistoryConfessionHistory',
  });

  factory Fragment$ConfessionHistory.fromJson(Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$ConfessionHistory(
      time: l$time == null ? null : dateFromString(l$time),
      user: Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Fragment$User user;

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
    if (!(other is Fragment$ConfessionHistory) ||
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

extension UtilityExtension$Fragment$ConfessionHistory
    on Fragment$ConfessionHistory {
  CopyWith$Fragment$ConfessionHistory<Fragment$ConfessionHistory>
      get copyWith => CopyWith$Fragment$ConfessionHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ConfessionHistory<TRes> {
  factory CopyWith$Fragment$ConfessionHistory(
    Fragment$ConfessionHistory instance,
    TRes Function(Fragment$ConfessionHistory) then,
  ) = _CopyWithImpl$Fragment$ConfessionHistory;

  factory CopyWith$Fragment$ConfessionHistory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ConfessionHistory;

  TRes call({
    DateTime? time,
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Fragment$ConfessionHistory<TRes>
    implements CopyWith$Fragment$ConfessionHistory<TRes> {
  _CopyWithImpl$Fragment$ConfessionHistory(
    this._instance,
    this._then,
  );

  final Fragment$ConfessionHistory _instance;

  final TRes Function(Fragment$ConfessionHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ConfessionHistory(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Fragment$ConfessionHistory<TRes>
    implements CopyWith$Fragment$ConfessionHistory<TRes> {
  _CopyWithStubImpl$Fragment$ConfessionHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Fragment$User? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
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
