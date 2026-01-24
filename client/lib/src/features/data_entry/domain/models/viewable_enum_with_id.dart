import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';

class ViewableEnumWithID<T extends LabeledEnum> implements ViewableWithID {
  static PaginatableStream<ViewableEnumWithID<T>, String?>
  createPaginatableStream<T extends LabeledEnum>(
    List<T> values,
    Stream<String?> search,
  ) {
    return PaginatableStream(
      parametersStream: search,
      factory: (r) {
        final data = values
            .map(ViewableEnumWithID.wrap)
            .where((p) => p.name.contains(r.param ?? ''))
            .toList(growable: false);

        return Stream.value(
          PaginatableStreamResponse(
            data: data,
            totalCount: data.length,
          ),
        );
      },
    );
  }

  final T enumValue;

  const ViewableEnumWithID.wrap(this.enumValue);

  @override
  String get id => enumValue.name;

  @override
  String get name => enumValue.label;

  @override
  Color? get color => null;

  @override
  Future<String?> getSecondLine() => SynchronousFuture(null);
}
