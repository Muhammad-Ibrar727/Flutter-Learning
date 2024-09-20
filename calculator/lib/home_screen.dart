import 'package:calculator/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var userinput = '';
  var answer = '';
class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 4, 43, 53),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30,right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            userinput.toString(),
                            style: const TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                       const SizedBox(height: 10,),
                        Text(
                          answer.toString(),
                          style: const TextStyle(fontSize: 30, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          MyButton(
                            title: 'AC',
                            onPress: () {
                              userinput = '';
                              answer = ''; 
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '+/-',
                            onPress: () {
                              userinput += '+/-';
                              setState(
                                  () {}); // Call setState after updating userinput
                            },
                          ),
                          MyButton(
                            title: '%',
                            onPress: () {
                              userinput += '%';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '/',
                            color: const Color(0xffffa00a),
                            onPress: () {
                              userinput += '/';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            title: '7',
                            onPress: () {
                              userinput += '7';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '8',
                            onPress: () {
                              userinput += '8';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '9',
                            onPress: () {
                              userinput += '9';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: 'x',
                            color: const Color(0xffffa00a),
                            onPress: () {
                              userinput += '*';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            title: '4',
                            onPress: () {
                              userinput += '4';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '5',
                            onPress: () {
                              userinput += '5';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '6',
                            onPress: () {
                              userinput += '6';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '-',
                            color: const Color(0xffffa00a),
                            onPress: () {
                              userinput += '-';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            title: '1',
                            onPress: () {
                              userinput += '1';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '2',
                            onPress: () {
                              userinput += '2';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '3',
                            onPress: () {
                              userinput += '3';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '+',
                            color: const Color(0xffffa00a),
                            onPress: () {
                              userinput += '+';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                            title: '0',
                            onPress: () {
                              userinput += '0';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '.',
                            onPress: () {
                              userinput += '.';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: 'DEL',
                            onPress: () {
                              if (userinput.isNotEmpty) {
                                userinput = userinput.substring(0,userinput.length - 1 ); // Delete last character
                              }
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '=',
                            color: const Color(0xffffa00a),
                            onPress: () {
                              equalpress();
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}


void equalpress(){
  Parser p = Parser();
  Expression expression = p.parse(userinput);
  ContextModel model = ContextModel();

  double eval = expression.evaluate(EvaluationType.REAL, model);
  answer = eval.toString();
}