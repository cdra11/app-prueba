import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prueba_01/screens/Ejercicio01.dart';
import 'package:prueba_01/screens/Ejercicio02.dart';

void main(){
  runApp(Prueba01());
}

class Prueba01 extends StatelessWidget {
  const Prueba01({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowMaterialGrid: false,
      title: "PRUEBA",
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
  int indice =0;
  @override
    Widget build(BuildContext context) {
    List<Widget> screens=[ Cuerpo(context),
    Ejercicio01(),
    Ejercicio02()];

    return Scaffold(
      appBar: AppBar(
        title: Text("PRUEBA 01", style:TextStyle(color:Color(0xffffffff)),),
        backgroundColor: Color.fromARGB(255, 174, 118, 224),
      ),
      body: screens[indice],
      ///////////////////////////
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap:(value){
          setState(() {
            indice = value;
          });
        },
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label:"Home"),
          const BottomNavigationBarItem(icon: Icon(Icons.tsunami), label: "Ejercicio 1"),
        ],
        backgroundColor: Color.fromARGB(255, 131, 78, 161),
      ),
    );
  }
}

Widget Cuerpo(context){
  return Center(
    child: (
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center ,
        children: <Widget>[
          const Text("Carla Reinoso Alarcón"),
          const Text ("cdra11"),
          Boton1(context),
        ],
      )
    ),
  );
}

void irEjercicio2 (context){
  Navigator.push(context, 
  MaterialPageRoute(builder:
  (context) => Ejercicio02()
  ));
}

Widget Boton1(context){
  return(
    ElevatedButton(onPressed: (){
      alerta01(context); }, child: Text("Ejercicio2"))
  );
}
void alerta01(context){
  showDialog(context: context, builder: (context){
    return(
      AlertDialog(
        title: Text("Ejercicio 2"),
        content: Text("¿Desea ir al ejercicio 2?"),
        actions: [
          //////////////////////////////
          TextButton(onPressed: (){
            irEjercicio2(context);
          }, child: Text("Aceptar")),
          /////////////////////////////
          FilledButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Cancelar")),
          /////////////////////////////
        ],
      )
    );
  });
}

