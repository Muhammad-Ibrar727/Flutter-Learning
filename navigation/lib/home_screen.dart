import 'package:flutter/material.dart';
import 'package:justapp/screen2.dart';
// import 'package:justapp/screen2.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff764abc),
        title: const Text('Home Page',style: TextStyle(color: Colors.white),),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xffffffff),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
           const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xff764aaa)),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/profile.jpeg')
                    // NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
                    ),
                accountName: Text('Muhammad Ibrar'),
                accountEmail: Text('mohummadibrar727gmail.com')),

                ListTile(
                  leading: const Icon(Icons.home,color: Color(0xff764aba)),
                  title: const Text('Home'),
                  onTap: (){
                    Navigator.pushNamed(context,HomeScreen.id);
                  },
                ),
                
                ListTile(
                  leading: const Icon(Icons.chat,color: Color(0xff764abc)),
                  title: const Text('Chats'),
                  onTap: (){
                    Navigator.pushNamed(context,ScreenTwo.id);
                  },
                ),
                
                ListTile(
                  leading: const Icon(Icons.mail,color: Color(0xff764abc)),
                  title: const Text('Inbox'),
                  onTap: (){
                    Navigator.pushNamed(context,ScreenTwo.id);
                  },
                ),

                ListTile(
                  leading: const Icon(Icons.send,color: Color(0xff764abc)),
                  title: const Text('Outbox'),
                  onTap: (){
                    Navigator.pushNamed(context,ScreenTwo.id);
                  },
                ),

                ListTile(
                  leading: const Icon(Icons.favorite,color: Color(0xff764abc)),
                  title: const Text('Favorite'),
                  onTap: (){
                    Navigator.pushNamed(context,ScreenTwo.id);
                  },
                ),

                ListTile(
                  leading: const Icon(Icons.archive,color: Color(0xff764abc)),
                  title: const Text('Archive'),
                  onTap: (){
                    Navigator.pushNamed(context,ScreenTwo.id);
                  },
                ),

                ListTile(
                  leading: const Icon(Icons.delete,color: Color(0xff764abc),),
                  title: const Text('Bin'),
                  onTap: (){
                    Navigator.pushNamed(context,ScreenTwo.id);
                  },
                ),

                ListTile(
                  leading: const Icon(Icons.logout,color: Color(0xff764abc)),
                  title: const Text('Logout',),
                  onTap: (){
                    Navigator.pushNamed(context,ScreenTwo.id);
                  },
                )
          ],
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
       ],
      ),
    );
  }
}
