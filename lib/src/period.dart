class Period {
  int _years;
  int _months;
  int _days;
  int _hours;
  int _minutes;
  int _seconds;
  
  num get years => _years;
  num get months => _months;
  num get days => _days;
  num get hours => _hours;
  num get minutes => _minutes;
  num get seconds => _seconds;
  
  Period({int years: 0,
          int months: 0,
          int days: 0,
          int hours: 0,
          int minutes: 0,
          int seconds: 0}) :
          _years = years,
          _months = months,
          _days = days,
          _hours = hours,
          _minutes = minutes,
          _seconds = seconds;
  
  DateTime add(DateTime input) {
    return new DateTime(input.year + _years, input.month + _months,
                        input.day + _days, input.hour + _hours,
                        input.minute + _minutes, input.second + _seconds);
  }
  
  DateTime subtract(DateTime input) {
      return new DateTime(input.year - _years, input.month - _months,
                          input.day - _days, input.hour - _hours,
                          input.minute - _minutes, input.second - _seconds);
  }
          
}