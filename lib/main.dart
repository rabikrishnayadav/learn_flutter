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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column and Row Widget"),
      ),
      body: Column(
        children: [
          const Text("Three Types of button"),
          Column(
            children: [
              Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){print("Elevated Button");}, child: const Text("Elevated Button")),
                    TextButton(onPressed: (){print("Text Button");}, child: const Text("Text Button")),
                    OutlinedButton(onPressed: (){print("Outlined Button");}, child: const Text("Outlined Button")),
                  ],
                ),
              ),
              Container(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(onPressed: (){print("Elevated Button");}, child: const Text("Raised Button")),
                    TextButton(onPressed: (){print("Text Button");}, child: const Text("Flat Button")),
                    OutlinedButton(onPressed: (){print("Outlined Button");}, child: const Text("Outline Button")),
                  ],
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
