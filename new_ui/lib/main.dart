import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('New Ui'),
        ),
        body: const SafeArea(
        child:Center(
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text('💡',style: TextStyle(fontSize: 90),),
              Text('IDEA!'),
            ],
          ),
        )
        ),
      ),
    );
  }
}