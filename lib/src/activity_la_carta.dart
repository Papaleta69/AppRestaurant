
import 'package:app_restaurant/src/controllers/controller_activity_carta.dart';
import 'package:flutter/material.dart';

class MyCarta extends StatelessWidget{
const MyCarta({Key? key}) : super(key: key);
@override
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyActivityCarta(),
    );
  }

}