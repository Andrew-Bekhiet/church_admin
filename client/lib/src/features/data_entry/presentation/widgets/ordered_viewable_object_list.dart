import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class OrderedViewableObjectList<T extends Viewable> extends StatelessWidget {
  final ListArrangementController arrangementController;
  final ViewableObjectListController<T> objectsController;

  const OrderedViewableObjectList({
    required this.arrangementController,
    required this.objectsController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: arrangementController.stream,
      initialData: arrangementController.value,
      builder: (context, arrangementSnapshot) => ViewableObjectList(
        scrollController: PrimaryScrollController.maybeOf(context),
        nestedScrollOverlapHandle:
            NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
          secondLineField: arrangementSnapshot.data?.effectiveSecondLineField,
        ),
        objectsController: objectsController,
      ),
    );
  }
}
