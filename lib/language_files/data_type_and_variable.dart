import 'dart:io';

void main(){

  // here are some data type
  // String, int, BigInt, double, num, bool

  // declaration of variable

  String name;
  bool isLogin;

  // for store integer value
  int number;           // store small length of integer number
  BigInt largeNumber;   // store large length of integer number

  // for store fractional value
  double amount;
  num percentage;


  // assign the variable at initialization
  name = "Rabi";
  number = 99980193592;
  largeNumber = BigInt.parse("123456789123456789123456789");
  amount = 14.32;
  percentage = 60.36;
  isLogin = false;    // if not login

  stdout.write(name);
  print(number);

  String fullNane = "Rabi Kr Yadav"; // this is inline declaration
  print(fullNane);
  print(largeNumber);
  print(amount);
  print(percentage);

  //-----------------------------------------//
  // var keyword will assign the data type of if variable initialize
  var roll = 12;
  var subject = "math";

  // var keyword will help the store the multiple data type of variable if its not initialize
  // its types will dynamic

  var section;

  // here it will store String type
  section = "A";
  print("Section :$section");

  //here it will store integer type
  section = 101;
  print("Room Number: $section");

  // dynamic keyword will used when we do not want to add data type at initial
  dynamic something;

  // here it will store String type
  something = "B";
  print("Section :$something");

  // here it will store integer type
  something = 102;
  print("Room Number: $something");

}