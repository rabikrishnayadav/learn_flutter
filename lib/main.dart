import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //  Center Widget aligns its child widget to the center of the available space on the screen

  // Button are the graphical control element that provides
  // A user to trigger an even such as taking actions, making choices, searching things, and many more.
  // They can be placed anywhere in our UI like dialogs, forms, cards, toolbar, etc.
  // Types of Button
  // 1. Text Button (Flat Button)   2. Elevated Button (Raised Button)    3. Outlined Button

  // Column and Row
  // One of the most common layout patterns is t arrange widgets vertically or horizontally.
  // You can use Row widget to arrange widgets horizontally, and a Column widget to arrange widgets vertically.

  // Inkwell Widget
  // Inkwell is the material widget in flutter
  // It is used for give onTap option to other widget like button
  // It responds to the touch action as performed by the user.
  // Inkwell will respond when the user clicks it. Tap on it.
  // There are so many gestures like double-tap, long press, tap down etc.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll View Widget"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left:7, right: 7),
                        height: 200,
                        width: 200,
                        color: Colors.orange,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left:7, right: 7),
                        height: 200,
                        width: 200,
                        color: Colors.lightGreenAccent,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left:7, right: 7),
                        height: 200,
                        color: Colors.pink,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left:7, right: 7),
                        height: 200,
                        width: 200,
                        color: Colors.orange,
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, bottom: 10),
                  height: 200,
                  width: 200,
                  color: Colors.pink,
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, bottom: 10),
                  height: 200,
                  color: Colors.lightGreenAccent,
                ),

                Container(
                  margin: const EdgeInsets.only(top:10, bottom: 10),
                  height: 200,
                  color: Colors.purple,
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, bottom: 10),
                  height: 200,
                  width: 200,
                  color: Colors.redAccent,
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, bottom: 10),
                  height: 200,
                  width: 200,
                  color: Colors.lightGreenAccent,
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, bottom: 10),
                  height: 200,
                  color: Colors.pink,
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, bottom: 10),
                  height: 200,
                  width: 200,
                  color: Colors.orange,
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, bottom: 10),
                  height: 200,
                  color: Colors.purple,
                ),
                Container(
                  margin: const EdgeInsets.only(top:10, bottom: 10),
                  height: 200,
                  width: 200,
                  color: Colors.redAccent,
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
