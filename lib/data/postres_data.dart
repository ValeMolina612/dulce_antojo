import '../models/postre.dart';

const List<String> categorias = [
  'Todos',
  'Pasteles',
  'Helados',
  'Galletas',
  'Tradicionales',
];

// Las imágenes están en la carpeta assets/images/ del proyecto.
const List<Postre> postres = [
  Postre(
    id: 1,
    nombre: 'Pastel de Chocolate',
    categoria: 'Pasteles',
    descripcionCorta: 'Esponjoso pastel con ganache de chocolate oscuro.',
    descripcionLarga:
        'Un clásico irresistible: tres capas de bizcocho húmedo de chocolate, '
        'rellenas y cubiertas con ganache de chocolate oscuro. Perfecto para '
        'cumpleaños o para consentirte un domingo cualquiera.',
    imagen: 'assets/images/pastel_chocolate.jpg',
    tiempo: '90 min',
    precio: 250,
    calificacion: 4.9,
    ingredientes: [
      'Harina',
      'Cacao',
      'Huevos',
      'Mantequilla',
      'Azúcar',
      'Crema'
    ],
  ),
  Postre(
    id: 2,
    nombre: 'Cheesecake de Fresa',
    categoria: 'Pasteles',
    descripcionCorta: 'Cremoso cheesecake con mermelada de fresa natural.',
    descripcionLarga:
        'Base crujiente de galleta, relleno cremoso de queso crema y una '
        'cubierta de fresas frescas con mermelada casera. Se sirve frío.',
    imagen: 'assets/images/cheesecake_fresa.jpg',
    tiempo: '60 min + 4 h de refrigeración',
    precio: 220,
    calificacion: 4.8,
    ingredientes: [
      'Queso crema',
      'Galletas',
      'Fresas',
      'Azúcar',
      'Mantequilla'
    ],
  ),
  Postre(
    id: 3,
    nombre: 'Helado de Vainilla',
    categoria: 'Helados',
    descripcionCorta: 'Helado artesanal con vainas de vainilla de Papantla.',
    descripcionLarga:
        'Preparado con leche, crema y vainilla natural. Su textura suave y '
        'su aroma lo hacen el acompañante ideal de cualquier postre.',
    imagen: 'assets/images/helado_vainilla.jpg',
    tiempo: '45 min + congelación',
    precio: 60,
    calificacion: 4.6,
    ingredientes: ['Leche', 'Crema', 'Vainilla', 'Azúcar', 'Yemas'],
  ),
  Postre(
    id: 4,
    nombre: 'Galletas con Chispas',
    categoria: 'Galletas',
    descripcionCorta: 'Crujientes por fuera, suaves por dentro.',
    descripcionLarga:
        'Galletas horneadas con generosas chispas de chocolate semiamargo. '
        'Salen doradas en los bordes y con el centro suave y masticable.',
    imagen: 'assets/images/galletas_chispas.jpg',
    tiempo: '30 min',
    precio: 45,
    calificacion: 4.7,
    ingredientes: [
      'Harina',
      'Mantequilla',
      'Chispas de chocolate',
      'Azúcar morena',
      'Huevo'
    ],
  ),
  Postre(
    id: 5,
    nombre: 'Flan Napolitano',
    categoria: 'Tradicionales',
    descripcionCorta: 'Flan casero con caramelo y textura sedosa.',
    descripcionLarga:
        'El postre de las fiestas mexicanas: mezcla de leche, queso crema y '
        'huevo, horneado a baño maría y bañado en caramelo dorado.',
    imagen: 'assets/images/flan_napolitano.jpg',
    tiempo: '75 min',
    precio: 80,
    calificacion: 4.8,
    ingredientes: [
      'Leche condensada',
      'Leche evaporada',
      'Queso crema',
      'Huevos',
      'Caramelo'
    ],
  ),
  Postre(
    id: 6,
    nombre: 'Churros con Cajeta',
    categoria: 'Tradicionales',
    descripcionCorta: 'Churros recién hechos con azúcar y canela.',
    descripcionLarga:
        'Masa frita hasta quedar dorada y crujiente, pasada por azúcar con '
        'canela y acompañada de cajeta caliente para mojar.',
    imagen: 'assets/images/churros_cajeta.jpg',
    tiempo: '25 min',
    precio: 70,
    calificacion: 4.9,
    ingredientes: ['Harina', 'Agua', 'Azúcar', 'Canela', 'Cajeta', 'Aceite'],
  ),
];
