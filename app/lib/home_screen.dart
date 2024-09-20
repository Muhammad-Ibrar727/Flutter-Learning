import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = 'HomeScreen'; // Define the route id

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        children: [
          // AnimatedTextKit(
          //   animatedTexts: [
          //     // FadeAnimatedText('Hello')
          //     RotateAnimatedText('Hello')
          //   ],
          //   totalRepeatCount: 9,
          // ),

//           Row(
//   mainAxisSize: MainAxisSize.min,
//   children: <Widget>[
//     const SizedBox(width: 20.0, height: 100.0),
//     const Text(
//       'Be',
//       style: TextStyle(fontSize: 43.0),
//     ),
//     const SizedBox(width: 20.0, height: 100.0),
//     DefaultTextStyle(
//       style: const TextStyle(
//         fontSize: 40.0,
//         fontFamily: 'Horizon',
//       ),
//       child: AnimatedTextKit(
//         animatedTexts: [
//           RotateAnimatedText('AWESOME'),
//           RotateAnimatedText('OPTIMISTIC'),
//           RotateAnimatedText('DIFFERENT'),
//         ],
//         onTap: () {
//           print("Tap Event");
//         },
//       ),
//     ),
//   ],
// ),

// SizedBox(
//   width: 250.0,
//   child: DefaultTextStyle(
//     style: const TextStyle(
//       fontSize: 32.0,
//       fontWeight: FontWeight.bold,
//     ),
//     child: AnimatedTextKit(
//       animatedTexts: [
//         FadeAnimatedText('do IT!'),
//         FadeAnimatedText('do it RIGHT!!'),
//         FadeAnimatedText('do it RIGHT NOW!!!'),
//       ],
//       onTap: () {
//         print("Tap Event");
//       },
//     ),
//   ),
// ),

          Center(
            child: SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 70.0,
                  fontFamily: 'Canterbury',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    ScaleAnimatedText('Think'),
                    ScaleAnimatedText('Build'),
                    ScaleAnimatedText('Ship'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
          ),

          Center(
            child: SizedBox(
              width: 400.0,
              child: TextLiquidFill(
                text: 'LIQUIDY',
                waveColor: Colors.blueAccent,
                boxBackgroundColor: Colors.redAccent,
                textStyle: const TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 300.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
