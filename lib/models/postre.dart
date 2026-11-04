class Postre {
  final int id;
  final String nombre;
  final String categoria;
  final String descripcionCorta;
  final String descripcionLarga;
  final String imagen;
  final String tiempo;
  final double precio;
  final double calificacion;
  final List<String> ingredientes;

  const Postre({
    required this.id,
    required this.nombre,
    required this.categoria,
    required this.descripcionCorta,
    required this.descripcionLarga,
    required this.imagen,
    required this.tiempo,
    required this.precio,
    required this.calificacion,
    required this.ingredientes,
  });
}
