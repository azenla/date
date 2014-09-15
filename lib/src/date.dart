part of date;

DateTime parse(String input) {
  input = input.toLowerCase();
  DateTime out;
  var now = new DateTime.now();
  if (input == "tomorrow") {
    out = tomorrow();
  } else if (input == "today") {
    out = today();
  } else if (input == "yesterday") {
    out = yesterday();
  } else if (input.startsWith("next ")) {
    var split = input.split(" ");
    if (split[1] == "year") {
      out = nextYear();
    } else {
      throw new FormatException();
    }
  } else {
    throw new FormatException();
  }
  return out;
}

DateTime yesterday() => addDay(today(), -1);

DateTime today() => new DateTime.now();

DateTime tomorrow() => addDay(today(), -1);

DateTime addDay(DateTime time, int days) => addTime(time, new Duration(days: days));

DateTime nextYear() => addYear(today(), 1);

DateTime addYear(DateTime time, int years) => addTime(time, new Duration(days: 365 * years));

DateTime addTime(DateTime time, Duration duration) => time.subtract(duration);
