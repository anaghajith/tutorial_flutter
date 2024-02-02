import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class CustomWidget extends StatelessWidget {
  final String text;


  CustomWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.blue,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Widget Example'),
        ),
        body: Center(
          child: CustomWidget(text: 'Hello, Custom Widget!'),
        ),
      ),
    );
  }
}