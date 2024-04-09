import 'package:flutter/material.dart';
import 'order_viewing_screen_ui_widget.dart';

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
          child: OrderViewingScreenUiWidget(),
        ),
      ),
    );
  }
}
