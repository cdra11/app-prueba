import 'package:flutter/material.dart';

void main(){
  runApp(Ejercicio02());
}

class Ejercicio02 extends StatelessWidget {
  const Ejercicio02({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // debugShowMaterialGrid: false,
      title: "Ejercicio 02",
      home: Home(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prueba 2")
      ),
      body: Body(),
    );
  }
}

Widget Body(){
  return Container(
    // decoration: BoxDecoration(
    //   image:  DecorationImage(image: NetworkImage('https://wallpapers.com/images/hd/cool-jinx-league-of-legends-iphone-3rae1399itqfgzlq.jpg'),
    //   fit: BoxFit.cover)
    // ),
    child: Column(
      children: [
        Text(
          "EJERCICIO 01"
        )
      ],
    )
  );
}