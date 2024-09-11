import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 8;
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'LotteryApp',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('your lottery no is $x')),
            const SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                  color: x == 4? Colors.green.withOpacity(0.3):Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 250,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: x == 4 ? 
                  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.download_done_sharp,
                              color: Colors.green,
                              size: 45,
                            ),
                            Text(
                              'Congratulations you won the lottery and your number is $x',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                        : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           const  Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 45,
                            ),
                            Text(
                              'Better luck next time Your no is $x \n try agin',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(5);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
