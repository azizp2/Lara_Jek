import 'package:intl/intl.dart';

class NumberHelper {
  static String formatIdr(double param) {
    return 'Rp.${NumberFormat('#,###', 'id').format(param)}';
  }

  static String formatKIdr(int? param) {
    if (param == null)
      return '- K';
    else
      return '${NumberFormat('#,###', 'id').format(param / 1000)} K';
  }
}
