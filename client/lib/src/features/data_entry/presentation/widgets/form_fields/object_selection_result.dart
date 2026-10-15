import 'package:church_admin/church_admin.dart';

sealed class ObjectSelectionResult<T extends ViewableWithID> {
  const ObjectSelectionResult();
}

final class ObjectSelected<T extends ViewableWithID>
    extends ObjectSelectionResult<T> {
  final T object;

  const ObjectSelected(this.object);
}

final class NewObjectNamed<T extends ViewableWithID>
    extends ObjectSelectionResult<T> {
  final String name;

  const NewObjectNamed(this.name);
}
