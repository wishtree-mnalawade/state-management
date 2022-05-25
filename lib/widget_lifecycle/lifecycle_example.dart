import 'dart:async';
import 'package:flutter/material.dart';
import '../loading_screen/loading_spinner.dart';
import '../show_current_time/current_time.dart';


class WidgetLifecycle extends StatefulWidget {


  @override
  State<WidgetLifecycle> createState() => _WidgetLifecycleState();

}

class _WidgetLifecycleState extends State<WidgetLifecycle> {
  bool flag = false;
  int count= 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState is run');
    Timer(Duration(seconds: 5),() => setState(() {
      flag = true;
    }));
  }
  @override
  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CurrentTime()),
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
      appBar: AppBar(
        title: Text('Widget Lifecycle'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            flag == true?CurrentTime():LoadingSpinner(),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  count=count+1;
                });
              },
              child: Text(
                'Count $count'
              ),
            ),
          ],
        ),
      ),

    );
  }
}
