import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class ChatOpening with Equatable {
  final int pass;
  final int index;

  @override
  List<Object?> get props => [pass, index];

  const ChatOpening({required this.pass, required this.index});

  bool isStillCurrentIn(
    MessageRunSending sending, {
    required int currentPass,
  }) => pass == currentPass && sending.currentIndex == index;
}
