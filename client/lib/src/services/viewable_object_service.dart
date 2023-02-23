import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide Json;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CAViewableObjectService implements DefaultViewableObjectService {
  static CAViewableObjectService get I => GetIt.I<CAViewableObjectService>();

  CAViewableObjectService(this.router);

  final GoRouter router;

  @override
  NavigatorState get navigator =>
      router.routeInformationParser.configuration.navigatorKey.currentState!;

  @override
  GlobalKey<NavigatorState> get navigatorKey => throw UnimplementedError();

  @override
  void onTap(Viewable object) {
    if (object is Person) {
      router.push(
        Uri(
          path: '/viewPerson',
          queryParameters: {'id': object.id},
        ).toString(),
        extra: {
          'person': object,
        },
      );
    } else if (object is Service) {
      router.push(
        Uri(
          path: '/viewService',
          queryParameters: {'id': object.id},
        ).toString(),
        extra: {
          'service': object,
        },
      );
    } else if (object is Group) {
      router.push(
        Uri(
          path: '/viewGroup',
          queryParameters: {'id': object.id},
        ).toString(),
        extra: {
          'group': object,
        },
      );
    } else if (object is Class) {
      router.push(
        Uri(
          path: '/viewClass',
          queryParameters: {'id': object.id},
        ).toString(),
        extra: {
          'class': object,
        },
      );
    } else if (object is Area) {
      router.push(
        Uri(
          path: '/viewArea',
          queryParameters: {'id': object.id},
        ).toString(),
        extra: {
          'area': object,
        },
      );
    } else if (object is Street) {
      router.push(
        Uri(
          path: '/viewStreet',
          queryParameters: {'id': object.id},
        ).toString(),
        extra: {
          'street': object,
        },
      );
    } else if (object is Family) {
      router.push(
        Uri(
          path: '/viewFamily',
          queryParameters: {'id': object.id},
        ).toString(),
        extra: {
          'family': object,
        },
      );
    } else if (object is Store) {
      router.push(
        Uri(
          path: '/viewStore',
          queryParameters: {'id': object.id},
        ).toString(),
        extra: {
          'store': object,
        },
      );
    } else if (object is User) {
      router.push(
        Uri(
          path: '/viewUser',
          queryParameters: {'uid': object.uid},
        ).toString(),
        extra: {
          'user': object,
        },
      );
    } else if (object is LastRecordedByInfo) {
      if (object.user != null) {
        onTap(object.user!);
      }
    } else {
      throw UnimplementedError('Unexpected object:\n' + object.toString());
    }
  }

  String? getFormattedValue(String? key, Object? value) {
    if (key == null || value == null) return null;

    if (value is Json) {
      return value['name'];
    } else if (value is List) {
      return value.map((o) => getFormattedValue(key, o)).join(',');
    } else if (key == 'birthday') {
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

  @override
  String? getSecondLine(Viewable object) {
    final key =
        GetIt.I<UserSettingsService>().getSecondLineFor(object.runtimeType);

    if (object is Person) {
      return getFormattedValue(
        key,
        object.toJson()[key],
      );
    } else if (object is User) {
      return getFormattedValue(
        key,
        object.toJson()[key],
      );
    } else if (object is Service) {
      return getFormattedValue(
        key,
        object.toJson()[key],
      );
    } else if (object is Area) {
      return getFormattedValue(
        key,
        object.toJson()[key],
      );
    } else if (object is Group) {
      return getFormattedValue(
        key,
        object.toJson()[key],
      );
    } else if (object is Class) {
      return getFormattedValue(
        key,
        object.toJson()[key],
      );
    } else {
      return null;
    }
  }

  IconData getDefaultIconFor<T extends IImage>([T? imageObject]) {
    if (imageObject is Area || _isSubtype<T, Area>()) return Icons.pin_drop;
    if (imageObject is Street || _isSubtype<T, Street>()) return Icons.pin_drop;
    if (imageObject is Family || _isSubtype<T, Family>()) {
      return Icons.diversity_1;
    }
    if (imageObject is Store || _isSubtype<T, Store>()) return Icons.store;
    if (imageObject is Service || _isSubtype<T, Service>()) {
      return Icons.miscellaneous_services;
    }
    if (imageObject is Class || _isSubtype<T, Class>()) {
      return Icons.groups_outlined;
    }
    if (imageObject is Group || _isSubtype<T, Group>()) return Icons.groups;
    if (imageObject is Person || _isSubtype<T, Person>()) return Icons.person;
    if (imageObject is User || _isSubtype<T, User>()) return Icons.person;

    return Icons.image_not_supported;
  }

  bool _isSubtype<Type, Subtype>() => <Type>[] is List<Subtype>;
}
