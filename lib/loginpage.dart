import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home : LoginPage(),
    );
  }
}
class LoginPage extends StatelessWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(

                child: const FlutterLogo(
                  size: 200,
                ),
              ),
                SizedBox(
                  height: 30,
                ),

              const TextField(
                obscureText: false,
                decoration: InputDecoration(
                 labelText: "Phone Number"
                ),
              ),
        const TextField(
        obscureText: false,
        decoration: InputDecoration(
            labelText: "Password",
        ),
      ),
     SizedBox(height: 20,),
     ElevatedButton(

         onPressed: (){},
         child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.blue),))
     // const TextField(

     // )
            ],
          ),
        ),
      ),
    );
  }
}



