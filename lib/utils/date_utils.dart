import 'package:intl/intl.dart';

String formatearDiaYHora(
  String date,
  String hour,
) {
  var now = DateTime.parse('$date $hour\Z');
  var formatter = DateFormat('MMM dd, yyyy - H:mm');
  String formatted = formatter.format(now);
  return formatted;
}
