import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@TypeMetadata(
  labelsOverrides: {'uid': '='},
  ignoreFields: [
    'email',
    'blurhash',
    'authId',
  ],
)
abstract class User extends ViewableWithIDAndImage
    with _$User
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$UserFields;

  static final QueryableType<User> queryableType = QueryableType<User>(
    name: 'User',
    label: 'الخدام',
    fieldsMetadata: fieldsMetadata,
    fromJson: User.fromJson,
  );

  factory User({
    required String uid,
    required String name,
    String? email,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<AdminOnData>? adminOn,
    @JsonKey(
      fromJson: permissionsSetFromJson,
      toJson: permissionsSetToJson,
    )
    @Default(PermissionsSet.empty())
    PermissionsSet permissions,
    String? authId,
    LastRecordedByInfo? lastEdit,
    Person? person,
    List<AdminOnData>? servicesHistory,
    List<AdminOnData>? classesHistory,
    List<AdminOnData>? groupsHistory,
  }) = _User;
  User._() : super();

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('users', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => User.queryableType.name;

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
