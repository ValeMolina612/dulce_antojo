import 'package:flutter/material.dart';
import '../data/postres_data.dart';
import '../models/postre.dart';
import '../widgets/postre_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _busqueda = '';
  String _categoriaSeleccionada = 'Todos';

  // Lista filtrada según lo que escribe el usuario y la categoría elegida.
  List<Postre> get _filtrados {
    return postres.where((p) {
      final coincideCategoria = _categoriaSeleccionada == 'Todos' ||
          p.categoria == _categoriaSeleccionada;
      final coincideTexto =
          p.nombre.toLowerCase().contains(_busqueda.toLowerCase());
      return coincideCategoria && coincideTexto;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final lista = _filtrados;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dulce Antojo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Perfil: próximamente')),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // ---- Barra de búsqueda ----
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: TextField(
              onChanged: (texto) => setState(() => _busqueda = texto),
              decoration: InputDecoration(
                hintText: 'Buscar postres...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // ---- Chips de categorías ----
          SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: categorias.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final categoria = categorias[index];
                return ChoiceChip(
                  label: Text(categoria),
                  selected: _categoriaSeleccionada == categoria,
                  onSelected: (_) =>
                      setState(() => _categoriaSeleccionada = categoria),
                );
              },
            ),
          ),

          // ---- Cuadrícula de postres ----
          Expanded(
            child: lista.isEmpty
                ? const Center(child: Text('No encontramos postres 😢'))
                : GridView.builder(
                    padding: const EdgeInsets.all(16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 0.72,
                    ),
                    itemCount: lista.length,
                    itemBuilder: (context, index) {
                      final postre = lista[index];
                      return PostreCard(
                        postre: postre,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetailScreen(postre: postre),
                            ),
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
