part of date;

class Period {
  final int years;
  final int months;
  final int days;
  final int hours;
  final int minutes;
  final int seconds;

  const Period({this.years: 0, this.months: 0, this.days: 0, this.hours: 0, this.minutes: 0, this.seconds: 0});

  DateTime add(DateTime input) =>
      new DateTime(input.year + years, input.month + months, input.day + days, input.hour + hours, input.minute + minutes, input.second + seconds);

  DateTime subtract(DateTime input) =>
      new DateTime(input.year - years, input.month - months, input.day - days, input.hour - hours, input.minute - minutes, input.second - seconds);
}
