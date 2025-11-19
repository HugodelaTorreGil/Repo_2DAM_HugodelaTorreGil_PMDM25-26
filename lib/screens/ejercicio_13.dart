import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'menu_lateral.dart';

class Ejercicio13 extends StatefulWidget {
  const Ejercicio13({super.key});

  @override
  State<Ejercicio13> createState() => _Ejercicio13();
}

class _Ejercicio13 extends State<Ejercicio13> {
  static const Duration _roundDuration = Duration(seconds: 2); // tiempo por ronda
  final Random _rng = Random();

  Timer? _timer;
  int _score = 0;
  int _timeLeft = _roundDuration.inSeconds;
  bool _wasTapped = false;

  // posicion del objetivo
  double _x = 50;
  double _y = 150;
  static const double _targetSize = 72;

  void _start() {
    _cancel();
    _wasTapped = false;
    _timeLeft = _roundDuration.inSeconds;
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (!mounted) return;
      setState(() {
        _timeLeft--;
        if (_timeLeft <= 0) {
          if (!_wasTapped) _score -= 2;
          _relocate();
          _wasTapped = false;
          _timeLeft = _roundDuration.inSeconds;
        }
      });
    });
  }

  void _cancel() {
    _timer?.cancel();
    _timer = null;
  }

  void _relocate() {
    final size = MediaQuery.of(context).size;
    final maxX = (size.width - _targetSize).clamp(0, double.infinity);
    final maxY = (size.height - _targetSize - 160).clamp(0, double.infinity); // margen appbar
    _x = _rng.nextDouble() * maxX;
    _y = 120 + _rng.nextDouble() * maxY;
  }

  void _onTapTarget() {
    if (_timer == null) return; // si no esta en juego
    setState(() {
      if (!_wasTapped) {
        _score += 1;
        _wasTapped = true;
      }
      _relocate();
      _timeLeft = _roundDuration.inSeconds;
    });
  }

  @override
  void dispose() {
    _cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('13) Juego tap rapido'),
        actions: [
          IconButton(
            onPressed: _start,
            tooltip: 'Iniciar',
            icon: const Icon(Icons.play_arrow),
          ),
          IconButton(
            onPressed: _cancel,
            tooltip: 'Pausar',
            icon: const Icon(Icons.pause),
          ),
          IconButton(
            onPressed: () => setState(() {
              _score = 0;
              _timeLeft = _roundDuration.inSeconds;
              _relocate();
            }),
            tooltip: 'Reiniciar',
            icon: const Icon(Icons.restart_alt),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned(
                top: 12,
                left: 12,
                child: Row(
                  children: [
                    Text('Puntos: $_score',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(width: 16),
                    Text('Tiempo: $_timeLeft s',
                        style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Positioned(
                left: _x,
                top: _y,
                child: GestureDetector(
                  onTap: _onTapTarget,
                  child: SizedBox(
                    width: _targetSize,
                    height: _targetSize,
                    child: Image.asset('assets/img/target.png'), // icono objetivo
                  ),
                ),
              ),
              if (_timer == null)
                const Center(
                  child: Text(
                    'Pulsa ▶ para empezar',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
