import 'package:church_admin/church_admin.dart';

part 'invalid_person.dart';
part 'memberships_failed_to_load.dart';
part 'memberships_not_loaded_yet.dart';
part 'needs_move_confirmation.dart';
part 'person_saved.dart';
part 'person_saved_but_photo_failed.dart';
part 'person_save_failed.dart';
part 'save_abandoned_because_form_was_disposed.dart';
part 'save_already_in_progress.dart';

sealed class PersonSaveOutcome {
  const PersonSaveOutcome();
}
