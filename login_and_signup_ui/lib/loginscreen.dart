import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String id = 'LoginScreen';
  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 720,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bg.png'), fit: BoxFit.cover)),
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Container(
          margin: const EdgeInsets.only(top: 150),
          width: 720,
          height: 613,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text('Welcome back',style: TextStyle(fontSize: 24,color: Colors.blue),),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 25
                ),
                
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: const Color.fromARGB(255, 238, 238, 238),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 238, 238, 238),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 238, 238, 238),
                          ),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical:10
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: const Color.fromARGB(255, 238, 238, 238),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 238, 238, 238),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 238, 238, 238),
                          ),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.check_box,color: Colors.blue,),
                    SizedBox(
                      width: 4,
                    ),
                    Text('Remember me'),
                    SizedBox(
                      width: 75,
                    ),
                    Text(
                      'Forget Password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.only(top: 30,bottom: 30),
                child: const Center(
                    child: Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white),
                )),
              ),
              
              const Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Sign up with'),
                  ),

                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 30,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.facebook,size: 40,color: Colors.blue,),
                  Icon(Icons.tiktok,size: 40,),
                  Icon(Icons.g_mobiledata,size: 40,color: Colors.red,),
                  Icon(Icons.apple,size: 40,),
                ],
              ),

                const SizedBox(height: 20,),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  Text(
                    'Sign up',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    ));
  }
}
