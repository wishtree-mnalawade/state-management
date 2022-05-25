import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget/clock_page_provider/clock_page_provider.dart';
import 'package:widget/show_current_time/current_time.dart';
import 'package:widget/widget_lifecycle/lifecycle_example.dart';

import 'clock_page_provider/provider_clock.dart';

void main() => runApp( MaterialApp(
  home: Homepage()
));



class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height:30 ,
            ),
           MaterialButton(
             color: Colors.blue,
             onPressed: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) =>  WidgetLifecycle()),
               );

           },
           child: Text(
             'state clock'
           ),),
            SizedBox(
              height:30 ,
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ChangeNotifierProvider(
                    create: (BuildContext context) => ClockPageProvider(),
                    child: const ProviderClock(),
                  ),),
                );

              },
              child: Text(
                  'provider clock'
              ),)
          ],
        ),
      ),
    );
  }
}
