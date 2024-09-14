import 'package:flutter/material.dart';
import 'package:justapp/screen2.dart';
import 'home_screen.dart'; // Import home_screen.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mainApp',
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id :(context)=> HomeScreen(),
        ScreenTwo.id :(context)=> ScreenTwo(),
      },
      // home:const HomeScreen(),
    );
  }
}
