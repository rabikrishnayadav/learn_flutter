import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/intro_screen.dart';
import 'package:learn_flutter/screens/splash_screen.dart';
import 'package:learn_flutter/ui_helper/text_theme.dart';
import 'package:intl/intl.dart';
import 'package:learn_flutter/widgets/rounded_btn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme: const TextTheme(
            headline1: TextStyle(fontFamily: "Branding", fontWeight: FontWeight.w500, fontSize: 40),
            headline2: TextStyle(fontFamily: "Baloo", fontWeight: FontWeight.w300, fontSize: 20),
          )
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var arrNames =  ["ram","laxman","bharat","satrudhan","Rabi", "krishna","yadav",
    "ram","laxman","bharat","satrudhan","Rabi", "krishna","yadav"];

  var email = TextEditingController();
  var password = TextEditingController();
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
  var time = DateTime.now();

  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text("RangeSlider Widget", style: mTextStyle50()),
      ),
      body: Container(
        color: Colors.green.shade200,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        setState(() {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());
                          var sum = no1 + no2;
                          result = "The sum of $no1 and $no2 is: $sum";
                        });
                      }, child: Text('Add')),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var sum = no1 - no2;
                        result = "The sub of $no1 and $no2 is: $sum";
                        setState(() {});
                      }, child: Text('Sub')),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var mult = no1 * no2;
                        result = "The Multiplication of $no1 and $no2 is: $mult";
                        setState(() {});
                      }, child: Text('Mul')),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var div = no1 / no2;
                        result = "The Division of $no1 and $no2 is: ${div.toStringAsFixed(2)}";
                        setState(() {});
                      }, child: Text('Div')),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(20),
                  child: Text(result, style: TextStyle(fontSize: 25),),),
                SizedBox(height: 50,),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 300,
                    minWidth: 100,
                  ),
                  child: Text('Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! ',
                    style: TextStyle(fontSize: 22, backgroundColor: Colors.grey),),
                ),
                RangeSlider(
                    values: values,
                    labels: labels,
                    divisions: 5,
                    min: 0,
                    max: 100,
                    activeColor: Colors.blue,
                    inactiveColor: Colors.blue.shade100,
                    onChanged: (newValue){
                      values = newValue;
                      print("${newValue.start}, ${newValue.end}");
                      setState(() {});
                    }
                ),

              ],
            ),
          ),
        ),
      )
    );
  }
}

class CatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
        ),
          itemCount: 8,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

}

class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
            ),
            title: Text("Name"),
            subtitle: Text("mobile Number"),
            trailing: Icon(Icons.add),
          ),
        ),
          itemCount: 8,
        ),
      ),
    );
  }
}

class SubCatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          color: Colors.blueGrey,
          child: ListView.builder(itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue
              ),
            ),
          ),
            itemCount: 8,
            scrollDirection: Axis.horizontal,
          ),
        )
    );
  }
}

class BottomMenu extends StatelessWidget{

  var arrColors = [Colors.amber,
    Colors.orange,
    Colors.grey,
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.purpleAccent,
    Colors.brown
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              children: [
                Container(color: arrColors[0],),
                Container(color: arrColors[1],),
                Container(color: arrColors[2],),
                Container(color: arrColors[3],),
              ],
            ),
          ),
        ));
  }
}
