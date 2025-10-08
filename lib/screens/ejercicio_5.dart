import 'package:flutter/material.dart';
import 'menu_lateral.dart'; 

class CincoImagenesColumna extends StatelessWidget {
  const CincoImagenesColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Barra superior
        title: Text(
          // Título con estilo de texto
          "Cinco Fotos en Columa",
          style: TextStyle(color: const Color.fromARGB(255, 202, 165, 52)),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      drawer: const Drawer(
        backgroundColor:  Color.fromARGB(255, 16, 1, 100),
        child: MenuLateral(),
      ),
      body: SingleChildScrollView(
        // Permite hacer scroll si el contenido excede la pantalla (buscado en internet)
        child: Center(
          // Centra el contenido
          // Column para dispones las fotos en columna
          child: Column(
            // Organiza los widgets hijos verticalmente
            children: [
              // Lista de las cinco imágenes
              Image.asset(
                "assets/img/lobo.png",
              ), // Carga imagen desde la carpeta 'assets'
              Image.asset("assets/img/minion.jpg"),
              Image.asset("assets/img/ardilla.jpg"),
              Image.asset("assets/img/arbol.jpg"),
              Image.asset("assets/img/luna.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}