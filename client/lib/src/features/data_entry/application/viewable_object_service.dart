import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:intl/intl.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class ViewableObjectService {
  static ViewableObjectService get I =>
      globalProviderContainer.read(viewableObjectServiceProvider);

  final KaiselRouter<AppRoute> router;

  ViewableObjectService({required this.router});

  void onTap(Viewable object) {
    switch (object) {
      case final Person person:
        unawaited(
          router.push(
            ViewPersonRoute(
              id: object.id,
              $extra: person,
            ),
          ),
        );

      case final Service service:
        unawaited(
          router.push(
            ViewServiceRoute(
              id: object.id,
              $extra: service,
            ),
          ),
        );

      case final Group group:
        unawaited(
          router.push(
            ViewGroupRoute(
              id: object.id,
              $extra: group,
            ),
          ),
        );

      case final Class $class:
        unawaited(
          router.push(
            ViewClassRoute(
              id: object.id,
              $extra: $class,
            ),
          ),
        );

      case final Area area:
        unawaited(
          router.push(
            ViewAreaRoute(
              id: object.id,
              $extra: area,
            ),
          ),
        );

      case final Street street:
        unawaited(
          router.push(
            ViewStreetRoute(
              id: object.id,
              $extra: street,
            ),
          ),
        );

      case final Family family:
        unawaited(
          router.push(
            ViewFamilyRoute(
              id: object.id,
              $extra: family,
            ),
          ),
        );

      case final Store store:
        unawaited(
          router.push(
            ViewStoreRoute(
              id: object.id,
              $extra: store,
            ),
          ),
        );

      case final User user:
        unawaited(
          router.push(
            ViewUserRoute(
              uid: object.uid,
              $extra: user,
            ),
          ),
        );

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
        return DateFormat(
          'd MMMM',
          'ar_EG',
        ).format(DateFormat('M-d').parse(value));
    }

    return value.toString();
  }

  IconData getDefaultIconFor<T extends Object>([T? imageObject]) {
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
    } else if (imageObject is Meeting || _isSubtype<T, Meeting>()) {
      return Symbols.productivity;
    } else if (imageObject is User || _isSubtype<T, User>()) {
      return Symbols.person;
    }

    return Symbols.image_not_supported;
  }

  bool _isSubtype<T, S>() => <T>[] is List<S>;
}
