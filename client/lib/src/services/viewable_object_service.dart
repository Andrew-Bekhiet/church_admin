import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

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

  GlobalKey<NavigatorState> get navigatorKey => throw UnimplementedError();

  void onTap(Viewable object) {
    switch (object) {
      case Person _:
        router.push(
          Uri(
            path: '/viewPerson',
            queryParameters: {'id': object.id},
          ).toString(),
          extra: {
            'person': object,
          },
        );

      case Service _:
        router.push(
          Uri(
            path: '/viewService',
            queryParameters: {'id': object.id},
          ).toString(),
          extra: {
            'service': object,
          },
        );
      case Group _:
        router.push(
          Uri(
            path: '/viewGroup',
            queryParameters: {'id': object.id},
          ).toString(),
          extra: {
            'group': object,
          },
        );
      case Class _:
        router.push(
          Uri(
            path: '/viewClass',
            queryParameters: {'id': object.id},
          ).toString(),
          extra: {
            'class': object,
          },
        );
      case Area _:
        router.push(
          Uri(
            path: '/viewArea',
            queryParameters: {'id': object.id},
          ).toString(),
          extra: {
            'area': object,
          },
        );
      case Street _:
        router.push(
          Uri(
            path: '/viewStreet',
            queryParameters: {'id': object.id},
          ).toString(),
          extra: {
            'street': object,
          },
        );
      case Family _:
        router.push(
          Uri(
            path: '/viewFamily',
            queryParameters: {'id': object.id},
          ).toString(),
          extra: {
            'family': object,
          },
        );
      case Store _:
        router.push(
          Uri(
            path: '/viewStore',
            queryParameters: {'id': object.id},
          ).toString(),
          extra: {
            'store': object,
          },
        );
      case User _:
        router.push(
          Uri(
            path: '/viewUser',
            queryParameters: {'uid': object.uid},
          ).toString(),
          extra: {
            'user': object,
          },
        );
      case LastRecordedByInfo _:
        if (object.user != null) {
          onTap(object.user!);
        }
      default:
        throw UnimplementedError('Unexpected object:\n' + object.toString());
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

      return parsed.toDurationString(appendSince: false) +
          '\t\t\t\t\u202D' +
          DateFormat('yyyy/M/d').format(parsed);
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
      return '#' + (value as int).toRadixString(16);
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
      return Icons.pin_drop;
    } else if (imageObject is Street || _isSubtype<T, Street>()) {
      return Icons.pin_drop;
    } else if (imageObject is Family || _isSubtype<T, Family>()) {
      return Icons.diversity_1;
    } else if (imageObject is Store || _isSubtype<T, Store>()) {
      return Icons.store;
    } else if (imageObject is Service || _isSubtype<T, Service>()) {
      return Icons.miscellaneous_services;
    } else if (imageObject is Class || _isSubtype<T, Class>()) {
      return Icons.groups_outlined;
    } else if (imageObject is Group || _isSubtype<T, Group>()) {
      return Icons.groups;
    } else if (imageObject is Person || _isSubtype<T, Person>()) {
      return Icons.person;
    } else if (imageObject is User || _isSubtype<T, User>()) {
      return Icons.person;
    }

    return Icons.image_not_supported;
  }

  bool _isSubtype<Type, Subtype>() => <Type>[] is List<Subtype>;
}
