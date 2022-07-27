import 'package:flutter/material.dart';

class PlayerInfo extends ChangeNotifier {
  final _data = {};
  String get avatar => _data['avatar'] ?? '';
  String get name => _data['name'] ?? '';
  String get chooseNow => _data['chooseNow'] ?? '';

  PlayerInfo(Map e) {
    _data.addAll(e);
  }
}
