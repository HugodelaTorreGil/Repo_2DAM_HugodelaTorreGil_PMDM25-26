import 'package:flutter/material.dart';
import 'menu_lateral.dart';

class TresFotosColumnas extends StatelessWidget {
  const TresFotosColumnas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tres Imágenes en Miniatura en Columna"),
        backgroundColor: const Color.fromARGB(255, 241, 175, 75),
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 16, 1, 100),
        child: MenuLateral(),
      ),
      backgroundColor: const Color.fromARGB(255, 245, 195, 121),
      body: SingleChildScrollView(
        // Permite hacer scroll si no caben todas las imágenes
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Imagen 1
              Image.asset(
                "assets/img/perro.jpg",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20), // Espacio entre imágenes

              // Imagen 2
              Image.asset(
                "assets/img/leon.jpg",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),

              // Imagen 3
              Image.asset(
                "assets/img/linux.jpg",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
