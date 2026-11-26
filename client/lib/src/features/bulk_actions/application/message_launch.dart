import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class MessageLaunch with Equatable {
  final int runId;
  final int index;

  @override
  List<Object?> get props => [runId, index];

  const MessageLaunch({required this.runId, required this.index});

  bool isStillCurrentIn(
    MessageRunSending sending, {
    required int currentRunId,
  }) => runId == currentRunId && sending.currentIndex == index;
}
