import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Center(child: Text('Merry Christmas',style: TextStyle(color: Colors.red,fontSize: 25,),)),
            Lottie.asset('assets/animation.json'),
          ],
        ),
        ),
      );

  }
}
