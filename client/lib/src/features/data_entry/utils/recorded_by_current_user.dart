import 'package:church_admin/church_admin.dart';

LastRecordedByInfo recordedByCurrentUser(DateTime time) => LastRecordedByInfo(
  time: time,
  recordedBy: AuthBloc.I.currentUser?.uid,
);
