import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class DisposicionImagenes extends StatelessWidget {
  const DisposicionImagenes({super.key});

  @override
  Widget build(BuildContext context) {
    final double anchoPantalla = MediaQuery.of(context).size.width;
    return Scaffold(
      // Cabecera
      appBar: AppBar(
        title: const Text(
          "Disposición Imágenes",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        backgroundColor: const Color.fromARGB(255, 127, 170, 93),
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 16, 1, 100),
        child: MenuLateral(),
      ),
      backgroundColor: const Color.fromARGB(255, 150, 196, 98),

      // Columna para que las imágenes se vayan insertando una debajo de otra
      body: ListView(
        children: [
          // Utilizo Row dentro de Column para poner las imágenes en fila
          // Fila 1
          Row(children: [
            Image.asset(
              "assets/img/atomo.jpg",
              width: anchoPantalla * 0.8, // 80% del ancho de pantalla
                  height: 200,
                  fit: BoxFit.cover, // recorta si no encaja exactamente
              )]),

          // Fila 2
          Row(
            children: [
              Image.network(
                "https://img.icons8.com/?size=100&id=13679&format=png&color=000000",
                // Uso de width y heigt para controlar distancias entre imágenes
                width: 100,
                height: 500,
              ),
              Image.network(
                "https://img.icons8.com/?size=100&id=13679&format=png&color=000000",
                width: 170,
                height: 100,
              ),
            ],
          ),

          // Fila 3
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < 3; i++)
                Image.asset(
                  "assets/img/perros.jpg",
                  width: (anchoPantalla - 64) / 3, // tres imágenes ajustadas al ancho
                  height: 120,
                  fit: BoxFit.cover,
                ),
            ],
          ),
        ],
      ),
    );
  }
}