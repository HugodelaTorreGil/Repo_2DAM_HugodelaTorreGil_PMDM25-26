import 'dart:math';
import 'package:flutter/material.dart';
import 'package:relacion_ejercicios_tema1/screens/menu_lateral.dart';

class Ejercicio12 extends StatefulWidget {
  const Ejercicio12({super.key});

  @override
  State<Ejercicio12> createState() => _Ejercicio12();
}

class _Ejercicio12 extends State<Ejercicio12> {
  static const int _count = 60;
  final Random _rng = Random();
  late List<Color> _colors;

  @override
  void initState() {
    super.initState();
    _colors = _generate();
  }

  List<Color> _generate() => List<Color>.generate(
        _count,
        (_) => Color.fromARGB(
          0xFF, _rng.nextInt(256), _rng.nextInt(256), _rng.nextInt(256),
        ),
      );

  void _shuffle() => setState(() => _colors = _generate());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('12) Colores aleatorios')),
      drawer: const Drawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: _shuffle,
              child: const Text('Generar colores'),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: _colors.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: 4, mainAxisSpacing: 4,
              ),
              itemBuilder: (context, i) => Container(color: _colors[i]),
            ),
          ),
        ],
      ),
    );
  }
}
