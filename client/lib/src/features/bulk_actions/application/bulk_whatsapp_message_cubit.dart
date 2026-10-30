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
  ({int runId, int index})? _chatBeingOpened;

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
          recipients: _persons
              .map(
                (person) => WhatsappRecipient.of(
                  _withFetchedContacts(person, fetchedById[person.id]),
                ),
              )
              .toList(),
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
      _showFirstReachableOrFinish(
        BulkWhatsappSending(
          recipients: composing.recipients,
          template: template,
          currentIndex: 0,
          opensNextChatOnReturn: composing.opensNextChatOnReturn,
        ),
      );
    }
  }

  void selectPhone(PhoneContact phone) {
    if (state case final BulkWhatsappSending sending) {
      emit(
        sending.copyWith(
          recipients: _withCurrent(
            sending,
            sending.current.copyWith(selectedPhone: phone),
          ),
        ),
      );
    }
  }

  Future<void> openCurrentChat() async {
    if (state
        case BulkWhatsappSending(
              current: WhatsappRecipient(:final selectedPhone?),
            ) &&
            final sending) {
      final chat = (runId: _runId, index: sending.currentIndex);
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

      if (_stillShowing(chat, selectedPhone) case final latest?) {
        _recordChatOpening(latest, isOpened: isOpened);
      }
    }
  }

  Future<void> continueAfterOpenedChat() async {
    if (state
        case BulkWhatsappSending(isAwaitingReturn: true) && final sending) {
      _showNextReachableOrFinish(sending, afterIndex: sending.currentIndex);

      if (state case BulkWhatsappSending(opensNextChatOnReturn: true)) {
        await openCurrentChat();
      }
    }
  }

  void skipCurrent() {
    if (state case final BulkWhatsappSending sending) {
      _showNextReachableOrFinish(
        sending.copyWith(
          recipients: _withCurrent(
            sending,
            sending.current.copyWith(status: WhatsappRecipientStatus.skipped),
          ),
        ),
        afterIndex: sending.currentIndex,
      );
    }
  }

  void stop() {
    if (state case final BulkWhatsappSending sending) {
      _finish(sending, isStopped: true);
    }
  }

  BulkWhatsappSending? _stillShowing(
    ({int runId, int index}) chat,
    PhoneContact phone,
  ) => switch (state) {
    final BulkWhatsappSending latest
        when !isClosed &&
            chat.runId == _runId &&
            latest.currentIndex == chat.index &&
            latest.current.selectedPhone == phone =>
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

  Person _withFetchedContacts(Person selected, Person? fetched) =>
      fetched == null
      ? selected
      : selected.copyWith(
          contacts: fetched.contacts,
          familyContacts: fetched.familyContacts,
        );

  Future<bool> _tryOpenWhatsappChat(
    PhoneContact phone,
    String message,
  ) async {
    try {
      return await _launcherService.launchWhatsappChat(
        _phoneNumberService.formatInternational(phone.phone),
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
        ? sending.copyWith(
            recipients: _withCurrent(
              sending,
              sending.current.copyWith(status: WhatsappRecipientStatus.opened),
            ),
            isAwaitingReturn: true,
            hasOpenFailed: false,
          )
        : sending.copyWith(hasOpenFailed: true),
  );

  List<WhatsappRecipient> _withCurrent(
    BulkWhatsappSending sending,
    WhatsappRecipient current,
  ) => [...sending.recipients]..[sending.currentIndex] = current;

  void _showFirstReachableOrFinish(BulkWhatsappSending sending) =>
      _showNextReachableOrFinish(sending, afterIndex: -1);

  void _showNextReachableOrFinish(
    BulkWhatsappSending sending, {
    required int afterIndex,
  }) {
    final nextIndex = sending.recipients.indexWhere(
      (recipient) => recipient.hasPhone,
      afterIndex + 1,
    );

    if (nextIndex == -1) {
      _finish(sending, isStopped: false);

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

  void _finish(BulkWhatsappSending sending, {required bool isStopped}) {
    _analyticsService.track(
      BulkWhatsappRunFinish(
        recipientCount: sending.recipients.length,
        openedCount: sending.countOf(WhatsappRecipientStatus.opened),
        skippedCount: sending.countOf(WhatsappRecipientStatus.skipped),
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
