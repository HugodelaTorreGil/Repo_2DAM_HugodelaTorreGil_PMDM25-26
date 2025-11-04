import 'package:flutter/material.dart';

class BioPerfil extends StatelessWidget {
  const BioPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Semana Santa Málaga",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text("Pasos, nazarenos y saetas desde La Trinidad hasta El Rocío."),
          SizedBox(height: 4),
          Text("Cuenta no oficial. Fotos de cofradías y hermandades."),
          SizedBox(height: 4),
          Text(
            "#semanasanta #cofradías #malaga #procesiones",
            style: TextStyle(color: Colors.blue),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
