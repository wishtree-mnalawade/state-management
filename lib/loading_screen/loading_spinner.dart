import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingSpinner extends StatefulWidget {
  const LoadingSpinner({Key? key}) : super(key: key);

  @override
  State<LoadingSpinner> createState() => _LoadingSpinnerState();
}

class _LoadingSpinnerState extends State<LoadingSpinner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SpinKitRotatingCircle(
          color: Colors.black,
          size: 50.0,
        ),
      ),
    );
  }
}
