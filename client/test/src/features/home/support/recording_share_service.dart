import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class RecordingShareService extends Fake implements ShareService {
  final List<String> sharedTexts = [];

  @override
  Future<void> shareText(String text) async => sharedTexts.add(text);
}
