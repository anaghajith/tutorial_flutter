import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('GridView with Cards'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              shadowColor: Colors.yellowAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit, size: 50),
                  SizedBox(height: 10),
                  Text('Card $index'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

