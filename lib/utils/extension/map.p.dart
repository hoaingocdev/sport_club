extension MapEx on Map {
  Map? getMap(dynamic key) {
    final f = get(key);
    return f is Map ? f : null;
  }

  List<T>? getList<T>(dynamic key) {
    final f = get(key);
    if (f is List) {
      try {
        return f.cast<T>().toList();
      } catch (_) {}
    }
    return null;
  }

  dynamic get(dynamic key) => this[key];

  T value<T>(dynamic key, {required T def}) {
    final t = get(key);
    return t is T ? t : def;
  }

  String str(dynamic key, {String def = ''}) {
    return value<String>(key, def: def);
  }

  int gInt(dynamic key, {int def = 0}) {
    return value<int>(key, def: def);
  }

  double gDouble(dynamic key, {double def = 0.0}) {
    return value<double>(key, def: def);
  }

  bool gBool(dynamic key, {bool def = false}) {
    return value<bool>(key, def: def);
  }

  Map gMap(dynamic key, {Map def = const {}}) {
    return value<Map>(key, def: def);
  }

  List gList(dynamic key, {List def = const []}) {
    return value<List>(key, def: def);
  }

  void addAllSafe(Map? other) {
    if (other != null) {
      addAll(other);
    }
  }

  void clearAddAllSafe(Map? other) {
    clear();
    addAllSafe(other);
  }
}
