import 'package:relacion_ejercicios_tema1/screens/ejercicio_11/ejercicio_11.dart';
import 'package:relacion_ejercicios_tema1/screens/ejercicio_6.dart';
import 'package:relacion_ejercicios_tema1/screens/ejercicio_7.dart';

import 'home_screen.dart';
import 'package:flutter/material.dart';

import 'ejercicio_1.dart';
import 'ejercicio_2.dart';
import 'ejercicio_3.dart';
import 'ejercicio_4.dart';
import 'ejercicio_5.dart';
import 'ejercicio_6.dart';
import 'ejercicio_7.dart';
import 'ejercicio_8.dart';
import 'ejercicio_9.dart';
import 'ejercicio_10.dart';
import 'ejercicio_11/ejercicio_11.dart';

// La clase representa el contenido del menú lateral (Drawer)
class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    // ListView permite que el menú se pueda desplazar si hay muchos elementos
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const UserAccountsDrawerHeader(
          // Encabezado del menú con información de usuario
          accountName: Text(
            "Hugo de la Torre Gil",
            style: TextStyle(color: Color.fromARGB(255, 252, 250, 250)),
          ),
          accountEmail: Text(
            "Relación de Ejercicios Tema 1",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              // Imagen de fondo cargada desde una URL
              image: NetworkImage(
                "https://p4.wallpaperbetter.com/wallpaper/580/399/655/nature-jpg-format-download-1920x1200-wallpaper-preview.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Ink(
          // Widget para aplicar color de fondo y efectos táctiles
          color: const Color.fromARGB(255, 147, 245, 62),
          child: ListTile(
            title: const Text("Inicio"),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú lateral
              Navigator.of(context).push(
                // Navega a la nueva pantalla
                MaterialPageRoute(
                  builder: (BuildContext context) => const MyApp(),
                ),
              );
            },
          ),
        ),

        Ink(
          // Widget para aplicar color de fondo y efectos táctiles
          color: const Color.fromARGB(255, 2, 70, 134),
          child: ListTile(
            title: const Text("Ejercicio 1"),
            onTap: () {
              Navigator.of(context).pop(); // Cierra el menú lateral
              Navigator.of(context).push(
                // Navega a la nueva pantalla
                MaterialPageRoute(
                  builder: (BuildContext context) => const InfomacionPersonal(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 146, 2, 182),
          child: ListTile(
            title: const Text(
              "Ejercicio 2",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const FotoNombre(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 206, 137, 9),
          child: ListTile(
            title: const Text(
              "Ejercicio 3",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const TresFotosColumnas(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 233, 11, 11),
          child: ListTile(
            title: const Text(
              "Ejercicio 4",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const CincoIconosFila(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 0, 0, 0),
          child: ListTile(
            title: const Text(
              "Ejercicio 5",
              style: TextStyle(color: Color.fromARGB(255, 204, 169, 55)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const CincoImagenesColumna(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 230, 145, 96),
          child: ListTile(
            title: const Text(
              "Ejercicio 6",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const TextoDesbordado(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
          child: ListTile(
            title: const Text(
              "Ejercicio 7",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const DisposicionImagenes(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 170, 115, 44),
          child: ListTile(
            title: const Text(
              "Ejercicio 8",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const Ejercicio8(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 153, 18, 18),
          child: ListTile(
            title: const Text(
              "Ejercicio 9",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const Ejercicio9(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 48, 58, 119),
          child: ListTile(
            title: const Text(
              "Ejercicio 10",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const Ejercicio10(),
                ),
              );
            },
          ),
        ),

        Ink(
          color: const Color.fromARGB(255, 163, 140, 110),
          child: ListTile(
            title: const Text(
              "Ejercicio 11",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const Ejercicio11(),
                ),
              );
            },
          ),
        ),

      ],
    );
  }
}