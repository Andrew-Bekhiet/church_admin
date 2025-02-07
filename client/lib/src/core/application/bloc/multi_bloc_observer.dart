import 'package:flutter_bloc/flutter_bloc.dart';

class MultiBlocObserver extends BlocObserver {
  final Set<BlocObserver> _observers;

  MultiBlocObserver() : _observers = {};

  void addObserver(BlocObserver observer) {
    _observers.add(observer);
  }

  void removeObserver(BlocObserver observer) {
    _observers.remove(observer);
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);

    for (final observer in _observers) {
      observer.onCreate(bloc);
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    for (final observer in _observers) {
      observer.onChange(bloc, change);
    }
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    for (final observer in _observers) {
      observer.onEvent(bloc, event);
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    for (final observer in _observers) {
      observer.onTransition(bloc, transition);
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    for (final observer in _observers) {
      observer.onError(bloc, error, stackTrace);
    }
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);

    for (final observer in _observers) {
      observer.onClose(bloc);
    }
  }
}
