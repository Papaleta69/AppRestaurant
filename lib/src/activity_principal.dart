
import 'package:flutter/material.dart';
import 'package:app_restaurant/src/controllers/controller_activity_principal.dart';

class MyApp extends StatelessWidget{
const MyApp({Key? key}) : super(key: key);
@override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyHomePage(),
    );
  }

}