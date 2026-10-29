import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BulkWhatsappMessageCubit extends Cubit<BulkWhatsappMessageState> {
  static MessageTemplate get defaultTemplate => MessageTemplate(
    text: 'كل سنة وانت طيب يا {name} 🎂',
    fields: [PersonFields().name],
  );

  final Set<Person> _persons;
  final PersonsDAO _personsDAO;
  final LauncherService _launcherService;
  final PhoneNumberService _phoneNumberService;
  final AnalyticsService _analyticsService;

  int _runId = 0;
  bool _isOpeningChat = false;

  BulkWhatsappMessageCubit({
    required this._persons,
    required this._personsDAO,
    required this._launcherService,
    required this._phoneNumberService,
    required this._analyticsService,
  }) : super(const BulkWhatsappLoading());

  Future<void> load() async {
    emit(const BulkWhatsappLoading());

    try {
      final fetched = await _personsDAO.personsPhoneContacts(
        personsIds: _persons.map((person) => person.id),
      );
      if (isClosed) return;

      final fetchedById = {
        for (final person in fetched ?? const <Person>[]) person.id: person,
      };

      emit(
        BulkWhatsappComposing(
          recipients: _persons
              .map(
                (person) =>
                    WhatsappRecipient.of(fetchedById[person.id] ?? person),
              )
              .toList(),
        ),
      );
    } on Exception catch (error) {
      if (isClosed) return;

      emit(BulkWhatsappLoadFailure(error));
    }
  }

  void setAutoAdvance({required bool isEnabled}) => switch (state) {
    final BulkWhatsappComposing composing => emit(
      BulkWhatsappComposing(
        recipients: composing.recipients,
        autoAdvance: isEnabled,
      ),
    ),
    final BulkWhatsappSending sending => emit(
      sending.copyWith(autoAdvance: isEnabled),
    ),
    _ => null,
  };

  void start(MessageTemplate template) {
    if (state case final BulkWhatsappComposing composing) {
      _runId++;
      _showNextReachableAfter(
        -1,
        BulkWhatsappSending(
          recipients: composing.recipients,
          template: template,
          currentIndex: 0,
          autoAdvance: composing.autoAdvance,
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
    if (_isOpeningChat) return;

    if (state
        case BulkWhatsappSending(
              current: WhatsappRecipient(:final selectedPhone?),
            ) &&
            final sending) {
      final openedRunId = _runId;
      final bool isOpened;

      _isOpeningChat = true;
      try {
        isOpened = await _launcherService.launchWhatsappChat(
          _phoneNumberService.formatInternational(selectedPhone.phone),
          text: sending.currentMessage,
        );
      } finally {
        _isOpeningChat = false;
      }

      if (isClosed || openedRunId != _runId) return;

      if (state case final BulkWhatsappSending latest
          when latest.currentIndex == sending.currentIndex) {
        _recordChatOpening(latest, isOpened: isOpened);
      }
    }
  }

  Future<void> continueAfterOpenedChat() async {
    if (state
        case BulkWhatsappSending(isAwaitingReturn: true) && final sending) {
      _showNextReachableAfter(sending.currentIndex, sending);

      if (state case BulkWhatsappSending(autoAdvance: true)) {
        await openCurrentChat();
      }
    }
  }

  void skipCurrent() {
    if (state case final BulkWhatsappSending sending) {
      _showNextReachableAfter(
        sending.currentIndex,
        sending.copyWith(
          recipients: _withCurrent(
            sending,
            sending.current.copyWith(status: WhatsappRecipientStatus.skipped),
          ),
        ),
      );
    }
  }

  void stop() {
    if (state case final BulkWhatsappSending sending) {
      _finish(sending, isStopped: true);
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

  void _showNextReachableAfter(int index, BulkWhatsappSending sending) {
    final nextIndex = sending.recipients.indexWhere(
      (recipient) => recipient.hasPhone,
      index + 1,
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
      BulkWhatsappRunFinish(sending, isStopped: isStopped),
    );
    emit(
      BulkWhatsappFinished(
        recipients: sending.recipients,
        isStopped: isStopped,
      ),
    );
  }
}
