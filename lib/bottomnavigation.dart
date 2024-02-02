import 'package:flutter/material.dart';

void main() {
  runApp(BottomNavigationBar1());
}

class BottomNavigationBar1 extends StatelessWidget {
  // const BottomNavigationBar1(List<BottomNavigationBarItem> list, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const TextStyle Design = TextStyle(fontSize: 30, color: Colors.red);
  List<Widget> option = <Widget>[
    Text(
      'Index 0: Home',
      style: Design,
    ),
    Text(
      'Index 1: Search',
      style: Design,
    ),
    Text(
      'Index 2: Post',
      style: Design,
    ),
    Text(
      'Index 3: Chat',
      style: Design,
    ),
    Text(
      'Index 4: Phone',
      style: Design,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items;
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: option.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'Post',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Colors.black12,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_rounded),
            label: 'Phone',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        //fixedColor: Colors.blueAccent,
      ),
    );
  }
}
