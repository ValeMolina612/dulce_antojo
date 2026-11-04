# Dulce Antojo 🍰

App de postres en Flutter: Splash (3 s) → Home (búsqueda, chips, GridView) → Detalle (Hero).

## Cómo abrirla (una sola vez)

1. Descomprime la carpeta en `C:\proyectos\dulce_antojo` (fuera de OneDrive).
2. Abre esa carpeta en VS Code (Archivo → Abrir carpeta).
3. En la terminal, genera las carpetas de plataforma (android, web, windows...):

   ```bash
   flutter create .
   ```

   No sobrescribe tu código de `lib/`, ni `pubspec.yaml`, ni las imágenes.

4. Instala dependencias y ejecuta:

   ```bash
   flutter pub get
   flutter run
   ```

## Estructura

```
lib/
├── main.dart
├── models/postre.dart
├── data/postres_data.dart
├── screens/ (splash, home, detail)
└── widgets/ (postre_card, postre_image)
assets/images/  ← las 6 imágenes de los postres
```

## Cambiar una imagen

Reemplaza el archivo en `assets/images/` conservando el mismo nombre
(o cambia la ruta en `lib/data/postres_data.dart`) y reinicia la app
completa (los assets no se actualizan con hot reload).
