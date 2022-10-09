import 'dart:io';

void main(){

  // for print on console
  print("Welcome to Dart!");
  stdout.write("Enter your name: ");
  // for get data from console
  var name = stdin.readLineSync();
  print("Hello, $name Learn Dart Together");

}