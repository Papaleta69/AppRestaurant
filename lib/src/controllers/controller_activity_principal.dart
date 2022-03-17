import 'package:app_restaurant/src/controllers/controller_activity_carta.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Rapi Carta",
        style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), fontSize: 30),),
        backgroundColor:const Color.fromARGB(255, 237, 240, 240),
       ),
      
     body: Form(
          child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: <Widget>[
                       const Text('Bienvenido Jeruya',style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), fontSize: 40)
                        ),
                        Align(
                          alignment: Alignment.center,
                          child:Image(
                            width: 500.0,
                            height: 300.0,
                            image: new AssetImage('assets/images/iconapp.jpg'),
                       ),
                      ),
                     ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: <Widget>[
                      const Text('Visualizar la carta',
                        style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), fontSize: 30)),
                            Column(
                              children: [
                               IconButton(
                                onPressed: () { Navigator.push(context, MaterialPageRoute(builder:(context)=>const MyActivityCarta()),);
                                },
                                iconSize: 200.0,
                                icon: Image.asset('assets/images/lacarta.png'),)
                            ],
                          ),
                        ],
                       ),
                      ),
                     ],
                     )
                    )
                 ), 

        bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100)),
        child: Container(
          padding: const EdgeInsets.only(top: 25),
          color:const Color.fromARGB(193, 248, 192, 139),
          height: 100,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
             Column(
               children: [
               const Text("Reservar", style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), fontSize: 16, fontWeight: FontWeight.bold)),
                IconButton(
                onPressed: () {},
                iconSize: 40.0,
                icon: const Icon(Icons.add_circle, color: Color.fromARGB(255, 255, 119, 7)),
              ),
                
             ],
           ),
            Column(
              children: [
              const Text("Escanear QR", style: TextStyle(color: Color.fromARGB(255, 10, 10, 10), fontSize: 16, fontWeight: FontWeight.bold)),
                IconButton(
                onPressed: () {},
                iconSize: 40.0,
               icon: const Icon(Icons.qr_code_scanner_rounded, color: Color.fromARGB(255, 255, 119, 7)),
              ),
             ],
           ),
             
            ],

          ),

        ),

       ),
    );
  }
}
