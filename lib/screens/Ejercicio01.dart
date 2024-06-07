import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(Ejercicio01());
}

class Ejercicio01 extends StatelessWidget {
  const Ejercicio01({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Ejercicio 01",
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
            Campo2(),
            Boton1(context),
          ],
        ),
      ),
    ],
  );
}

final TextEditingController _numero1 = TextEditingController();
final TextEditingController _numero2 = TextEditingController();

Widget Campo1() {
  return TextField(
    controller: _numero1,
    decoration: InputDecoration(
      hintText: "Ingrese la velocidad inicial",
    ),
  );
}

Widget Campo2() {
  return TextField(
    controller: _numero2,
    decoration: InputDecoration(
      hintText: "Ingrese la velocidad final",
    ),
  );
}

Widget Boton1(BuildContext context) {
  return Container(
    child: ElevatedButton(
      onPressed: () { alerta(context);
      }, child: Text('Calcular Tiempo'),
    ),
  );
}

double tiempo() {
  double v = double.tryParse(_numero1.text) ?? 0.00;
  double vf = double.tryParse(_numero2.text) ?? 0.00;
  const double aceleracionMedia = 10.0;

  return (vf - v) / aceleracionMedia;
}

void alerta(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Respuesta"),
        content: Text("El tiempo es ${tiempo()} segundos"),
      );
    },
  );
}
