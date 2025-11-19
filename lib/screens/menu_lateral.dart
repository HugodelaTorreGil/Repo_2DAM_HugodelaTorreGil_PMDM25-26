import 'package:flutter/material.dart';

import 'home_screen.dart';
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
import 'ejercicio_12.dart';
import 'ejercicio_13.dart';

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
              // Imagen de fondo cargada desde assets
              image: AssetImage(
                "assets/img/fondo_drawer.jpg", // pon aquí la que tengas
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // INICIO
        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
          child: ListTile(
            title: const Text("Inicio"),
            onTap: () {
              Navigator.of(context).pop(); 
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const MyApp(),
                ),
              );
            },
          ),
        ),

        // EJERCICIO 1
        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
          child: ListTile(
            title: const Text("Ejercicio 1"),
            onTap: () {
              Navigator.of(context).pop(); 
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const InfomacionPersonal(),
                ),
              );
            },
          ),
        ),

        // EJERCICIO 2
        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
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

        // EJERCICIO 3
        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
          child: ListTile(
            title: const Text(
              "Ejercicio 3",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const TresFotosColumnas(),
                ),
              );
            },
          ),
        ),

        // EJERCICIO 4
        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
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

        // EJERCICIO 5
        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
          child: ListTile(
            title: const Text(
              "Ejercicio 5",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
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

        // EJERCICIO 6
        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
          child: ListTile(
            title: const Text(
              "Ejercicio 6",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const TextoDesbordado(),
                ),
              );
            },
          ),
        ),

        // EJERCICIO 7
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

        // EJERCICIO 8
        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
          child: ListTile(
            title: const Text(
              "Ejercicio 8",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Ejercicio8(),
                ),
              );
            },
          ),
        ),

        // EJERCICIO 9
        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
          child: ListTile(
            title: const Text(
              "Ejercicio 9",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Ejercicio9(),
                ),
              );
            },
          ),
        ),

        // EJERCICIO 10
        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
          child: ListTile(
            title: const Text(
              "Ejercicio 10",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Ejercicio10(),
                ),
              );
            },
          ),
        ),

        // EJERCICIO 11
        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
          child: ListTile(
            title: const Text(
              "Ejercicio 11",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Ejercicio11(),
                ),
              );
            },
          ),
        ),

        // EJERCICIO 12
        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
          child: ListTile(
            title: const Text(
              "Ejercicio 12",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Ejercicio12(),
                ),
              );
            },
          ),
        ),

        // EJERCICIO 13
        Ink(
          color: const Color.fromARGB(255, 150, 196, 98),
          child: ListTile(
            title: const Text(
              "Ejercicio 13",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Ejercicio13(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
