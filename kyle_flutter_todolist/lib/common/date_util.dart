extension DateTimeExtension on DateTime {
  bool isThisMonth(DateTime date) {
    return this.year == date.year && this.month == date.month;
  }

  /// 转换为年月日
  DateTime convertToDate() {
    return DateTime(year, month, day);
  }
}
