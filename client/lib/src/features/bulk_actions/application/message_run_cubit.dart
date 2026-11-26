import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageRunCubit extends Cubit<MessageRunState> {
  final Set<Person> _persons;
  final PersonsDAO _personsDAO;
  final MessageChannel _channel;
  final AnalyticsService _analyticsService;
  final LoggingService _loggingService;
  final UserPreferencesService _userPreferencesService;

  int _runId = 0;
  MessageLaunch? _chatBeingOpened;

  MessageRunCubit({
    required this._persons,
    required this._personsDAO,
    required this._channel,
    required this._analyticsService,
    required this._loggingService,
    required this._userPreferencesService,
  }) : super(const MessageRunLoading());

  Future<void> load() async {
    emit(const MessageRunLoading());

    try {
      final fetched = await _personsDAO.personsPhoneContacts(
        personsIds: _persons.map((person) => person.id),
      );
      if (isClosed) return;

      final fetchedById = {
        for (final person in fetched) person.id: person,
      };

      emit(
        MessageRunComposing(
          recipients: _persons.map(
            (person) {
              final fetchedPerson = fetchedById[person.id];

              return Recipient.of(
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

      emit(MessageRunLoadFailure(error));
    }
  }

  void setOpensNextChatOnReturn({required bool isEnabled}) => switch (state) {
    final MessageRunComposing composing => emit(
      MessageRunComposing(
        recipients: composing.recipients,
        opensNextChatOnReturn: isEnabled,
      ),
    ),
    final MessageRunSending sending => emit(
      sending.copyWith(opensNextChatOnReturn: isEnabled),
    ),
    _ => null,
  };

  MessageTemplate withLastSentTextOr(MessageTemplate defaults) =>
      switch (_userPreferencesService.lastWhatsappMessageText) {
        final text? => MessageTemplate(text: text, fields: defaults.fields),
        null => defaults,
      };

  void saveTextAndStart(MessageTemplate template) {
    if (state case final MessageRunComposing composing) {
      _runId++;
      unawaited(
        _userPreferencesService
            .setLastWhatsappMessageText(template.text)
            .catchError(_logException),
      );

      final sendingState = MessageRunSending(
        recipients: composing.recipients,
        template: template,
        currentIndex: 0,
        opensNextChatOnReturn: composing.opensNextChatOnReturn,
      );
      _showNextWithPhoneOrFinishAndTrackRun(sendingState, fromIndex: 0);
    }
  }

  void selectPhone(PhoneContact contact) {
    if (state case final MessageRunSending sending) {
      emit(
        sending.withCurrent(sending.current.copyWith(selectedPhone: contact)),
      );
    }
  }

  Future<void> openCurrentChat() async {
    if (state
        case MessageRunSending(
              current: Recipient(:final selectedPhone?),
            ) &&
            final sending) {
      final chat = MessageLaunch(
        runId: _runId,
        index: sending.currentIndex,
      );
      if (_chatBeingOpened == chat) return;

      final bool isOpened;

      _chatBeingOpened = chat;
      try {
        isOpened = await _tryOpen(
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
    if (state case MessageRunSending(isAwaitingReturn: true) && final sending) {
      _showNextWithPhoneOrFinishAndTrackRun(
        sending,
        fromIndex: sending.currentIndex + 1,
      );

      if (state case MessageRunSending(opensNextChatOnReturn: true)) {
        await openCurrentChat();
      }
    }
  }

  void skipCurrent() {
    if (state case final MessageRunSending sending) {
      _showNextWithPhoneOrFinishAndTrackRun(
        sending.withCurrent(
          sending.current.copyWith(status: RecipientStatus.skipped),
        ),
        fromIndex: sending.currentIndex + 1,
      );
    }
  }

  void stop() {
    if (state case final MessageRunSending sending) {
      _finishAndTrackRun(sending, isStopped: true);
    }
  }

  MessageRunSending? _sendingIfChatStillCurrent(
    MessageLaunch chat,
    PhoneContact contact,
  ) => switch (state) {
    final MessageRunSending latest
        when !isClosed &&
            chat.isStillCurrentIn(latest, currentRunId: _runId) &&
            latest.current.selectedPhone == contact =>
      latest,
    _ => null,
  };

  void _logException(Object error, StackTrace stackTrace) => unawaited(
    _loggingService.exception(
      LogRecord(
        moduleName: '$MessageRunCubit',
        error: error,
        stackTrace: stackTrace,
      ),
    ),
  );

  Future<bool> _tryOpen(
    PhoneContact contact,
    String message,
  ) async {
    try {
      return await _channel.tryOpen(contact, message);
    } on Exception catch (error, stackTrace) {
      _logException(error, stackTrace);

      return false;
    }
  }

  void _recordChatOpening(
    MessageRunSending sending, {
    required bool isOpened,
  }) => emit(
    isOpened
        ? sending
              .withCurrent(
                sending.current.copyWith(
                  status: RecipientStatus.sent,
                ),
              )
              .copyWith(isAwaitingReturn: true, hasOpenFailed: false)
        : sending.copyWith(hasOpenFailed: true),
  );

  void _showNextWithPhoneOrFinishAndTrackRun(
    MessageRunSending sending, {
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
    MessageRunSending sending, {
    required bool isStopped,
  }) {
    _analyticsService.track(
      BulkWhatsappRunFinish(
        recipientCount: sending.recipients.length,
        openedCount: sending.withPhoneCountOf(RecipientStatus.sent),
        skippedCount: sending.withPhoneCountOf(RecipientStatus.skipped),
        withoutPhoneCount: sending.withoutPhone.length,
        opensNextChatOnReturn: sending.opensNextChatOnReturn,
        isStopped: isStopped,
      ),
    );
    emit(
      MessageRunFinished(
        recipients: sending.recipients,
        isStopped: isStopped,
      ),
    );
  }
}
