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
        backgroundColor:const Color(0xffffffff),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Center(child: Text('Tortori App',style: TextStyle(color: Colors.white),)),
        ),
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('images/logo.png'),)
                ],
              ),
              const SizedBox(height: 20,),
              const Text('Log In',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xff2d353e)),),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Row(children: [Text('Email or Phone',style: TextStyle(color: Color(0xff787c89)))],),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    // labelText: 'Email',
                    prefixIcon: const Icon(Icons.email_outlined),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1
                      ),
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Row(children: [Text('Password',style: TextStyle(color: Color(0xff787c89)))],),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    // labelText: 'Email',
                    prefixIcon: const Icon(Icons.lock_outline),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    suffixIcon: const Icon(Icons.visibility_off_outlined)
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: Row(children: [Text('Forget Password?',style: TextStyle(color: Color(0xff787c89)),)],),
              ),
              const SizedBox(height: 25,),
              Container(
                width: 340,
                height: 51,
                decoration: BoxDecoration(
                  color:const Color(0xffd35c0c),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: const Center(child: Text('Log In',style: TextStyle(color: Color.fromARGB(255, 238, 238, 238),fontSize: 19))),
              ),
              const SizedBox(height: 15,),
              RichText(text:const TextSpan(
                text: 'Don\'t have and account? ',
                style: TextStyle(color: Colors.black,fontSize: 17),
                children: [
                  TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(color: Colors.blue,fontSize: 17,decoration: TextDecoration.underline),
                  )
                ]
              )),
              const SizedBox(height: 15,),
              const Text('Or,',),
              const SizedBox(height: 15,),
              Container(
                width: 340,
                height: 51,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: const Color.fromARGB(255, 122, 121, 121))
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.g_mobiledata_outlined,color: Colors.blue,size: 40,),
                    Text('Sign in with Google',style: TextStyle(fontSize: 14,color: Colors.black),)
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                width: 340,
                height: 51,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.apple,color: Colors.white,size: 40,),
                    Text('Sign in with Apple',style: TextStyle(fontSize:14,color: Colors.white),)
                  ],
                ),
              ),
            ],
          ) 
        ),
      ),
    );
  }
}