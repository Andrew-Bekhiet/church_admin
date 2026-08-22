import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class OrderedViewableObjectList<T extends Viewable> extends StatelessWidget {
  final Stream<List<OrderBy>> orderByStream;
  final List<OrderBy> initialOrderBy;
  final ViewableObjectListController<T> objectsController;

  const OrderedViewableObjectList({
    required this.orderByStream,
    required this.initialOrderBy,
    required this.objectsController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: orderByStream,
      initialData: initialOrderBy,
      builder: (context, orderBySnapshot) => ViewableObjectList(
        scrollController: PrimaryScrollController.maybeOf(context),
        viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
          secondLineField: orderBySnapshot.data?.first.getSecondLineField(),
        ),
        objectsController: objectsController,
      ),
    );
  }
}
