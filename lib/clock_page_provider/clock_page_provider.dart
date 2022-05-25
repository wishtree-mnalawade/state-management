import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockPageProvider extends ChangeNotifier{

    String formattedDateTime = "";
    String timeString() => formattedDateTime;

    updatedTime(){
      formattedDateTime = DateFormat('hh:mm:ss').format(DateTime.now()).toString();
      //print(formattedDateTime);
      notifyListeners();
      /// notifyListeners work like setState.
    }
  }
