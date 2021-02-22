import 'package:flutter/material.dart';
import 'package:glasswidget/glasswidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text('GlassWidget'),
          centerTitle: true,
        ),
        body: Center(

                                 //Glasscontainer
          child: GlassContainer(
            glasscurve: 30, //giving border curve to glassmorphic container
            glassheight: 200, //giving height to glassmorphic container
            glasswidth: 300, //giving width to glassmorphic container
            glasswidget: //Child widget u can use any flutter widget over here.
                Center(
              child: Text(
                'Hello World',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),


        ),
      ),
    );
  }
}
