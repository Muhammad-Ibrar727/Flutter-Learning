import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text('Whatsapp'),
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ]),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => const [
                        PopupMenuItem(value: 1, child: Text('New Group')),
                        PopupMenuItem(value: 2, child: Text('Setting')),
                        PopupMenuItem(value: 3, child: Text('LogOut')),
                      ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(children: [
            const Text('camera'),
            ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/profile1.png'),
                    ),
                    title: Text('Muhammad Ibrar'),
                    subtitle: Text('Heloo'),
                    trailing: Text('6:30pm'),
                  );
                }),
            ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  if (index == 0 || index<4) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(index == 0?'New Updates':''),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 4,
                                    color: Colors.green,
                                  )),
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/profile1.png'),
                              ),
                            ),
                            title: const Text('Muhammad Ibrar'),
                          ),
                        ],
                      ),
                    );
                  } 
                
                  else 
                  {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              // color: Colors.green,
                            )),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('images/profile1.png'),
                        ),
                      ),
                      title: const Text('Muhammad Ibrar'),
                    );
                  }
                }),
            ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  int x = 2;
                  return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('images/profile1.png'),
                      ),
                      title: const Text('Muhammad Ibrar'),
                      subtitle: Text(index % x == 0
                          ? 'you missed audio call'
                          : 'you missed video call'),
                      trailing: Icon(index % x == 0
                          ? Icons.phone
                          : Icons.video_call_rounded));
                }),
          ]),
        ));
  }
}
