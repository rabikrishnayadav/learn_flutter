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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

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

  // List View
  // Listview in flutter is a widget used to display items in a linear manner.
  // for example, list view is used in apps like zomato & swiggy to display a list of restaurants.
  // Since it is a scrollable widget we can display multiple items on the same screen.
  // if the scroll direction is vertical the children will be arranged one after another from top to bottom.
  // when the scroll direction is horizontal the children will be arranged from left to right.

  @override
  Widget build(BuildContext context) {

    var arrNames =  ["ram","laxman","bharat","satrudhan","Rabi", "krishna","yadav",
      "ram","laxman","bharat","satrudhan","Rabi", "krishna","yadav"];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Decoration"),
      ),
      body: Container(
        // for give full width and height
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
              border: Border.all(
                width: 4,
                color: Colors.black
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  spreadRadius:8
                )
              ]
            ),
          ),
        ),
      )
    );
  }
}
