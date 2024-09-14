import 'package:flutter/material.dart';
import 'package:justapp/screen2.dart';
// import 'package:justapp/screen2.dart';

class HomeScreen extends StatefulWidget {
  static const String id ='home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              // onPressed: (){
              //   Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
              // },
              onPressed: (){
                Navigator.pushNamed(context, ScreenTwo.id);
              },
              child: const Text('screen2')),
          )
        ],
      ),
    );
  }
}