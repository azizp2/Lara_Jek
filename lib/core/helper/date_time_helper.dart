import 'package:intl/intl.dart';

class DateTimeHelper {
  static String formatDateTime(
      {DateTime? dateTime, String format = 'd MMM yyyy'}) {
    if (dateTime == null) return '';
    return DateFormat(format, 'id').format(dateTime);
  }

  static String reformatDateTimeFromString(
      {required String dateTimeString, String format = 'd MMM yyyy'}) {
    if (dateTimeString.isEmpty) return '';
    DateTime dateTime = DateTime.parse(dateTimeString);
    return DateFormat(format, 'id').format(dateTime);
  }
}
