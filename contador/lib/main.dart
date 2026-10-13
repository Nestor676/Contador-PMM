import 'package:contador/screens/homePage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(new MiApp());
}

class MiApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contador",
      home: HomePage(), 
    );
  }
}