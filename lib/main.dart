import 'package:flutter/material.dart';

// app strats here
void main() {
  runApp(MyApp());
}

// stateless is class provided by flutter
// يرث خصائص ويدكت علشان الكلاس دة يبقي ويدجت
class MyApp extends StatelessWidget {

  final  p1= Person(name: 'aliaa');

// flutter will call build method
// BuildContext is special type of object passed automatically in build methodf
@override
Widget build(BuildContext context) {
    return MaterialApp(
      home: Text(p1.name),
    );
  }
}

class Person{
  String name;
  int age;

  Person({@required String name,int age=30}){
    this.name=name;
    this.age=age;
  }
}