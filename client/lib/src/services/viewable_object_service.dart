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
      router.goNamed(
        'view_person',
        queryParams: {'id': object.id},
        extra: {
          'person': object,
        },
      );
    } else if (object is Service) {
      router.goNamed(
        'view_service',
        queryParams: {'id': object.id},
        extra: {
          'service': object,
        },
      );
    } else if (object is Area) {
      router.goNamed(
        'view_area',
        queryParams: {'id': object.id},
        extra: {
          'area': object,
        },
      );
    } else if (object is Group) {
      router.goNamed(
        'view_group',
        queryParams: {'id': object.id},
        extra: {
          'group': object,
        },
      );
    } else if (object is Class) {
      router.goNamed(
        'view_class',
        queryParams: {'id': object.id},
        extra: {
          'class': object,
        },
      );
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
      throw UnimplementedError('Unexpected object:\n' + object.toString());
    }
  }
}
