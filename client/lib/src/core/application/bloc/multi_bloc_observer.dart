import 'package:flutter_bloc/flutter_bloc.dart';

class MultiBlocObserver extends BlocObserver {
  final List<BlocObserver> observers;

  const MultiBlocObserver({required this.observers});

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);

    for (final observer in observers) {
      observer.onCreate(bloc);
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    for (final observer in observers) {
      observer.onChange(bloc, change);
    }
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    for (final observer in observers) {
      observer.onEvent(bloc, event);
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    for (final observer in observers) {
      observer.onTransition(bloc, transition);
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    for (final observer in observers) {
      observer.onError(bloc, error, stackTrace);
    }
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);

    for (final observer in observers) {
      observer.onClose(bloc);
    }
  }
}
