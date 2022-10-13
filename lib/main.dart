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

  // List Tile have 3 main component
  // 1. Leading   2. Title & Subtitle   3.Trailing
  
  // Circle Avtar
  // It is simply a circle in which we can add background color, background image, or just some text.
  // It usually represents a user with his image or with his initials.
  // Although we can make a similar widget from the group up
  // This widget comes in handy in the fast development of an application.

  @override
  Widget build(BuildContext context) {

    var arrNames =  ["ram","laxman","bharat","satrudhan","Rabi", "krishna","yadav",
      "ram","laxman","bharat","satrudhan","Rabi", "krishna","yadav"];

    return Scaffold(
      appBar: AppBar(
        title: const Text("CircleAvatar Widgets "),
      ),
      body: ListView.separated(itemBuilder: (context, index)
          {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/grafex_media_logo.png'),
                backgroundColor: Colors.white,
                radius: 30,
              ),
              title: Text(arrNames[index], style: TextStyle(fontFamily: "Branding", fontWeight: FontWeight.w500, fontSize: 30),),
              subtitle: Text(arrNames[index], style: TextStyle(fontFamily: "Raj", fontWeight: FontWeight.w500, fontSize: 25),),
              trailing: Icon(Icons.add),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index){
            return Divider(height: 20, thickness: 3,
            );
          },
      )
    );
  }
}
