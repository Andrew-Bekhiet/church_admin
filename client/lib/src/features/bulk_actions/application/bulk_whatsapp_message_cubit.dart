import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BulkWhatsappMessageCubit extends Cubit<BulkWhatsappMessageState> {
  static MessageTemplate get defaultTemplate => MessageTemplate(
    text: 'كل سنة وانت طيب يا {name} 🎂',
    fields: [PersonFields().name],
  );

  static int _byReachableFirstThenName(
    WhatsappRecipient a,
    WhatsappRecipient b,
  ) => switch ((a.hasPhone, b.hasPhone)) {
    (true, false) => -1,
    (false, true) => 1,
    _ => a.person.name.compareTo(b.person.name),
  };

  final Set<Person> _persons;
  final PersonsDAO _personsDAO;
  final LauncherService _launcherService;
  final PhoneNumberService _phoneNumberService;
  final AnalyticsService _analyticsService;

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
              .sorted(_byReachableFirstThenName),
        ),
      );
    } on Exception catch (error) {
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
    if (state
        case BulkWhatsappSending(
              current: WhatsappRecipient(:final selectedPhone?),
            ) &&
            final sending) {
      final isOpened = await _launcherService.launchWhatsappChat(
        _phoneNumberService.formatInternational(selectedPhone.phone),
        text: sending.currentMessage,
      );

      emit(
        isOpened
            ? sending.copyWith(
                recipients: _withCurrent(
                  sending,
                  sending.current.copyWith(
                    status: WhatsappRecipientStatus.opened,
                  ),
                ),
                isAwaitingReturn: true,
                hasOpenFailed: false,
              )
            : sending.copyWith(hasOpenFailed: true),
      );
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
