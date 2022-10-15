import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/main.dart';

class ProfileScreen extends StatelessWidget{

  var userName;
  ProfileScreen(this.userName);

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
            Text('Welcome, $userName', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MyHomePage()));
            }, child: Text("Next Screen"))
          ],
        ),
      ),
    );
  }
}