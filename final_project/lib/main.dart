import 'package:final_project/screens/intro_screen.dart';
import 'package:flutter/material.dart';


void main(){
runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
home: IntroScreen() ,
debugShowCheckedModeBanner: false,
title: "EcommerceApp",
    );
  }
}

























































