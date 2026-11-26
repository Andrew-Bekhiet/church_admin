import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageRunCubit extends Cubit<MessageRunState> {
  static const Duration nextChatDelay = Duration(seconds: 3);
  static const Duration _countdownTick = Duration(seconds: 1);

  final Set<Person> _persons;
  final PersonsDAO _personsDAO;
  final MessageChannel _channel;
  final AnalyticsService _analyticsService;
  final LoggingService _loggingService;
  final UserPreferencesService _userPreferencesService;

  int _passCount = 0;
  ChatOpening? _chatBeingOpened;
  Timer? _nextChatCountdown;

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

  void setOpensNextChatOnReturn({required bool isEnabled}) {
    if (!isEnabled) cancelNextChatCountdown();

    switch (state) {
      case final MessageRunComposing composing:
        emit(
          MessageRunComposing(
            recipients: composing.recipients,
            opensNextChatOnReturn: isEnabled,
          ),
        );

      case final MessageRunSending sending:
        emit(sending.copyWith(opensNextChatOnReturn: isEnabled));

      case MessageRunLoading() ||
          MessageRunLoadFailure() ||
          MessageRunPassEnded():
        break;
    }
  }

  MessageTemplate withLastSentTextOr(MessageTemplate defaults) =>
      switch (_userPreferencesService.lastWhatsappMessageText) {
        final text? => MessageTemplate(text: text, fields: defaults.fields),
        null => defaults,
      };

  void saveTextAndStart(MessageTemplate template) {
    if (state case final MessageRunComposing composing) {
      unawaited(
        _userPreferencesService
            .setLastWhatsappMessageText(template.text)
            .catchError(_logException),
      );

      _startPass(
        MessageRunComposing(
          recipients: [
            for (final recipient in composing.recipients)
              recipient.withMessageFrom(template),
          ],
          opensNextChatOnReturn: composing.opensNextChatOnReturn,
        ),
      );
    }
  }

  void selectPhone(PhoneContact contact) {
    if (state case final MessageRunSending sending) {
      emit(
        sending.withCurrent(sending.current.copyWith(selectedPhone: contact)),
      );
    }
  }

  void editCurrentMessageUnlessChatOpened(String message) {
    if (state
        case MessageRunSending(isAwaitingReturn: false) && final sending) {
      emit(sending.withCurrent(sending.current.copyWith(message: message)));
    }
  }

  Future<void> openCurrentChat() async {
    if (state
        case MessageRunSending(
              current: Recipient(:final selectedPhone?),
            ) &&
            final sending) {
      cancelNextChatCountdown();
      final chat = ChatOpening(
        pass: _passCount,
        index: sending.currentIndex,
      );
      if (_chatBeingOpened == chat) return;

      final bool isOpened;

      _chatBeingOpened = chat;
      try {
        isOpened = await _tryOpenChatLoggingErrors(
          selectedPhone,
          sending.current.message,
        );
      } finally {
        if (_chatBeingOpened == chat) _chatBeingOpened = null;
      }

      if (_sendingIfChatStillCurrent(chat, selectedPhone) case final latest?) {
        _recordChatOpening(latest, isOpened: isOpened);
      }
    }
  }

  void returnFromChat() {
    if (state case MessageRunSending(isAwaitingReturn: true) && final sending) {
      emit(
        sending
            .copyWith(sentToConfirm: () => sending.current.person)
            .nextRemainingOrPassEnded(fromIndex: sending.currentIndex + 1),
      );

      if (state
          case MessageRunSending(opensNextChatOnReturn: true) && final next) {
        _startNextChatCountdown(next);
      }
    }
  }

  void cancelNextChatCountdown() {
    _nextChatCountdown?.cancel();
    _nextChatCountdown = null;
    if (state
        case MessageRunSending(secondsBeforeNextChat: _?) && final sending) {
      emit(sending.copyWith(secondsBeforeNextChat: () => null));
    }
  }

  void skipCurrent() {
    cancelNextChatCountdown();
    if (state case final MessageRunSending sending) {
      emit(
        sending
            .withCurrent(sending.current.asSkippedUnlessOpenFailed())
            .nextRemainingOrPassEnded(fromIndex: sending.currentIndex + 1),
      );
    }
  }

  void markNotSentIfSent(Person person) {
    cancelNextChatCountdown();

    switch (state) {
      case final MessageRunSending sending:
        emit(
          sending.copyWith(
            recipients: sending.recipientsWithNotSentIfSent(person),
            sentToConfirm: () => null,
          ),
        );

      case final MessageRunPassEnded passEnded:
        emit(passEnded.withNotSentIfSent(person));

      case MessageRunLoading() ||
          MessageRunLoadFailure() ||
          MessageRunComposing():
        break;
    }
  }

  void resume() {
    if (state case final MessageRunPassEnded passEnded) {
      _startPass(passEnded);
    }
  }

  void stop() {
    cancelNextChatCountdown();
    if (state case final MessageRunSending sending) {
      emit(sending.asPassEnded());
    }
  }

  void _startPass(MessageRunLoaded run) {
    _passCount++;
    emit(run.firstRemainingOrPassEnded());
  }

  void _startNextChatCountdown(MessageRunSending sending) {
    emit(
      sending.copyWith(secondsBeforeNextChat: () => nextChatDelay.inSeconds),
    );
    _nextChatCountdown = Timer.periodic(
      _countdownTick,
      (_) => _tickNextChatCountdown(),
    );
  }

  void _tickNextChatCountdown() {
    if (state
        case MessageRunSending(:final secondsBeforeNextChat?) &&
            final sending) {
      final secondsLeft = secondsBeforeNextChat - 1;
      if (secondsLeft > 0) {
        emit(sending.copyWith(secondsBeforeNextChat: () => secondsLeft));

        return;
      }

      unawaited(openCurrentChat());
    }
  }

  MessageRunSending? _sendingIfChatStillCurrent(
    ChatOpening chat,
    PhoneContact contact,
  ) => switch (state) {
    final MessageRunSending latest
        when !isClosed &&
            chat.isStillCurrentIn(latest, currentPass: _passCount) &&
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

  Future<bool> _tryOpenChatLoggingErrors(
    PhoneContact contact,
    String message,
  ) async {
    try {
      return await _channel.tryOpenChat(contact, message);
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
              .withCurrent(sending.current.asSent())
              .copyWith(isAwaitingReturn: true)
        : sending.withCurrent(sending.current.asOpenFailed()),
  );

  @override
  Future<void> close() {
    _nextChatCountdown?.cancel();
    final hasStartedAPass = _passCount > 0;
    if (state case final MessageRunLoaded run
        when !isClosed && hasStartedAPass) {
      _analyticsService.track(
        BulkMessageRunFinish(
          channel: _channel,
          recipients: run.recipients,
          passCount: _passCount,
          opensNextChatOnReturn: run.opensNextChatOnReturn,
        ),
      );
    }

    return super.close();
  }
}
