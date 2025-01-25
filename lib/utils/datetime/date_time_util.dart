import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../constants/app_colors.dart';

class DateTimeHelper {

  
  static String getFormattedDateSimple(int time)
  {
    DateFormat newFormat = DateFormat("yyyy-MM-dd");
    return newFormat.format(DateTime.fromMillisecondsSinceEpoch(time));
  }
  static String getDateTimeToString(DateTime data)
  {
    DateFormat newFormat = DateFormat("yyyy-MM-dd");
    return newFormat.format(data);
  }
  static int convertMonthToNumber(String month)
  {
    int monthN= 1;
    switch (month)
        {
      case "January" : monthN = 1;
      case "February" : monthN=  2;
      case "March" : monthN = 3;
      case "April" : monthN =  4;
      case "May" : monthN = 5;
      case "June" : monthN = 6;
      case "July" : monthN = 7;
      case "August" : monthN = 8;
      case "September" : monthN = 9;
      case "October" : monthN = 10;
      case "November" : monthN = 11;
      case "December" : monthN = 12;
        }
        return monthN;
  }
  static String convertMonthToDate(int month)
  {
    if (month == 01) {
      return 'January';
    } else if (month == 02) {
      return 'February';
    } else if (month == 03) {
      return 'March';
    } else if (month == 04) {
      return 'April';
    } else if (month == 05) {
      return 'May';
    } else if (month == 06) {
      return 'June';
    } else if (month == 07) {
      return 'July';
    } else if (month == 08) {
      return 'August';
    } else if (month == 09) {
      return 'September';
    } else if (month == 10) {
      return 'October';
    } else if (month == 11) {
      return 'November';
    } else {
      return 'December';
    }
  }
  static String getCurrentDate()
  {
    var now = DateTime.now();
    final dateFormatter = DateFormat('yyyy-MM-dd');

    String formattedDate = dateFormatter.format(now);
    return formattedDate;
  }
  static String getCurrentTime()
  {
    var now = DateTime.now();
    final timeFormatter = DateFormat('h:mma');
    String formattedDate = timeFormatter.format(now);
    return formattedDate;
  }
  static int differenceTwoDates(DateTime from, DateTime to)
  {

      from = DateTime(from.year, from.month, from.day);
      to = DateTime(to.year, to.month, to.day);
      return (to.difference(from).inHours / 24).round();

  }
  static int getCurrentTimestamp()
  {
    int timestamp = DateTime.now().millisecondsSinceEpoch;
    return timestamp;
  }
  static String getCurrentDateTime()
  {
    int timestamp = DateTime.now().millisecondsSinceEpoch;

    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);

    final dateFormatter = DateFormat('yyyy-MM-dd');
    final timeFormatter = DateFormat('HH:mma');

    final formattedDate = dateFormatter.format(dateTime);
    final formattedTime = timeFormatter.format(dateTime);
    return  "$formattedDate ( $formattedTime )";
  }
  static String convertDateTimeTo24HourFormat(String convertDate,String time)
  {
    DateTime date= DateFormat("hh:mma").parse(time);
    String convertTime =DateFormat("HH:mm").format(date);
    return "$convertDate $convertTime";
  }
  static String convertStringTo24HourFormat(String convertDateTime)
  {
    DateTime date= DateFormat("yyyy-MM-dd hh:mma").parse(convertDateTime);
    return DateFormat("yyyy-MM-dd HH:mm").format(date);
  }
  static String getDifferentBetweenDate(DateTime fromDate ,DateTime toDate)
  {
    DateTime a = DateTime(fromDate.year, fromDate.month, fromDate.day, fromDate.hour, fromDate.minute);
    DateTime b = DateTime(toDate.year, toDate.month, toDate.day, toDate.hour, toDate.minute);


    Duration difference = b.difference(a);

    int days = difference.inDays;
    int hours = difference.inHours % 24;
    int minutes = difference.inMinutes % 60;
    int seconds = difference.inSeconds % 60;

    print("Days  ==$days day(s) $hours hour(s) $minutes minute(s) $seconds second(s).");

    return "$days day $hours hour $minutes min";
  }
  static Future<TimeOfDay?> showDialogTimePicker(BuildContext context) async
  {

    Future<TimeOfDay?>  selectedTime = showTimePicker(
      context: context,
      initialEntryMode : TimePickerEntryMode.inputOnly,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.primary,
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );
   return selectedTime;
  }
  static String getTimePickerResult(TimeOfDay selectedTime)
  {
    DateTime tempDate = DateFormat("hh:mm").parse("${selectedTime.hour}:${selectedTime.minute}");
    return  DateFormat('h:mma').format(tempDate);
  }
  static Future<DateTime?> showDialogDatePicker(BuildContext context) async
  {

    Future<DateTime?>  selectedDate = showDatePicker(
      context: context,
      helpText: 'Your Date of Birth',
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme:   ColorScheme.light(
              primary: AppColors.primary,
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );

    return selectedDate;
  }
  static String getDatePickerResult(DateTime time)
  {
    return  getFormattedDateSimple(time.millisecondsSinceEpoch);
  }
}