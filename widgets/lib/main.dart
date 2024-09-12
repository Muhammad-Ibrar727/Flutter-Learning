import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(  // Add the theme here
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets'),
        ),
        body: const SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ListTile(
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('images/image.jpg'),
                  ),
                  title: Text('Hammad Manzoor'),
                  subtitle: Text('Result aya to bhejna...'),
                  trailing: Text('7:00pm'),
                ),
              ), 
              Expanded(
                child: ListTile(
                  leading: CircleAvatar(
                  backgroundImage: AssetImage('images/image.jpg'),
                  ),
                  title: Text('Muhammad Qaiser'),
                  subtitle: Text('Oye Result bhjna'),
                  trailing: Text('6:20pm'),
                ),
              ),

            //  Expanded(child: 
              // ListView.builder(
              //   itemCount: 2,
              //   itemBuilder: (context,index){
              //     return null;
                

              //   },
              //   ))
           ]
          )
        ),
      ),
    );
  }
}



// Container and Expanded Widgets

// Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Center(
//                 child: Container(
//                   // transform: Matrix4.rotationZ(.2),  //it will rotate the container at z index
//                   padding: const EdgeInsets.all(10),
//                   // margin: const EdgeInsets.only(
//                   //   top:20,
//                   //   left:40
//                   // ),
//                   width: 250,
//                   height: 250,
//                   decoration: BoxDecoration(
//                     // color: Colors.orange,
                    
//                     boxShadow: const [
//                       BoxShadow(
//                      color: Colors.grey,
//                       blurRadius: 10
//                   )
//                   ],
//                   borderRadius:BorderRadius.circular(10),
//                   image: const DecorationImage(image: AssetImage('images/image.jpg'),fit: BoxFit.cover,opacity: 0.8)
//                   ),
                  
//                   child: const Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 40),)),

//                 ),
//               ),

//               Row(
//                 children: [
//                   Expanded(
//                     flex: 2,
//                     child: Container(
//                     height: 250,
//                     color: Colors.red,
//                     child: const Center(child:Text('container1')),
//                   ),),
                  
//                   Expanded(
//                   flex: 3,
//                   child: 
//                   Container(
//                     height: 250,
//                     color: Colors.green,
//                     child: const Center(child:Text('container1')),
//                   ),),
                  
//                   Expanded(child: Container(
//                     height: 250,
//                     color: Colors.blue,
//                     child: const Center(child:Text('container1')),
//                   ),),
                  
                  
//                 ],
//               )
//             ],

//           ),


// stack widget

    // SizedBox(
    //             child: Stack(
    //               alignment: Alignment.center,
    //               children: [
    //                 Container(
    //                   width: 300,
    //                   height: 300,
    //                   color: Colors.red,
    //                 ),
    //                 const Positioned(
    //                 // top:100, 
    //                 // bottom: 0,
    //                 right: 0,
    //                 child:
    //                 Text('Text')
    //                 ),
    //               ]
    //             ),
    //           )
            

// CircleAvatar widget

// Center(
//                 child: CircleAvatar(
//                   radius: 60,
//                   backgroundColor: Colors.red,
//                   backgroundImage:AssetImage('images/image.jpg'),
//                   child: Icon(Icons.person),
//                 ),
//               )


// dividers 

// Divider(
//                 color: Colors.black,
//                 thickness: 1,
//               ),
//               SizedBox(
//                 height: 80,
//                 child: VerticalDivider(
//                   thickness: 2,
//                 ), 
//               ),
//                Divider(
//                 color: Colors.black,
//                 thickness: 1,
//               ),
//           ],


// Rich tex widget

//  RichText(text: 
//               const TextSpan(
//                 text: 'Hello',
//                 // style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize:30),
//                 children: [
//                   TextSpan('Programming',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
//                   TextSpan('World')
//                 ]

//               )
//               )


// inputTextField Widget
  //  Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: TextFormField(
  //                 keyboardType: TextInputType.number,
  //                 style: const TextStyle(color: Colors.blue),
  //                 cursorColor: Colors.black,
  //                 decoration: InputDecoration(
  //                   fillColor: const Color.fromARGB(255, 217, 217, 217),
  //                   filled: true,
  //                   hintText: 'Email',
  //                   labelText: 'Email',
  //                   enabled: true,
  //                   prefixIcon:const Icon(Icons.email),
                    
  //                   enabledBorder: OutlineInputBorder(
  //                     borderSide: const BorderSide(
  //                       width: 2,
  //                       color: Colors.redAccent,
  //                     ),
  //                     borderRadius: BorderRadius.circular(10),
  //                   ),

  //                   focusedBorder: OutlineInputBorder(
  //                     borderSide: const BorderSide(
  //                       width: 2,
  //                       color: Colors.teal,
  //                     ),
  //                     borderRadius: BorderRadius.circular(10),
  //                   )
  //                 ),

  //                 onChanged: (value){
  //                   print(value);
  //                 },
  //               ),
  //             )
            