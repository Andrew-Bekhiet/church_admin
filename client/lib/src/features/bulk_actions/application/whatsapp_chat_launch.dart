import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class WhatsappChatLaunch with Equatable {
  final int runId;
  final int index;

  @override
  List<Object?> get props => [runId, index];

  const WhatsappChatLaunch({required this.runId, required this.index});

  bool isStillCurrentIn(
    BulkWhatsappSending sending, {
    required int currentRunId,
  }) => runId == currentRunId && sending.currentIndex == index;
}
