import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class Ejercicio8 extends StatelessWidget {
  const Ejercicio8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ejercicio 8 - Pirámide",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 127, 170, 93),
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 16, 1, 100),
        child: MenuLateral(),
      ),
      backgroundColor: const Color.fromARGB(255, 150, 196, 98),
      body: const EstructuraPiramide(),
    );
  }
}

class EstructuraPiramide extends StatelessWidget {
  const EstructuraPiramide({super.key});

  @override
  Widget build(BuildContext context) {
    final double anchoPantalla = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Nivel 1 (uno)
              _buildCard(Icons.star, "Nivel 1 - Inicio", anchoPantalla),

              const SizedBox(height: 20),

              // Nivel 2 (dos)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCard(Icons.favorite, "Nivel 2 - A", anchoPantalla),
                  const SizedBox(width: 20),
                  _buildCard(Icons.favorite_border, "Nivel 2 - B", anchoPantalla),
                ],
              ),

              const SizedBox(height: 20),

              // Nivel 3 (tres)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCard(Icons.coffee, "Nivel 3 - A", anchoPantalla),
                  const SizedBox(width: 20),
                  _buildCard(Icons.cake, "Nivel 3 - B", anchoPantalla),
                  const SizedBox(width: 20),
                  _buildCard(Icons.icecream, "Nivel 3 - C", anchoPantalla),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(IconData icon, String text, double anchoPantalla) {
    return Card(
      color: Colors.white,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: anchoPantalla * 0.25,
        height: 100,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            const SizedBox(height: 10),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
