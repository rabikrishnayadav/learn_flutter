import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle mTextStyle50({Color textColor=Colors.white, FontWeight fontWeight=FontWeight.w500}){
  return TextStyle(
    color: textColor,
    fontSize: 30,
    fontWeight: fontWeight
  );
}

TextStyle mTextStyle40(){
  return const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w400
  );
}

TextStyle mTextStyle20(){
  return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400
  );
}