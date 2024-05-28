// import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //    backgroundColor: Colors.black,
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Expanded(
            flex: 2,
             child: Container(
              color: Colors.yellow,
                       child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Text(
              'Crossroads',
              textAlign: TextAlign.center,
                       style: TextStyle(
              color: Colors.green,
              fontSize: 50,
              fontWeight: FontWeight.bold,
                       ),
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                       TextButton(
                       onPressed: () {
              print('Text Button Clicked');
                       }, 
                       child: Text('Click Me'),
                     ),
                     IconButton(onPressed: () {}, icon: Icon(Icons.mic),
                     ),
                     ],
                     ),
                     ElevatedButton(
                       onPressed: () {
              print('Eleveted Button Clicked');
                       }, 
                       child: Text('Click Me'),
                       ),
              ],
                       ),
                   ),
           ),
           Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.green,width: 10),
              ),
              child: Center(child: Text('Simple text')),
              ),
              ),
       Expanded(
         child: Container(
            color: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Text(
              'Crossroads',
              textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.green,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextButton(
            onPressed: () {
              print('Text Button Clicked');
            }, 
            child: Text('Click Me'),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.mic),
          ),
          ],
          ),
          ElevatedButton(
            onPressed: () {
              print('Eleveted Button Clicked');
            }, 
            child: Text('Click Me'),
            ),
              ],
            ),
               ),
       ),
        ],
        ),
      ),
    );
  }
}