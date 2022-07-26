import 'package:sport_club/utils/extension/string.p.dart';

extension DateTimeEx on DateTime {
  String format([String fmt = 'dd/MM/yyyy, h:mm:ss a']) {
    try {
      return fmt.dateFmt().format(this);
    } catch (_) {
      return '';
    }
  }

  String dateTimeFmt([String fmt = 'dd/MM/yyyy h:mm:ss']) {
    return format(fmt);
  }

  /// Fmt: dd/MM/yyyy
  String shortFmt([String fmt = 'dd/MM/yyyy']) => format(fmt);

  /// Fmt: dd-MM-yyyy
  String short2Fmt([String fmt = 'dd-MM-yyyy']) => format(fmt);

  DateTime monday([int wk = 1]) {
    return DateTime(year, month, day - (weekday - wk) % 7 + (weekday == DateTime.monday ? -7 : 0));
  }
}

int get millisecondsSinceEpoch => DateTime.now().toUtc().millisecondsSinceEpoch;
