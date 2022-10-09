// Dart list is similar to an array, which is the ordered collection of the objects.
// The array is the most popular and commonly used collection in any other programming language.
// The syntax of declaring the list is: var list = [1,2,3,4,5]
// The Dart list is defined by storing all elements inside the bracket ([]) and separated by (,).

void main(){

  var rollNumber = [1,2,3];
  var names = ["Ram","laxman", "bharat"];

  // add data in list

  print("$rollNumber");
  rollNumber.add(4);        // add single value in list
  names.add("Satrudhan");        // add single value in list

  var studentData = [];
  studentData.addAll(names);        // add whole integer data type list in another list
  studentData.addAll(rollNumber);   // add whole String data type list in another list
  print("$studentData");

  names.insert(0, "myName");  // add single new value at the index
  print("$names");

  studentData.insertAll(3, names);
  print(studentData);


  // update data in list

  names.replaceRange(0, 4, ["Rabi", "kumar","yadav"]);
  print(names);
  names[1] = "Krishna";
  print(names);


  // Delete data from the list

  names.remove("Satrudhan");
  print(names);
  names.removeLast();
  print(names);
  names.removeAt(1);
  print(names);
  print(rollNumber);
  rollNumber.removeAt(2);
  print(rollNumber);
  print(studentData);
  studentData.removeRange(0, 3);
  print(studentData);
  studentData.remove("Satrudhan");
  print(studentData);

  
  // some additional operation in list are
  
  print("Length: ${studentData.length}");
  print("Reverse Order: ${studentData.reversed}");
  print("First: ${studentData.first}");
  print("Last: ${studentData.last}");
  print("Is Empty: ${studentData.isEmpty}");
  print("Is Not Empty: ${studentData.isNotEmpty}");
  print("Length: ${studentData.elementAt(1)}");

}