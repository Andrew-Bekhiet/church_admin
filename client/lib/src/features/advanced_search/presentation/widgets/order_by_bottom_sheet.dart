import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/advanced_search/presentation/widgets/order_by_bottom_sheet_state.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class OrderByBottomSheet extends StatefulWidget {
  final QueryableType queryableType;
  final List<OrderBy> initialOrderBy;
  final void Function(List<OrderBy>) onChanged;

  const OrderByBottomSheet({
    required this.queryableType,
    required this.initialOrderBy,
    required this.onChanged,
    super.key,
  });

  @override
  State<OrderByBottomSheet> createState() => OrderByBottomSheetState();
}

Future<void> showOrderByBottomSheet(
  BuildContext context, {
  required QueryableType queryableType,
  required ValueStream<List<OrderBy>> orderBySubject,
  required void Function(List<OrderBy>) onChanged,
}) {
  return showModalBottomSheet<List<OrderBy>?>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    builder: (context) => StreamBuilder<List<OrderBy>>(
      initialData: orderBySubject.value,
      stream: orderBySubject,
      builder: (context, snapshot) => OrderByBottomSheet(
        initialOrderBy: snapshot.requireData,
        onChanged: onChanged,
        queryableType: queryableType,
      ),
    ),
  );
}
