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

  Iterable<Recipient> get withPhone =>
      recipients.where((recipient) => recipient.hasPhone);

  Iterable<Recipient> get withoutPhone =>
      recipients.whereNot((recipient) => recipient.hasPhone);

  @override
  List<Object?> get props => [recipients];

  const MessageRunLoaded({required this.recipients});

  int withPhoneCountOf(RecipientStatus status) =>
      withPhone.where((recipient) => recipient.status == status).length;
}

final class MessageRunComposing extends MessageRunLoaded {
  final bool opensNextChatOnReturn;

  @override
  List<Object?> get props => [...super.props, opensNextChatOnReturn];

  const MessageRunComposing({
    required super.recipients,
    this.opensNextChatOnReturn = false,
  });
}

final class MessageRunSending extends MessageRunLoaded {
  final MessageTemplate template;
  final int currentIndex;
  final bool opensNextChatOnReturn;
  final bool isAwaitingReturn;
  final bool hasOpenFailed;

  Recipient get current => recipients[currentIndex];

  String get currentMessage => template.renderFor(current.person);

  int get currentPositionAmongWithPhone => recipients
      .take(currentIndex + 1)
      .where((recipient) => recipient.hasPhone)
      .length;

  @override
  List<Object?> get props => [
    ...super.props,
    template,
    currentIndex,
    opensNextChatOnReturn,
    isAwaitingReturn,
    hasOpenFailed,
  ];

  const MessageRunSending({
    required this.template,
    required this.currentIndex,
    required super.recipients,
    this.opensNextChatOnReturn = false,
    this.isAwaitingReturn = false,
    this.hasOpenFailed = false,
  });

  MessageRunSending copyWith({
    List<Recipient>? recipients,
    int? currentIndex,
    bool? opensNextChatOnReturn,
    bool? isAwaitingReturn,
    bool? hasOpenFailed,
  }) => MessageRunSending(
    recipients: recipients ?? this.recipients,
    template: template,
    currentIndex: currentIndex ?? this.currentIndex,
    opensNextChatOnReturn: opensNextChatOnReturn ?? this.opensNextChatOnReturn,
    isAwaitingReturn: isAwaitingReturn ?? this.isAwaitingReturn,
    hasOpenFailed: hasOpenFailed ?? this.hasOpenFailed,
  );

  MessageRunSending withCurrent(Recipient current) => copyWith(
    recipients: recipients
        .mapIndexed(
          (index, recipient) => index == currentIndex ? current : recipient,
        )
        .toList(),
  );
}

final class MessageRunFinished extends MessageRunLoaded {
  final bool isStopped;

  @override
  List<Object?> get props => [...super.props, isStopped];

  const MessageRunFinished({
    required super.recipients,
    this.isStopped = false,
  });
}
