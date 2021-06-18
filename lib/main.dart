import 'dart:math';

import 'package:flutter/material.dart';

void main()=> runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: TestApp(),
    )
);

class TestApp extends StatefulWidget{
  @override
  TestAppState createState()=>TestAppState();
}

class TestAppState extends State<TestApp>{
  Color back_color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  Widget build(BuildContext context){
    return Container(
      color: back_color,
      child: Container(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: (){
            new Text("Hey There");
            setState(() {
              back_color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
            });
          },
          child: Center(
            child: new Text("Hey There"),
          ),
        )
      ),
    );
  }
}