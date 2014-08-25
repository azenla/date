library date.date;

import 'dart:core';
import 'src/period.dart';

class Date {

  static DateTime parse(String input) {
    input = input.toLowerCase();
    DateTime out;
    DateTime now = new DateTime.now();
    if (input == "tomorrow") {
      out = tomorrow(now);
    }
    else if (input == "today") {
      out = today(now);
    }
    else if (input == "yesterday") {
      out = yesterday(now);
    }
    else if (input.startsWith("next "))
    {
      List<String> split = input.split(' ');
      if (split[1] == "year")
      {
        out = nextYear(now);
      }
      else {
        throw "(date syntax error)";
      }
    }
    else {
      throw "(date syntax error)";
    }
    return out;
  }
  
  static DateTime yesterday(DateTime dt) {
    return addDay(new DateTime(dt.year, dt.month, dt.day), -1);
  }
  
  static DateTime today(DateTime dt) {
    return new DateTime(dt.year, dt.month, dt.day);
  }
  
  static DateTime tomorrow(DateTime dt) {
    return addDay(new DateTime(dt.year, dt.month, dt.day), 1);
  }
  
  static DateTime addDay(DateTime dt, int days) {
    return addTime(dt, new Period(days: days));
  }
  
  static DateTime nextYear(DateTime dt) {
    return addYear(new DateTime(dt.year), 1);
  }
  
  static DateTime addYear(DateTime dt, int years) {
    return addTime(dt, new Period(years: years));
  }
  
  static DateTime addTime(DateTime dt, Period p) {
    return p.add(dt);
  }
}
