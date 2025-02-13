import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class HomeDailyDataBloc extends Bloc<HomeDailyDataEvent, HomeDailyDataState> {
  static HomeDailyDataBloc get I =>
      globalProviderContainer.read(homeDailyDataBlocProvider);

  final HomeDailyDataRepository _homeDailyDataRepository;

  HomeDailyDataBloc({
    required HomeDailyDataRepository homeDailyDataRepository,
  })  : _homeDailyDataRepository = homeDailyDataRepository,
        super(const HomeDailyDataLoading()) {
    on<LoadHomeDailyData>(
      _onLoadHomeDailyData,
      transformer: (events, mapper) => events
          .scan(
            (_, event, i) => i == 0
                ? event
                : throw Exception('Already loaded home daily data'),
            const LoadHomeDailyData(),
          )
          .switchMap(mapper),
    );
    on<HomeDailyDataGetNew>(_onHomeDailyDataGetNew);

    add(const LoadHomeDailyData());
  }

  void _onLoadHomeDailyData(
    LoadHomeDailyData event,
    Emitter<HomeDailyDataState> emit,
  ) {
    final verse = _homeDailyDataRepository.getVerse();
    final sneksar = _homeDailyDataRepository.getTodaysSneksar();
    final saying = _homeDailyDataRepository.getSaying();

    emit(
      HomeDailyDataLoaded(
        data: HomeDailyData(
          verse: verse,
          sneksar: sneksar,
          saying: saying,
        ),
      ),
    );
  }

  void _onHomeDailyDataGetNew(
    HomeDailyDataGetNew event,
    Emitter<HomeDailyDataState> emit,
  ) {
    final newText = switch (event.type) {
      HomeDailyDataType.verse =>
        _homeDailyDataRepository.getVerse(forceRefresh: true),
      HomeDailyDataType.sneksar => _homeDailyDataRepository.getTodaysSneksar(),
      HomeDailyDataType.saying =>
        _homeDailyDataRepository.getSaying(forceRefresh: true),
    };

    final newData = (state as HomeDailyDataLoaded).data.copyWithNewText(
          type: event.type,
          text: newText,
        );

    emit(HomeDailyDataLoaded(data: newData));
  }
}
