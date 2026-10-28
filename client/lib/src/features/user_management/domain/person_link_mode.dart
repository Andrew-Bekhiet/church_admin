import 'package:church_admin/church_admin.dart';

enum PersonLinkMode {
  link,
  create,
  none;

  static PersonLinkMode of(PersonLink person) => switch (person) {
    LinkExistingPerson() => link,
    CreateNewPerson() => create,
    NoPersonSelected() => none,
  };
}
