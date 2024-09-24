import 'package:flutter/material.dart';
import 'package:multi_role_app/home_screen.dart';
import 'package:multi_role_app/loginscreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const HomeScreen(),
      // initialRoute: LoginScreen.id,
      routes: {
        HomeScreen.id :(context)=> const HomeScreen(),
        LoginScreen.id :(context)=> const LoginScreen(),
      },
      );
  }
}