// ignore_for_file: always_specify_types

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// A logger that logs messages to the console.
class SystemLogger extends Logger {
  SystemLogger()
      : super(
          filter:
              // Use the default LogFilter (-> only log in debug mode)
              SystemFilter(),
          printer: PrefixPrinter(
            PrettyPrinter(
              colors: false,
            ),
          ), // Use the PrettyPrinter to format and print log
          output:
              null, // Use the default LogOutput (-> send everything to console)
        );
}

// A custom LogFilter that only logs messages in debug mode.
class SystemFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return event.level == Level.debug || !kReleaseMode;
  }
}

// A custom LogPrinter that prefixes log messages with the log level.
class PrefixPrinter extends LogPrinter {
  PrefixPrinter(
    this._realPrinter, {
    debug,
    trace,
    fatal,
    info,
    warning,
    error,
    off,
  }) : super() {
    _prefixMap = <Level, String>{
      Level.debug: debug.toString(),
      Level.trace: trace.toString(),
      Level.fatal: fatal.toString(),
      Level.info: info.toString(),
      Level.warning: warning.toString(),
      Level.error: error.toString(),
      Level.off: off.toString(),
    };
  }
  final LogPrinter _realPrinter;
  late Map<Level, String> _prefixMap;

  @override
  List<String> log(LogEvent event) {
    return _realPrinter
        .log(event)
        .map((String s) => '${_prefixMap[event.level]}$s')
        .toList();
  }
}

// A custom LogPrinter that logs messages to the console.
class SystemPrinter extends LogPrinter {
  @override
  List<String> log(LogEvent event) {
    return <String>[event.message.toString()];
  }
}
