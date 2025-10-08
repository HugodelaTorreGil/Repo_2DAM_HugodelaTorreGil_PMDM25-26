import 'package:flutter/material.dart';
import 'menu_lateral.dart'; 

class CincoIconosFila extends StatelessWidget {
  const CincoIconosFila({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Barra superior
        title: Text("5 Iconos en Fila"), // Título de la App Bar
        backgroundColor: const Color.fromARGB(255, 241, 78, 119),
      ),
      drawer: const Drawer(
        backgroundColor:  Color.fromARGB(255, 16, 1, 100),
        child: MenuLateral(),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 122, 155),
      body: Center(
        // Centra el contenido
        child: Row(
          // Organiza los widgets hijos en una fila
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra los hijos horizontalmente
          children: [
            // Lista de los cinco iconos
            Icon(Icons.account_box_rounded),
            Icon(Icons.no_encryption),
            Icon(Icons.account_balance_wallet_rounded),
            Icon(Icons.zoom_out_map_rounded),
            Icon(Icons.abc),
          ],
        ),
      ),
    );
  }
}