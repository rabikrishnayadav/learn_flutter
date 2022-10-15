import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/main.dart';
import 'package:learn_flutter/screens/profile_screen.dart';

class IntroScreen extends StatelessWidget{

  var name = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome", style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: name,
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ProfileScreen(name.text.toString())));
            }, child: Text("Next Screen"))
          ],
        ),
      ),
    );
  }
}