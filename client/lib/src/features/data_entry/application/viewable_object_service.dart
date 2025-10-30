import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ViewableObjectService {
  static ViewableObjectService get I =>
      globalProviderContainer.read(viewableObjectServiceProvider);

  ViewableObjectService({
    required this.router,
    required UserSettingsService userSettingsService,
  }) : _userSettingsService = userSettingsService;

  final GoRouter router;
  final UserSettingsService _userSettingsService;

  NavigatorState get navigator =>
      router.routeInformationParser.configuration.navigatorKey.currentState!;

  GlobalKey<NavigatorState> get navigatorKey =>
      router.routeInformationParser.configuration.navigatorKey;

  void onTap(Viewable object) {
    switch (object) {
      case final Person person:
        ViewPersonRoute(id: object.id, $extra: person)
            .push(navigatorKey.currentContext!);

      case final Service service:
        ViewServiceRoute(id: object.id, $extra: service)
            .push(navigatorKey.currentContext!);

      case final Group group:
        ViewGroupRoute(id: object.id, $extra: group)
            .push(navigatorKey.currentContext!);

      case final Class $class:
        ViewClassRoute(id: object.id, $extra: $class)
            .push(navigatorKey.currentContext!);

      case final Area area:
        ViewAreaRoute(id: object.id, $extra: area)
            .push(navigatorKey.currentContext!);

      case final Street street:
        ViewStreetRoute(id: object.id, $extra: street)
            .push(navigatorKey.currentContext!);

      case final Family family:
        ViewFamilyRoute(id: object.id, $extra: family)
            .push(navigatorKey.currentContext!);

      case final Store store:
        ViewStoreRoute(id: object.id, $extra: store)
            .push(navigatorKey.currentContext!);

      case final User user:
        ViewUserRoute(uid: object.uid, $extra: user)
            .push(navigatorKey.currentContext!);

      case LastRecordedByInfo _:
        if (object.user != null) {
          onTap(object.user!);
        }
      default:
        throw UnimplementedError('Unexpected object:\n$object');
    }
  }

  String? getFormattedValue(Viewable object, FieldMetadata? field) {
    final fieldName = field?.name;

    if (field == null) return null;

    final value = field.getValue(object);

    if (value == null || field.name == 'name' && value == object.name) {
      return null;
    }

    switch (value) {
      case PermissionsSet(:final toHumanReadableString):
        return toHumanReadableString();

      case LabeledEnum(:final label):
        return label;

      case Viewable(:final name):
        return name;

      case Color(:final argbValue):
        return '#${argbValue.toRadixString(16)}';

      case final DateTime dateTime:
        return '${dateTime.toDurationString(appendSince: false)}'
            '\t\t\t\t\u202D${DateFormat('yyyy/M/d').format(dateTime)}';

      case final bool? gender
          when fieldName?.toLowerCase().endsWith('gender') ?? false:
        return gender == null
            ? 'غير محدد'
            : gender
                ? 'ذكر'
                : 'أنثى';

      case final bool? value:
        return value == null
            ? 'غير محدد'
            : value
                ? 'نعم'
                : 'لا';

      case final String value when fieldName == 'birthday':
        return DateFormat('d MMMM', 'ar_EG')
            .format(DateFormat('M-d').parse(value));
    }

    return value.toString();
  }

  IconData getDefaultIconFor<T extends IImage>([T? imageObject]) {
    if (imageObject is Area || _isSubtype<T, Area>()) {
      return Symbols.pin_drop;
    } else if (imageObject is Street || _isSubtype<T, Street>()) {
      return Symbols.road;
    } else if (imageObject is Family || _isSubtype<T, Family>()) {
      return Symbols.diversity_1;
    } else if (imageObject is Store || _isSubtype<T, Store>()) {
      return Symbols.store;
    } else if (imageObject is Service || _isSubtype<T, Service>()) {
      return Symbols.volunteer_activism;
    } else if (imageObject is Class || _isSubtype<T, Class>()) {
      return Symbols.groups_2;
    } else if (imageObject is Group || _isSubtype<T, Group>()) {
      return Symbols.groups;
    } else if (imageObject is Person || _isSubtype<T, Person>()) {
      return Symbols.person;
    } else if (imageObject is User || _isSubtype<T, User>()) {
      return Symbols.person;
    }

    return Symbols.image_not_supported;
  }

  bool _isSubtype<T, S>() => <T>[] is List<S>;
}
