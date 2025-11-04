import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class Ejercicio9 extends StatelessWidget {
  const Ejercicio9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ejercicio 9 - Reto Container",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 127, 170, 93),
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 16, 1, 100),
        child: MenuLateral(),
      ),
      backgroundColor: const Color.fromARGB(255, 150, 196, 98),
      body: const _HelicopterLanding(),
    );
  }
}

/// Reto: zona de aterrizaje para helicópteros (basado en el artículo)
class _HelicopterLanding extends StatelessWidget {
  const _HelicopterLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter, // alineado arriba y centrado
      child: Container(
        margin: const EdgeInsets.only(top: 30), // margen respecto a la AppBar
        width: 260,
        height: 260,
        alignment: Alignment.center, // centra la H dentro del círculo
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.orangeAccent,
            width: 12,
          ),
        ),
        child: const Text(
          'H',
          style: TextStyle(
            fontSize: 170,
            fontWeight: FontWeight.bold,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}
