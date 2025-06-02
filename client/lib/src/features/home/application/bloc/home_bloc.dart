import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static HomeBloc get I => globalProviderContainer.read(homeBlocProvider);

  final HomeDailyDataRepository _homeDailyDataRepository;
  final AdvancedQueryParser _advancedQueryParser;

  HomeBloc({
    required HomeDailyDataRepository homeDailyDataRepository,
    required AdvancedQueryParser advancedQueryParser,
  })  : _homeDailyDataRepository = homeDailyDataRepository,
        _advancedQueryParser = advancedQueryParser,
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

  Future<void> _onLoadHomeDailyData(
    LoadHomeDailyData event,
    Emitter<HomeState> emit,
  ) async {
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

    final now = DateTime.now();

    final birthdaysQuery = AdvancedQuery(
      name: 'أعياد الميلاد',
      queryableType: Person.queryableType,
      conditions: [
        Condition(
          queryableType: Person.queryableType,
          field: 'birthday',
          operator: Operator.eq,
          value:
              '${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}',
        ),
      ],
      orderBy: [
        OrderBy(fieldName: 'birthdate'),
        OrderBy(fieldName: 'name'),
      ],
    );

    final persons = await _advancedQueryParser
        .createPaginatableStream(birthdaysQuery)
        .first;

    final currentState = state as HomeDailyDataLoaded;

    emit(
      HomeDailyDataLoaded(
        data: HomeDailyData(
          verse: currentState.data.verse,
          sneksar: currentState.data.sneksar,
          saying: currentState.data.saying,
          birthdays: persons.map((e) => e.name).toList(),
          birthdaysQuery: birthdaysQuery,
        ),
      ),
    );
  }

  void _onHomeDailyDataGetNew(
    HomeDailyDataGetNew event,
    Emitter<HomeState> emit,
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
