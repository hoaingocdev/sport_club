import 'package:flutter/foundation.dart';
import 'dart:developer' as dev;

/// Print a string to console.
/// It is better to use then print() because this function generates output in
/// debug mode only.
void debug(dynamic msg) {
  if (!kReleaseMode) {
    // ignore: avoid_print
    if (msg is String) {
      dev.log(msg);
    } else {
      dev.log(msg.toString());
    }
  }
}
