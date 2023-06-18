import 'package:timeago/timeago.dart' as timeago;

extension DateTimeX on DateTime {
  String get toTimeAgoString {
    return timeago.format(this).replaceFirst('about a', '1');
  }
}
