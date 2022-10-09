import 'dart:io';

// void keyword used when function will not return anything
// int and other data type keyword will used when function will return something in respective data type

void main(){

  // every class have on special function called as constructor which name is same as className and its comes with class by default
  var myC = myClass();
  myC.printWelcome();    // function calling
  myC.printName("Rabi Kr Yadav");    // function calling
  stdout.write("Enter Your Name: ");
  var userName = stdin.readLineSync();
  myC.printName("Hello, $userName learn dart together");    // function calling
  print(myC.add(5,2));
}

class myClass{

  void printWelcome(){             // function declaration
    print("Welcome to learn Dart");     // function definition
  }

  void printName(String name){             // function declaration
    print(name);     // function definition
  }

  int add(int num1, int num2){
    int ans;
    ans = num1 + num2;
    return ans;
  }
}