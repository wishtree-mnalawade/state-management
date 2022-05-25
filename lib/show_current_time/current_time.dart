import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class CurrentTime extends StatefulWidget {
  const CurrentTime({Key? key}) : super(key: key);
  @override
  State<CurrentTime> createState() => _CurrentTimeState();
}

class _CurrentTimeState extends State<CurrentTime> {

  String _timeString="";

  void _getTime() {
    final String formattedDateTime =
    DateFormat(' hh:mm:ss').format(DateTime.now()).toString();
    setState(() {
      _timeString = formattedDateTime;
      print(_timeString);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      if(mounted){
      _getTime();}});
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    print("timer init");
    return Container(
      child: Text(
        _timeString.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
