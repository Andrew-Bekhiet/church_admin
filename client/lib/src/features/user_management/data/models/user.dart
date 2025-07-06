import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@JsonSerializable()
@Queryable(
  classLabel: 'الخدام',
  ignoreFields: [
    'authId',
    'id',
    'blurhash',
    'canManageSomeUsers',
  ],
  regexIgnoreFields: [r'.+History$'],
  allowExtension: true,
)
class User extends ViewableWithIDAndImage
    with _$User
    implements SerializableExtra {
  @override
  @JsonKey(defaultValue: '')
  final String uid;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  final String? email;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;
  @override
  final List<AdminOnData>? adminOn;
  @override
  @JsonKey(
    fromJson: permissionsSetFromJson,
    toJson: permissionsSetToJson,
  )
  @QueryableField(
    manyToManyRelSelectField: 'permission',
    manyToManyRelType: UsersPermissionsRel,
  )
  final PermissionsSet permissions;
  @override
  final String? authId;
  @override
  final LastRecordedByInfo? lastEdit;
  @override
  final Person? person;
  @override
  final List<AdminOnData>? servicesHistory;
  @override
  final List<AdminOnData>? classesHistory;
  @override
  final List<AdminOnData>? groupsHistory;

  const User({
    required this.uid,
    required this.name,
    this.email,
    this.photoUpdatedAt,
    this.blurhash,
    this.adminOn,
    this.permissions = const PermissionsSet.empty(),
    this.authId,
    this.lastEdit,
    this.person,
    this.servicesHistory,
    this.classesHistory,
    this.groupsHistory,
  });

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('users', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().user.name;

  @override
  String get id => uid;

  bool canReadObject(ViewableWithID object) {
    if (permissions.readAllData) return true;

    return _isAdminOn(object, canEdit: false);
  }

  bool canEditObject(ViewableWithID object) {
    if (permissions.writeAllData) return true;

    return _isAdminOn(object, canEdit: true);
  }

  bool _isAdminOn(ViewableWithID object, {required bool canEdit}) {
    switch (object) {
      case Person(
            services: final List<Service> services,
            :final bool? gender,
            :final StudyYear? studyYear
          )
          when adminOn?.any(
                (a) => services.any(
                  (service) =>
                      a.service?.id == service.id &&
                      (a.serviceGender == null || a.serviceGender == gender) &&
                      (a.serviceStudyYearData == null ||
                          a.serviceStudyYearData?.order == studyYear?.order) &&
                      (!canEdit || (a.serviceAllowEdit ?? false)),
                ),
              ) ??
              false:
        return true;

      case Person(groups: final List<Group> groups)
          when adminOn?.any(
                (a) => groups.any(
                  (group) =>
                      a.group?.id == group.id &&
                      (!canEdit || (a.groupAllowEdit ?? false)),
                ),
              ) ??
              false:
        return true;

      case Person(address: Address(area: Area(:final id))) ||
            Area(id: final id) ||
            Store(address: Address(area: Area(:final id))) ||
            Family(address: Address(area: Area(:final id))):
        return adminOn?.any(
              (a) =>
                  a.area?.id == id && (!canEdit || (a.areaAllowEdit ?? false)),
            ) ??
            false;

      case Street(:final List<Area> areas):
        return adminOn?.any(
              (a) =>
                  areas.firstWhereOrNull(
                    (area) =>
                        area.id == a.area?.id &&
                        (!canEdit || (a.areaAllowEdit ?? false)),
                  ) !=
                  null,
            ) ??
            false;

      case Service(id: final id):
        return adminOn?.any(
              (a) =>
                  a.service?.id == id &&
                  (!canEdit || (a.serviceAllowEdit ?? false)),
            ) ??
            false;

      case Group(id: final id):
        return adminOn?.any(
              (a) =>
                  a.group?.id == id &&
                  (!canEdit || (a.groupAllowEdit ?? false)),
            ) ??
            false;

      default:
        return false;
    }
  }

  bool canEditObjectUsers(ViewableWithID object) {
    if (permissions.manageAllUsers) return true;

    if (object is! Area && object is! Service && object is! Group) return false;

    switch (object) {
      case Area(id: final id):
        return adminOn?.any(
              (a) => a.area?.id == id && (a.areaAdminOnUsers ?? false),
            ) ??
            false;

      case Service(id: final id):
        return adminOn?.any(
              (a) => a.service?.id == id && (a.serviceAdminOnUsers ?? false),
            ) ??
            false;

      case Group(id: final id):
        return adminOn?.any(
              (a) => a.group?.id == id && (a.groupAdminOnUsers ?? false),
            ) ??
            false;

      default:
        return false;
    }
  }

  bool get canManageSomeUsers =>
      permissions.manageAllUsers ||
      (adminOn?.any(
            (p) =>
                (p.areaAdminOnUsers ?? false) ||
                (p.serviceAdminOnUsers ?? false) ||
                (p.groupAdminOnUsers ?? false),
          ) ??
          false);
}

class UserFields extends _UserFields {
  UserFields();

  @override
  FieldMetadata<String> get uid => const FieldMetadata<String>(
        parentType: User,
        name: 'uid',
        label: 'معرف المستخدم',
        operators: {...StringOperator.values},
        isCodeOnly: true,
      );

  @override
  FieldMetadata<String> get email => const FieldMetadata<String>(
        parentType: User,
        name: 'email',
        label: 'البريد الإلكتروني',
        operators: {...StringOperator.values},
        isCodeOnly: true,
      );

  FieldMetadata<AggregateData> get permissionsAggregate => const FieldMetadata(
        parentType: User,
        name: 'permissionsAggregate',
        label: 'permissionsAggregate',
        isCodeOnly: true,
        isOrderable: false,
        operators: {...MultiSelectOperator.values},
      );

  @override
  List<FieldMetadata<Object>> get allFields => [
        ...super.allFields,
        permissionsAggregate,
      ];

  @override
  Map<String, FieldMetadata<Object>> get allFieldsByName {
    return {
      ...super.allFieldsByName,
      permissionsAggregate.name: permissionsAggregate,
    };
  }
}
