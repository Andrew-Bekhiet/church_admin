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

  String? getFormattedValue(String? key, Object? value) {
    if (key == null || value == null) return null;

    switch (value) {
      case PermissionsSet _:
        return value.toHumanReadableString();
      case Json _:
        return value['name'];
      case List _:
        return value.map((o) => getFormattedValue(key, o)).join(',');
    }

    if (key == 'birthday') {
      return DateFormat('M/d').format(DateTime.parse(value as String));
    } else if (DateTime.tryParse(value.toString()) != null) {
      final parsed = DateTime.parse(value.toString());

      return '${parsed.toDurationString(appendSince: false)}\t\t\t\t\u202D${DateFormat('yyyy/M/d').format(parsed)}';
    } else if (key == 'gender') {
      if (value as bool? ?? false) {
        return 'ذكر';
      } else if ((value as bool?) == false) {
        return 'أنثى';
      } else {
        return 'غير محدد';
      }
    } else if (key.startsWith('is')) {
      if (value as bool? ?? false) {
        return 'نعم';
      } else if ((value as bool?) == false) {
        return 'لا';
      } else {
        return 'غير محدد';
      }
    } else if (key == 'color') {
      return '#${(value as int).toRadixString(16)}';
    }

    return value.toString();
  }

  String? getSecondLine(Viewable object) {
    final key = _userSettingsService.getSecondLineFor(object.runtimeType);

    switch (object) {
      case User _ when key == 'permissions':
        return getFormattedValue(key, object.permissions);
      case ToJson _:
        return getFormattedValue(key, (object as ToJson).toJson()[key]);
      default:
        return null;
    }
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

  bool _isSubtype<Type, Subtype>() => <Type>[] is List<Subtype>;
}
