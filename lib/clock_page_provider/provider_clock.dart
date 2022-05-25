import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget/clock_page_provider/clock_page_provider.dart';

class ProviderClock extends StatefulWidget {
  const ProviderClock({Key? key}) : super(key: key);

  @override
  State<ProviderClock> createState() => _ProviderClockState();
}

class _ProviderClockState extends State<ProviderClock> {
  @override

    void initState() {
    Timer.periodic(const Duration(seconds: 1), (t) {
      ///mounted is use for mount the state
      if(mounted) {
        ///timeInfo is temporary variable which we can use access updatedTime functions
        var timeInfo = Provider.of<ClockPageProvider>(context, listen: false);
        timeInfo.updatedTime();
        //print("${timeInfo.timeString()}");
      }});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''
              'current time'),
        ),
        body: Center(
          ///Consumer is an object in the Provider library
            child: Consumer<ClockPageProvider>(builder: (context, provider, child) {
                  print(provider.timeString());
                  return Text(
                  provider.timeString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
              );
            }),
          ),
        );
  }
}
