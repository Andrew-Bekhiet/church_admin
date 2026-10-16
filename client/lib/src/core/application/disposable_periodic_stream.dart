import 'dart:async';

class DisposablePeriodicStream extends Stream<void> {
  final Duration duration;

  final StreamController<void> _controller = StreamController<void>.broadcast(
    sync: true,
  );

  late final Timer _timer;

  @override
  bool get isBroadcast => _controller.stream.isBroadcast;

  DisposablePeriodicStream(this.duration) {
    _timer = Timer.periodic(duration, (_) => _controller.add(null));
  }

  Future<void> cancel() async {
    _timer.cancel();
    await _controller.close();
  }

  @override
  StreamSubscription<void> listen(
    void Function(void event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return _controller.stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }
}
