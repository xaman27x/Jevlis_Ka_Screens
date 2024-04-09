import 'package:flutter/material.dart';
// Add the widgets you wish to display

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Main Screen'),
        ),
        body: Center(
          child: // To Test Widgets,
        ),
      ),
    );
  }
}
