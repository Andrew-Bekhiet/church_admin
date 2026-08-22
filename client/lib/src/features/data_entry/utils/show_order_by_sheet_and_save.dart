import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

Future<void> showOrderBySheetAndSave(
  BuildContext context, {
  required QueryableType queryableType,
  required BehaviorSubject<List<OrderBy>> orderBySubject,
  bool inServiceContext = false,
}) async {
  await showOrderByBottomSheet(
    context,
    queryableType: queryableType,
    orderBySubject: orderBySubject,
    onChanged: (newOrderBy) {
      orderBySubject.add(newOrderBy);
      unawaited(
        ViewObjectDetails.saveLastOrderByFor(
          type: queryableType,
          inServiceContext: inServiceContext,
          orderBy: newOrderBy,
        ),
      );
    },
  );
}
