import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView.separated(
        padding: EdgeInsets.all(8),
          itemCount:  entries.length,
          itemBuilder: (BuildContext context, int index){
          
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text('Entry ${entries[index]}')),
          );
          }, separatorBuilder: (BuildContext context, int index) {
        return  SizedBox(height: 20);
      },
      ),
    );
  }
}
