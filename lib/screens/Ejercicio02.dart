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
        title: Text("Prueba 1")
      ),
      body: Cuerpo(context),
    );
  }
}

Widget Cuerpo(BuildContext context) {
  return Column(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://wallpapers.com/images/hd/cool-jinx-league-of-legends-iphone-3rae1399itqfgzlq.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Text("EJERCICIO 01"),
            Campo1(),
            Boton1(context),
          ],
        ),
      ),
    ],
  );
}

final TextEditingController _numero1 = TextEditingController();

Widget Campo1() {
  return TextField(
    controller: _numero1,
    decoration: InputDecoration(
      hintText: "Ingrese altura",
    ),
  );
}



Widget Boton1(BuildContext context) {
  return Container(
    child: ElevatedButton(
      onPressed: () { alerta(context);
      }, child: Text('Calcular presion'),
    ),
  );
}

double presion() {
  double altura = double.tryParse(_numero1.text) ?? 0.00;
  const double densidad = 1025;
  const double gravedad=9.8;

  return (altura*densidad*gravedad);
}

void alerta(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Respuesta"),
        content: Text("La presión del submarino en el mar es ${presion()}"),
      );
    },
  );
}
