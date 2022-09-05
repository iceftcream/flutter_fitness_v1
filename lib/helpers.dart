import 'dart:math';

final Map<int, String> daysOfWeek = {
  1: 'Mon',
  2: 'Tue',
  3: 'Wed',
  4: 'Thu',
  5: 'Fri',
  6: 'Sat',
  7: 'Sun',
};

//min 5, max 10
int randBetween(int min, int max) {
  return Random().nextInt(max - min) + min;
}

String formatNumber(int number) {
  return number.toString();
}
