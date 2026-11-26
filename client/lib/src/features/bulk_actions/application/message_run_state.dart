import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

sealed class MessageRunState with Equatable {
  @override
  List<Object?> get props => [];

  const MessageRunState();
}

final class MessageRunLoading extends MessageRunState {
  const MessageRunLoading();
}

final class MessageRunLoadFailure extends MessageRunState {
  final Object error;

  @override
  List<Object?> get props => [error];

  const MessageRunLoadFailure(this.error);
}

sealed class MessageRunLoaded extends MessageRunState {
  final List<Recipient> recipients;
  final bool opensNextChatOnReturn;

  Iterable<Recipient> get withPhone =>
      recipients.where((recipient) => recipient.hasPhone);

  Iterable<Recipient> get remaining =>
      recipients.where((recipient) => recipient.isRemaining);

  Iterable<Recipient> get withoutPhone =>
      recipients.whereNot((recipient) => recipient.hasPhone);

  @override
  List<Object?> get props => [recipients, opensNextChatOnReturn];

  const MessageRunLoaded({
    required this.recipients,
    this.opensNextChatOnReturn = false,
  });

  int withPhoneCountOf(RecipientStatus status) =>
      withPhone.where((recipient) => recipient.status == status).length;

  List<Recipient> recipientsWithNotSentIfSent(Person person) => recipients
      .map(
        (recipient) => recipient.person.id == person.id
            ? recipient.asNotSentIfSent()
            : recipient,
      )
      .toList();

  MessageRunLoaded startingPass() => MessageRunSending(
    recipients: recipients,
    currentIndex: 0,
    opensNextChatOnReturn: opensNextChatOnReturn,
  ).nextRemainingOrFinished(fromIndex: 0);
}

final class MessageRunComposing extends MessageRunLoaded {
  const MessageRunComposing({
    required super.recipients,
    super.opensNextChatOnReturn,
  });
}

final class MessageRunSending extends MessageRunLoaded {
  final int currentIndex;
  final bool isAwaitingReturn;
  final Person? sentToConfirm;
  final int? secondsBeforeNextChat;

  Recipient get current => recipients[currentIndex];

  bool get hasOpenFailed => current.status == RecipientStatus.openFailed;

  int get currentPositionAmongWithPhone => recipients
      .take(currentIndex + 1)
      .where((recipient) => recipient.hasPhone)
      .length;

  @override
  List<Object?> get props => [
    ...super.props,
    currentIndex,
    isAwaitingReturn,
    sentToConfirm,
    secondsBeforeNextChat,
  ];

  const MessageRunSending({
    required this.currentIndex,
    required super.recipients,
    super.opensNextChatOnReturn,
    this.isAwaitingReturn = false,
    this.sentToConfirm,
    this.secondsBeforeNextChat,
  });

  MessageRunSending copyWith({
    List<Recipient>? recipients,
    int? currentIndex,
    bool? opensNextChatOnReturn,
    bool? isAwaitingReturn,
    Person? Function()? sentToConfirm,
    int? Function()? secondsBeforeNextChat,
  }) => MessageRunSending(
    recipients: recipients ?? this.recipients,
    currentIndex: currentIndex ?? this.currentIndex,
    opensNextChatOnReturn: opensNextChatOnReturn ?? this.opensNextChatOnReturn,
    isAwaitingReturn: isAwaitingReturn ?? this.isAwaitingReturn,
    sentToConfirm: sentToConfirm != null ? sentToConfirm() : this.sentToConfirm,
    secondsBeforeNextChat: secondsBeforeNextChat != null
        ? secondsBeforeNextChat()
        : this.secondsBeforeNextChat,
  );

  MessageRunSending withCurrent(Recipient current) => copyWith(
    recipients: recipients
        .mapIndexed(
          (index, recipient) => index == currentIndex ? current : recipient,
        )
        .toList(),
  );

  MessageRunLoaded nextRemainingOrFinished({required int fromIndex}) {
    final nextIndex = recipients.indexWhere(
      (recipient) => recipient.isRemaining,
      fromIndex,
    );
    final hasNoneRemaining = nextIndex == -1;

    return hasNoneRemaining
        ? asFinished()
        : copyWith(currentIndex: nextIndex, isAwaitingReturn: false);
  }

  MessageRunFinished asFinished() => MessageRunFinished(
    recipients: recipients,
    opensNextChatOnReturn: opensNextChatOnReturn,
  );
}

final class MessageRunFinished extends MessageRunLoaded {
  bool get isStopped => remaining.isNotEmpty;

  const MessageRunFinished({
    required super.recipients,
    super.opensNextChatOnReturn,
  });
}
