import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("DrawerExample"),backgroundColor: Colors.purpleAccent,),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Row(
                children: [
                  const DrawerHeader(
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg"),
                    ),
                  ),
                  Column(
                    children: [
                      Text("Name : ",textAlign:TextAlign.right ),
                      SizedBox(height: 10,),
                      Text("Email : ",textAlign:TextAlign.right ),
                      SizedBox(height: 10,),
                      Text("Phone : ",textAlign:TextAlign.right ),

                    ],
                  )
                ],
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 3'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ],
          ),

        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
