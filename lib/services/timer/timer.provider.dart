// ignore_for_file: public_member_api_docs, always_specify_types

import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logger/logger.provider.dart';
import '../logger/system_logger.dart';

//TimerService start a interval hearbeat with configs interval
final timerServiceProvider = Provider<TimerService>((ref) {
  return TimerServiceImpl(
    ref.read(loggerServiceProvider),
    const Duration(seconds: 1),
  );
});

/// TimerService handler for interval heartbeat request
/// we can start, stop and reset timer service with this interface
abstract class TimerService {
  Stream<int>? tickerListener();
  void startService();
  void stopService();
  void resetService();
}

class TimerServiceImpl extends TimerService {
  TimerServiceImpl(this.logger, this.duration);
  StreamController<int>? timer = StreamController.broadcast();
  StreamSubscription<int>? timerSubscription;
  final SystemLogger logger;
  final Duration duration;

  @override
  Stream<int>? tickerListener() {
    return timer?.stream;
  }

  @override
  void resetService() {
    timer?.close();
    timerSubscription?.cancel();
    timer = StreamController.broadcast();
    timerSubscription =
        Stream.periodic(duration, (int i) => i).listen((int value) {
      timer?.sink.add(value);
      // logger.d('value: $value, time: ${DateTime.now()}');
    });
  }

  @override
  void startService() {
    timer = StreamController.broadcast();
    timerSubscription =
        Stream.periodic(duration, (int i) => i).listen((int value) {
      timer?.sink.add(value);
      // logger.d('value: $value, time: ${DateTime.now()}');
    });
  }

  @override
  void stopService() {
    timer?.close();
    timerSubscription?.cancel();
  }
}
