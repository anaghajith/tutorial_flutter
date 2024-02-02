import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tabbar(),
    );
  }
}
class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 2,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("WhatsApp",style: TextStyle(fontWeight: FontWeight.bold),),
            bottom: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.camera_alt_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.chat),
                  ),
                  Tab(
                    icon: Icon(Icons.call),
                  ),
                ]
            ),

          ),
          body: TabBarView(
              children: [
                Center(child: Text("Camera",style: TextStyle(color: Colors.white),)),
                Center(child: Text("Chat",style: TextStyle(color: Colors.white),)),
                ListView(
                  children: [
                    Container(
                      height: 50,
                      color: Colors.blueGrey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Anagha",style: TextStyle(color: Colors.white,),
                          ),
                          Icon(Icons.call,),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      color: Colors.blueGrey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Anjali",style: TextStyle(color: Colors.white,),
                          ),
                          Icon(Icons.call,),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      color: Colors.blueGrey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Nishba",style: TextStyle(color: Colors.white,),
                          ),
                          Icon(Icons.call,),
                        ],
                      ),
                    )
                  ],
                ),
              ]
          ),

        )
    );
  }
}
