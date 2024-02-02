import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,    
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
            padding: EdgeInsets.all(10),
        children: [
          Container(
    padding: const EdgeInsets.all(8),
      color: Colors.redAccent[100],
      child: const Text("Grid1"),
    ),
    Container(
    padding: const EdgeInsets.all(8),
    color: Colors.redAccent[200],
    child: const Text('Grid2'),
    ),
    ]
    ),
    );
  }
}
