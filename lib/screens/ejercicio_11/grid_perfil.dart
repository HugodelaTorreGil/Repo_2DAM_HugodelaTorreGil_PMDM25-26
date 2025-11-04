import 'package:flutter/material.dart';

class GridPerfil extends StatelessWidget {
  const GridPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    // lista de fotos para probar el GridView
    final List<String> fotos = [
      "https://pbs.twimg.com/media/FPRrWiwXIAI6clk?format=jpg&name=large",
      "https://i.ytimg.com/vi/VQMSR1UcGFA/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBwAU9NO7ikY1IW5h55q_oxL3n6VQ",
      "https://images.pexels.com/photos/1615769/pexels-photo-1615769.jpeg",
    ];

    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: fotos
          .map(
            (url) => Image.network(
              url,
              fit: BoxFit.cover,
            ),
          )
          .toList(),
    );
  }
}
