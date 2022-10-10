// for store as non assignable value on another time
// here with const keyword we can not add new value but with final keyword we can add new value at another time but its not override exiting value

void main(){

  // final keyword can be split declare and  assign(initialize)
  final ownerName;
  ownerName = "Rabi Kr Yadav";

  // const keyword can not be split its declare and assign(initialize) it must be at same line
  const age = 25;

  var maleNames;
  maleNames = [
    "Ram",
    "Laxman",
    "bharat"
  ];

  print(maleNames);
  maleNames.add("Satrudhan");
  print(maleNames);

  // const femaleNames = [
  //   "sita",
  //   "gita",
  //   "rita"
  // ];
  //
  // print(femaleNames);
  // femaleNames.add("babita");
  // print(femaleNames);
}
