import 'package:flutter/material.dart';
import 'package:glasswidgets/glasswidgets.dart';

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
              title: Text('GlassWidgets'),
              centerTitle: true,
            ),
            body: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    //Glasscontainer
                    child: GlassContainer(
                      glasscurve: 30, //giving curve to glassmorphic container
                      glassheight:
                          200, //giving height to glassmorphic container
                      glasswidth: 300, //giving width to glassmorphic container
                      glasswidget: //Child widget u can use any flutter widget over here.
                          Center(
                        child: Text(
                          'GlassContainer',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: GlassCircle(
                          glassSize: 150,
                          glasswidget: Center(
                            child: Text(
                              'GlassCircle',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: GlassSquare(
                          glassSize: 150,
                          glasscurve: 10,
                          glasswidget: Center(
                            child: Text(
                              'GlassSquare',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
