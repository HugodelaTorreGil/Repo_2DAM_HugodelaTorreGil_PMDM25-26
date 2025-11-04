import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/ejercicio_11/cabecera_perfil.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

import 'cabecera_perfil.dart';
import 'biografia_perfil.dart';
import 'acciones_perfil.dart';
import 'highlights_perfil.dart';
import 'grid_perfil.dart';

class Ejercicio11 extends StatelessWidget {
  const Ejercicio11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "semanasanta_malaga",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Icon(Icons.more_vert, color: Colors.black),
        ],
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 16, 1, 100),
        child: MenuLateral(),
      ),
      backgroundColor: Colors.white,
      body: const _ProfileBody(),
    );
  }
}

class _ProfileBody extends StatelessWidget {
  const _ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CabeceraPerfil(),        // avatar + estadísticas
        BioPerfil(),           // texto descriptivo
        AccionesPerfil(),       // botones seguir / mensaje / contacto
        HighlightsPerfil(),    // historias destacadas
        SizedBox(height: 8),
        _ProfileTabs(),         // barra de pestañas tipo grid / reels / etiquetadas
        GridPerfil(),          // grid de fotos
      ],
    );
  }
}

class _ProfileTabs extends StatelessWidget {
  const _ProfileTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: Icon(Icons.grid_on, size: 28),
        ),
        Expanded(
          child: Icon(Icons.video_collection_outlined, size: 28),
        ),
        Expanded(
          child: Icon(Icons.person_pin_outlined, size: 28),
        ),
      ],
    );
  }
}
