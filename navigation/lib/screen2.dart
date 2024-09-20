import 'package:flutter/material.dart';
// import 'package:justapp/home_screen.dart';


class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff764abc),
        title: const Text('Chats',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 40,
              itemBuilder:(context,index){
                return const ListTile(
                    leading:CircleAvatar(
                      backgroundImage: AssetImage('images/profile.jpeg')
                      ),
                    title: Text('Muhammad Ibrar'),
                    subtitle: Text('Hello'),
                    trailing: Text('5:50pm'),
                    
                   
                  );
                  
              } ),
          )
        ],
      ),
    );
  
  }
}