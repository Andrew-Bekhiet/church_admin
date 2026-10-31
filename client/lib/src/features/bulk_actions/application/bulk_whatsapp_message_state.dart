import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

sealed class BulkWhatsappMessageState with Equatable {
  @override
  List<Object?> get props => [];

  const BulkWhatsappMessageState();
}

final class BulkWhatsappLoading extends BulkWhatsappMessageState {
  const BulkWhatsappLoading();
}

final class BulkWhatsappLoadFailure extends BulkWhatsappMessageState {
  final Object error;

  @override
  List<Object?> get props => [error];

  const BulkWhatsappLoadFailure(this.error);
}

sealed class BulkWhatsappLoaded extends BulkWhatsappMessageState {
  final List<WhatsappRecipient> recipients;

  Iterable<WhatsappRecipient> get withPhone =>
      recipients.where((recipient) => recipient.hasPhone);

  Iterable<WhatsappRecipient> get withoutPhone =>
      recipients.whereNot((recipient) => recipient.hasPhone);

  @override
  List<Object?> get props => [recipients];

  const BulkWhatsappLoaded({required this.recipients});

  int withPhoneCountOf(WhatsappRecipientStatus status) =>
      withPhone.where((recipient) => recipient.status == status).length;
}

final class BulkWhatsappComposing extends BulkWhatsappLoaded {
  final bool opensNextChatOnReturn;

  @override
  List<Object?> get props => [...super.props, opensNextChatOnReturn];

  const BulkWhatsappComposing({
    required super.recipients,
    this.opensNextChatOnReturn = false,
  });
}

final class BulkWhatsappSending extends BulkWhatsappLoaded {
  final MessageTemplate template;
  final int currentIndex;
  final bool opensNextChatOnReturn;
  final bool isAwaitingReturn;
  final bool hasOpenFailed;

  WhatsappRecipient get current => recipients[currentIndex];

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

  const BulkWhatsappSending({
    required this.template,
    required this.currentIndex,
    required super.recipients,
    this.opensNextChatOnReturn = false,
    this.isAwaitingReturn = false,
    this.hasOpenFailed = false,
  });

  BulkWhatsappSending copyWith({
    List<WhatsappRecipient>? recipients,
    int? currentIndex,
    bool? opensNextChatOnReturn,
    bool? isAwaitingReturn,
    bool? hasOpenFailed,
  }) => BulkWhatsappSending(
    recipients: recipients ?? this.recipients,
    template: template,
    currentIndex: currentIndex ?? this.currentIndex,
    opensNextChatOnReturn: opensNextChatOnReturn ?? this.opensNextChatOnReturn,
    isAwaitingReturn: isAwaitingReturn ?? this.isAwaitingReturn,
    hasOpenFailed: hasOpenFailed ?? this.hasOpenFailed,
  );

  BulkWhatsappSending withCurrent(WhatsappRecipient current) =>
      copyWith(recipients: [...recipients]..[currentIndex] = current);
}

final class BulkWhatsappFinished extends BulkWhatsappLoaded {
  final bool isStopped;

  @override
  List<Object?> get props => [...super.props, isStopped];

  const BulkWhatsappFinished({
    required super.recipients,
    this.isStopped = false,
  });
}
