import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BulkWhatsappMessageCubit extends Cubit<BulkWhatsappMessageState> {
  final Set<Person> _persons;
  final PersonsDAO _personsDAO;
  final LauncherService _launcherService;
  final PhoneNumberService _phoneNumberService;
  final AnalyticsService _analyticsService;
  final LoggingService _loggingService;

  int _runId = 0;
  WhatsappChatLaunch? _chatBeingOpened;

  BulkWhatsappMessageCubit({
    required this._persons,
    required this._personsDAO,
    required this._launcherService,
    required this._phoneNumberService,
    required this._analyticsService,
    required this._loggingService,
  }) : super(const BulkWhatsappLoading());

  Future<void> load() async {
    emit(const BulkWhatsappLoading());

    try {
      final fetched = await _personsDAO.personsPhoneContacts(
        personsIds: _persons.map((person) => person.id),
      );
      if (isClosed) return;

      final fetchedById = {
        for (final person in fetched) person.id: person,
      };

      emit(
        BulkWhatsappComposing(
          recipients: _persons.map(
            (person) {
              final fetchedPerson = fetchedById[person.id];

              return WhatsappRecipient.of(
                fetchedPerson == null
                    ? person
                    : person.copyWith(
                        contacts: fetchedPerson.contacts,
                        familyContacts: fetchedPerson.familyContacts,
                      ),
              );
            },
          ).toList(),
        ),
      );
    } on Exception catch (error, stackTrace) {
      _logException(error, stackTrace);
      if (isClosed) return;

      emit(BulkWhatsappLoadFailure(error));
    }
  }

  void setOpensNextChatOnReturn({required bool isEnabled}) => switch (state) {
    final BulkWhatsappComposing composing => emit(
      BulkWhatsappComposing(
        recipients: composing.recipients,
        opensNextChatOnReturn: isEnabled,
      ),
    ),
    final BulkWhatsappSending sending => emit(
      sending.copyWith(opensNextChatOnReturn: isEnabled),
    ),
    _ => null,
  };

  void start(MessageTemplate template) {
    if (state case final BulkWhatsappComposing composing) {
      _runId++;

      final sendingState = BulkWhatsappSending(
        recipients: composing.recipients,
        template: template,
        currentIndex: 0,
        opensNextChatOnReturn: composing.opensNextChatOnReturn,
      );
      _showNextWithPhoneOrFinishAndTrackRun(sendingState, fromIndex: 0);
    }
  }

  void selectPhone(PhoneContact contact) {
    if (state case final BulkWhatsappSending sending) {
      emit(
        sending.withCurrent(sending.current.copyWith(selectedPhone: contact)),
      );
    }
  }

  Future<void> openCurrentChat() async {
    if (state
        case BulkWhatsappSending(
              current: WhatsappRecipient(:final selectedPhone?),
            ) &&
            final sending) {
      final chat = WhatsappChatLaunch(
        runId: _runId,
        index: sending.currentIndex,
      );
      if (_chatBeingOpened == chat) return;

      final bool isOpened;

      _chatBeingOpened = chat;
      try {
        isOpened = await _tryOpenWhatsappChat(
          selectedPhone,
          sending.currentMessage,
        );
      } finally {
        if (_chatBeingOpened == chat) _chatBeingOpened = null;
      }

      if (_sendingIfChatStillCurrent(chat, selectedPhone) case final latest?) {
        _recordChatOpening(latest, isOpened: isOpened);
      }
    }
  }

  Future<void> showNextAndMaybeOpenItsChat() async {
    if (state
        case BulkWhatsappSending(isAwaitingReturn: true) && final sending) {
      _showNextWithPhoneOrFinishAndTrackRun(
        sending,
        fromIndex: sending.currentIndex + 1,
      );

      if (state case BulkWhatsappSending(opensNextChatOnReturn: true)) {
        await openCurrentChat();
      }
    }
  }

  void skipCurrent() {
    if (state case final BulkWhatsappSending sending) {
      _showNextWithPhoneOrFinishAndTrackRun(
        sending.withCurrent(
          sending.current.copyWith(status: WhatsappRecipientStatus.skipped),
        ),
        fromIndex: sending.currentIndex + 1,
      );
    }
  }

  void stop() {
    if (state case final BulkWhatsappSending sending) {
      _finishAndTrackRun(sending, isStopped: true);
    }
  }

  BulkWhatsappSending? _sendingIfChatStillCurrent(
    WhatsappChatLaunch chat,
    PhoneContact contact,
  ) => switch (state) {
    final BulkWhatsappSending latest
        when !isClosed &&
            chat.isStillCurrentIn(latest, currentRunId: _runId) &&
            latest.current.selectedPhone == contact =>
      latest,
    _ => null,
  };

  void _logException(Object error, StackTrace stackTrace) => unawaited(
    _loggingService.exception(
      LogRecord(
        moduleName: '$BulkWhatsappMessageCubit',
        error: error,
        stackTrace: stackTrace,
      ),
    ),
  );

  Future<bool> _tryOpenWhatsappChat(
    PhoneContact contact,
    String message,
  ) async {
    try {
      return await _launcherService.launchWhatsappChat(
        _phoneNumberService.formatInternational(contact.phone),
        text: message,
      );
    } on Exception catch (error, stackTrace) {
      _logException(error, stackTrace);

      return false;
    }
  }

  void _recordChatOpening(
    BulkWhatsappSending sending, {
    required bool isOpened,
  }) => emit(
    isOpened
        ? sending
              .withCurrent(
                sending.current.copyWith(
                  status: WhatsappRecipientStatus.opened,
                ),
              )
              .copyWith(isAwaitingReturn: true, hasOpenFailed: false)
        : sending.copyWith(hasOpenFailed: true),
  );

  void _showNextWithPhoneOrFinishAndTrackRun(
    BulkWhatsappSending sending, {
    required int fromIndex,
  }) {
    final nextIndex = sending.recipients.indexWhere(
      (recipient) => recipient.hasPhone,
      fromIndex,
    );
    final hasNoneLeftWithPhone = nextIndex == -1;

    if (hasNoneLeftWithPhone) {
      _finishAndTrackRun(sending, isStopped: false);

      return;
    }

    emit(
      sending.copyWith(
        currentIndex: nextIndex,
        isAwaitingReturn: false,
        hasOpenFailed: false,
      ),
    );
  }

  void _finishAndTrackRun(
    BulkWhatsappSending sending, {
    required bool isStopped,
  }) {
    _analyticsService.track(
      BulkWhatsappRunFinish(
        recipientCount: sending.recipients.length,
        openedCount: sending.withPhoneCountOf(WhatsappRecipientStatus.opened),
        skippedCount: sending.withPhoneCountOf(WhatsappRecipientStatus.skipped),
        withoutPhoneCount: sending.withoutPhone.length,
        opensNextChatOnReturn: sending.opensNextChatOnReturn,
        isStopped: isStopped,
      ),
    );
    emit(
      BulkWhatsappFinished(
        recipients: sending.recipients,
        isStopped: isStopped,
      ),
    );
  }
}
