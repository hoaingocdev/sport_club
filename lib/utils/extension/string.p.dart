import 'package:intl/intl.dart';

extension StringEx on String {
  DateFormat dateFmt() => DateFormat(this);

  DateTime? dateTime([String inFormat = 'yyyy-MM-dd HH:mm:ss']) {
    if (isEmpty) {
      return null;
    }
    try {
      return inFormat.dateFmt().parse(this, true);
    } catch (_) {
      return null;
    }
  }

  int toInt() => int.tryParse(this) ?? 0;
  double toDouble() => double.tryParse(this) ?? 0;

  String safe(String placeholder) {
    if (isEmpty) {
      return placeholder;
    }
    return this;
  }
}
