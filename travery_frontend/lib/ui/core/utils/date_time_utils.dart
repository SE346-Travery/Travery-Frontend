import 'package:intl/intl.dart';

class DateTimeUtils {
  static final DateFormat _dateFormat = DateFormat('dd/MM/yyyy');
  static final DateFormat _dateTimeFormat = DateFormat('HH:mm, dd/MM/yyyy');
  static final DateFormat _timeFormat = DateFormat('HH:mm');
  static final DateFormat _vietnameseMonthYear = DateFormat("d 'Tháng' M, yyyy");
  static final DateFormat _vietnameseDateRange = DateFormat("d MMMM", 'vi');
  static final DateFormat _fullVietnameseDate = DateFormat("d 'Tháng' M, yyyy", 'vi');

  static String formatDate(DateTime date) {
    return _dateFormat.format(date);
  }

  static String formatDateTime(DateTime dateTime) {
    return _dateTimeFormat.format(dateTime);
  }

  static String formatTime(DateTime time) {
    return _timeFormat.format(time);
  }

  static String formatVietnameseDate(DateTime date) {
    return _fullVietnameseDate.format(date);
  }

  static String formatDateRange(DateTime start, DateTime end) {
    if (start.year == end.year && start.month == end.month && start.day == end.day) {
      return _fullVietnameseDate.format(start);
    }

    if (start.year == end.year && start.month == end.month) {
      return '${start.day} - ${end.day} ${_vietnameseDateRange.format(end).substring(_vietnameseDateRange.format(end).indexOf(' '))}';
    }

    final startStr = _fullVietnameseDate.format(start);
    final endStr = _fullVietnameseDate.format(end);
    return '$startStr - ${end.day} ${endStr.substring(endStr.indexOf(' '))}';
  }

  static String formatVietnameseMonth(DateTime date) {
    return _vietnameseMonthYear.format(date);
  }
}
