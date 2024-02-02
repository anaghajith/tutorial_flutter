import 'package:flutter/material.dart';

const List<String> list = <String>[
  'PALAKKAD',
  'KOZHIKKODE',
  'THRISSUR',
  'MALAPPURAM'
];

void main() => runApp(const DropdownMenuApp());

class DropdownMenuApp extends StatelessWidget {
  const DropdownMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'DropdownMenu',
              style: TextStyle(color: Colors.blue),
            )),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blueGrey,
                Colors.grey,
                Colors.lightGreen,
                Colors.orange,
                Colors.black12,
                Colors.greenAccent,
              ],
              tileMode: TileMode.mirror,),
          ),
          child: const Center(
            child: DropdownMenuExample(),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
