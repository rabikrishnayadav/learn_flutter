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

}