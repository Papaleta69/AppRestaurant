

import 'package:flutter/material.dart';
import 'package:app_restaurant/desayuno.dart';

class MyActivityCarta extends StatefulWidget {
  const MyActivityCarta({Key? key}) : super(key: key);

  @override
  State<MyActivityCarta> createState() => _MyActivityCartaState();
}

class _MyActivityCartaState extends State<MyActivityCarta> with SingleTickerProviderStateMixin {

  int selectedPage = 0;
  TabController? controller;

 @override
 void initState() {
   super.initState();
   controller = TabController(length: 3,initialIndex: selectedPage ,vsync: this);
 }

 @override
 void dispose() {
   super.dispose();
   controller!.dispose();
 }

  

Map<String, dynamic> data = {
    "a": [
      const Text("Jugo"),
      const Text("Jugo"),
      const Text("Jugo"),
      const Text("Jugo"),
     
    ],
    "b": [
      const Text("Jugo"),
      const Text("Jugo"),
      const Text("Jugo"),
      const Text("Jugo"),
     
    ],
    "c":[
      const Text("Jugo"),
      const Text("Jugo"),
      const Text("Jugo"),
      const Text("Jugo"),
      
    ]
  };

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
          centerTitle: true,
           title:const Text("La carta",
           style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), fontSize: 30),),
           backgroundColor:const Color.fromARGB(255, 237, 240, 240),
           iconTheme: const IconThemeData(color: Color.fromARGB(255, 255, 119, 7)),
          ),
         
          body: Column(
           children:[
             Container(     
               decoration: const BoxDecoration(
                 border: Border(
                   bottom: BorderSide(width: 1, color: Colors.blueAccent)
                   ),
               ),
             child:Material( 
              child: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                controller: controller,
                tabs: const[
                  Tab(text: 'Desayuno',icon:Icon(Icons.free_breakfast),),
                  Tab(text: 'Almuerzo',icon:Icon(Icons.lunch_dining),),
                  Tab(text: 'Cena',icon:Icon(Icons.dining),),
                ],
              ),

             ),
             ),
             Expanded(
               child: TabBarView(
               controller: controller,
               children: const [
                 MyAppDesayunos(),
                 MyAppDesayunos(),
                 MyAppDesayunos(),
               ],

             )
            )
           ],

          ),
    








        );
     }
  }