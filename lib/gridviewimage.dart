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
   MyHomePage({Key? key}) : super(key: key);
  List a = ["https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(12),
          child: GridView.builder(
            itemCount: a.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              //childAspectRatio: 10
            ),
            itemBuilder: (BuildContext context, int index){
              return Image.network(a[index]);
            },
          )),

    );
  }
}

