import 'dart:io';
import 'package:age/age.dart';
void main() {
  userUI();
}

void userUI() {
  bool findmore = true;
  do {
    try {
      getbirthday();
      stdout.write('\nFind More Birthdays y/n : ');
      var nexttry = stdin.readLineSync();
      (nexttry == 'y') ? findmore = true : findmore = false;
    } catch (e) {
      print('\n Wrong Format');
    }
  } while (findmore);
}

String getbirthday() {
  stdout.write('Enter Birthday (format)  24 3 1989 : ');
  var uip = stdin.readLineSync();
  var l = uip.split(' ');
  int d = int.parse(l[0]);
  int m = int.parse(l[1]);
  int y = int.parse(l[2]);
  AgeDuration age;
  DateTime today = DateTime.now();
  DateTime birthday = DateTime(y, m, d);
  age = Age.dateDifference(
      fromDate: birthday, toDate: today, includeToDate: false);
  print('\nYour Exact age is :   $age  \n');
}
