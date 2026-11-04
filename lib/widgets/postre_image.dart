import 'package:flutter/material.dart';

/// Muestra una imagen guardada en assets/images/.
/// Si el archivo no existe o el nombre está mal, muestra un icono de pastel.
class PostreImage extends StatelessWidget {
  final String url;

  const PostreImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      url,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      errorBuilder: (context, error, stack) {
        return Container(
          color: const Color(0xFFF8BBD0),
          child: const Center(
            child: Icon(Icons.cake, size: 48, color: Colors.white),
          ),
        );
      },
    );
  }
}
