

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListView(
        children: [
          Container(
            height: 70,
            color: Colors.blue,
            child: Center(child: Text("entry 1")),
          ),
          Container(
            height: 70,
            color: Colors.redAccent,
            child: Center(child: Text("entry 2")),
          ),
          Container(
            height: 70,
            color: Colors.green,
            child: Center(child: Text("entry 3")),
          ),
        ],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
