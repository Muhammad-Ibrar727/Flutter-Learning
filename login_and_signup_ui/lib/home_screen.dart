import 'package:flutter/material.dart';
import 'package:multi_role_app/loginscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text('Sign Up'),),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/bg.png'), fit: BoxFit.cover)),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                    flex: 3,
                    child:  Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome Back!',
                            style: TextStyle(color: Colors.white, fontSize: 34),
                          ),
                          SizedBox(height: 15,),
                          Text(
                              'Enter personal details to your \n employee account',
                              style: TextStyle(color: Colors.white, fontSize: 16,),textAlign: TextAlign.center,)
                        ],
                      ),
                    ),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context,LoginScreen.id);
                            },
                            child: const SizedBox(
                                height: 70,
                                width: 60,
                                child: Center(
                                    child: Text(
                                  'Log In',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ))),
                          ),
                        ),
                      
                        Expanded(
                          child: Container(
                              height: 70,
                              width: 60,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40))),
                              child: const Center(
                                  child: Text(
                                'Sign Up',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.blue),
                              ))),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
