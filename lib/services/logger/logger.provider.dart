import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'system_logger.dart';

// This provider is used to create a new instance of the SystemLogger class.
final loggerServiceProvider = Provider<SystemLogger>((ref) {
  // The SystemLogger class is a simple class that logs messages to the console.
  return SystemLogger();
});
