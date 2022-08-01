import 'package:flutter/material.dart';

class MatchDetailsInfo extends ChangeNotifier {
  final _data = {};
  String get stadium => _data['stadium'] ?? '';
  String get day => _data['day'] ?? '';
  String get teamA => _data['teamA'] ?? '';
  String get teamB => _data['teamB'] ?? '';
  String get time => _data['time'] ?? '';
  String get duration => _data['duration'] ?? '';
  String get colorA => _data['colorA'] ?? '';
  String get colorB => _data['colorB'] ?? '';

  MatchDetailsInfo(Map e) {
    _data.addAll(e);
  }
}
