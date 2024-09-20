import 'package:app/pincodescreen.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart' as badges;
import 'package:app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Specify the initial route
      routes: {
        '/': (context) => const MyHomePage(),
        HomeScreen.id: (context) => const HomeScreen(), // Register the route here
        PinCode.id: (context) =>  PinCode(), // Register the route here
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Center(
              child: badges.Badge(
                badgeContent: Text('2'),
                child: Icon(Icons.shopping_bag),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.tealAccent,
        title: const Text('Icons Import'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Text('Hello World'),
            const Icon(FontAwesomeIcons.houseMedical),
            const ReadMoreText(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry...',
              trimLines: 2,
              trimMode: TrimMode.Line,
              moreStyle: TextStyle(color: Colors.blue),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.id); // Navigate using the registered route
              },
              child: const Text(
                'Go to AnimationScreen',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, PinCode.id); // Navigate using the registered route
              },
              child: const Text(
                'Go to pincodeScreen',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
