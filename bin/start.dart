import 'package:date/date.dart';

void main() {
  DateTime out = Date.parse("today");
  print("${out.month}-${out.day}-${out.year}");
}
