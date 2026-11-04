import 'package:flutter/material.dart';
import '../models/postre.dart';
import '../widgets/postre_image.dart';

class DetailScreen extends StatefulWidget {
  final Postre postre;

  const DetailScreen({super.key, required this.postre});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _esFavorito = false;

  @override
  Widget build(BuildContext context) {
    final postre = widget.postre;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // ---- Imagen grande que se encoge al hacer scroll ----
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'postre-${postre.id}',
                child: PostreImage(url: postre.imagen),
              ),
            ),
          ),

          // ---- Contenido ----
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    postre.nombre,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4E342E),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Chip(label: Text(postre.categoria)),
                  const SizedBox(height: 16),

                  // Iconos informativos
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _info(Icons.timer_outlined, 'Tiempo', postre.tiempo),
                      _info(Icons.attach_money, 'Precio',
                          '\$${postre.precio.toStringAsFixed(0)}'),
                      _info(Icons.star, 'Calificación',
                          postre.calificacion.toString()),
                    ],
                  ),
                  const Divider(height: 32),

                  const Text(
                    'Descripción',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    postre.descripcionLarga,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 24),

                  const Text(
                    'Ingredientes',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: postre.ingredientes
                        .map((i) => Chip(label: Text(i)))
                        .toList(),
                  ),
                  const SizedBox(height: 32),

                  // Botón de acción
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: FilledButton.icon(
                      onPressed: () {
                        setState(() => _esFavorito = !_esFavorito);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(_esFavorito
                                ? '${postre.nombre} agregado a favoritos'
                                : '${postre.nombre} quitado de favoritos'),
                          ),
                        );
                      },
                      icon: Icon(
                          _esFavorito ? Icons.favorite : Icons.favorite_border),
                      label: Text(
                        _esFavorito ? 'En favoritos' : 'Agregar a favoritos',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _info(IconData icono, String titulo, String valor) {
    return Column(
      children: [
        Icon(icono, color: const Color(0xFFD81B60), size: 30),
        const SizedBox(height: 4),
        Text(titulo,
            style: const TextStyle(fontSize: 12, color: Colors.black54)),
        Text(valor, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
