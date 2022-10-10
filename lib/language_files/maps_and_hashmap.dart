// In Dart programming, maps are dictionary-like data types that exist in key-value from (known as lock-key).
// There is no restriction on the type of data that goes in a map data type.
// Maps are very flexible and can mutate their size based on the requirements.
// It is important to note that all locks (keys) need to be unique inside a map data type.
// Syntax: map_name = {key1:value1,key2:value2,......keyn:valuen}

void main(){

  // first method

  var student_detail = {
    "name": "Rabi Kr Yadav",
    "roll" : 5,
    "mobile": 9980193592,
    "present": true
  };

  print(student_detail["name"]);
  print(student_detail);

  student_detail["section"] = "A";          // for add new item
  print(student_detail);
  student_detail["present"] = false;        // for update exiting item
  print(student_detail);


  // second method with the help of Map() object

  var students = Map();
  students["name"] = "Ram Chandra";
  students["roll"] = 1;
  students["mobile"] = 9826832728;
  students["present"] = false;

  print(students);
  students["section"] = "A";
  print(students);

  // some basic function provided by map

  print(student_detail.isNotEmpty);
  print(student_detail.isEmpty);
  print(student_detail.keys);
  print(student_detail.values);
  print(student_detail.containsKey("name"));
  print(student_detail.containsValue(9980193599));
  print(student_detail.remove("section"));
  print(student_detail);

}