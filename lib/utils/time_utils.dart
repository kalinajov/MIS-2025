String twoDigits(int n) => n.toString().padLeft(2, '0');


String formatDateMk(DateTime dt) {
// dd.MM.yyyy
  return '${twoDigits(dt.day)}.${twoDigits(dt.month)}.${dt.year}';
}


String formatTimeMk(DateTime dt) {

  return '${twoDigits(dt.hour)}:${twoDigits(dt.minute)}';
}

String remainingDaysHours(DateTime from, DateTime to) {
  Duration diff = to.difference(from);
  int totalHours = diff.inHours.abs();
  int days = totalHours ~/ 24;
  int hours = totalHours % 24;
  return '$days дена, $hours часа';
}