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
          title: Text('Expanded Tile'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              Expanded(
                child: Card(
                  elevation: 4.0,
                  child: ExpansionTile(
                    backgroundColor: Colors.red,
                    title: Text('Expandable Tile'),
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Expanded content goes here'),
                      ),
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}