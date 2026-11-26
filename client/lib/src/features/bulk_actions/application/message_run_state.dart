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

  List<Recipient> recipientsWithNotSentIfSent(Person person) => recipients
      .map(
        (recipient) => recipient.person.id == person.id
            ? recipient.asNotSentIfSent()
            : recipient,
      )
      .toList();

  MessageRunLoaded firstRemainingOrPassEnded() => MessageRunSending(
    recipients: recipients,
    currentIndex: 0,
    opensNextChatOnReturn: opensNextChatOnReturn,
  ).nextRemainingOrPassEnded(fromIndex: 0);
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

  bool get hasCurrentOpenFailed => current.status == RecipientStatus.openFailed;

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
    this.isAwaitingReturn = false,
    this.sentToConfirm,
    this.secondsBeforeNextChat,
    super.opensNextChatOnReturn,
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

  MessageRunLoaded nextRemainingOrPassEnded({required int fromIndex}) {
    final nextIndex = recipients.indexWhere(
      (recipient) => recipient.isRemaining,
      fromIndex,
    );
    final hasNoneRemaining = nextIndex == -1;

    return hasNoneRemaining
        ? asPassEnded()
        : copyWith(currentIndex: nextIndex, isAwaitingReturn: false);
  }

  MessageRunPassEnded asPassEnded() => MessageRunPassEnded(
    recipients: recipients,
    opensNextChatOnReturn: opensNextChatOnReturn,
  );
}

final class MessageRunPassEnded extends MessageRunLoaded {
  bool get hasRemaining => remaining.isNotEmpty;

  Iterable<Recipient> get notSentOrOpenFailed => recipients.where(
    (recipient) => switch (recipient.status) {
      RecipientStatus.notSent || RecipientStatus.openFailed => true,
      RecipientStatus.pending ||
      RecipientStatus.sent ||
      RecipientStatus.skipped => false,
    },
  );

  Iterable<Recipient> get skipped => recipients.where(
    (recipient) => recipient.status == RecipientStatus.skipped,
  );

  Iterable<Recipient> get sent =>
      recipients.where((recipient) => recipient.status == RecipientStatus.sent);

  const MessageRunPassEnded({
    required super.recipients,
    super.opensNextChatOnReturn,
  });

  MessageRunPassEnded withNotSentIfSent(Person person) => MessageRunPassEnded(
    recipients: recipientsWithNotSentIfSent(person),
    opensNextChatOnReturn: opensNextChatOnReturn,
  );
}
