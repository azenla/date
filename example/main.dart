import 'package:date/date.dart' as date;

void main() {
  var out = date.parse("today");
  print("${out.month}-${out.day}-${out.year}");
}
