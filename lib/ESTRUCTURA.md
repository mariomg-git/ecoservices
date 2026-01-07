# Estructura del Proyecto EcoServices

## 📁 Organización de carpetas

```
lib/
├── main.dart                    # Punto de entrada (limpio y simple)
├── constants/
│   ├── colors.dart             # Paleta de colores centralizada
│   └── index.dart              # Barrel file para imports fáciles
├── pages/
│   ├── landing_page.dart       # Página principal (Landing Page)
│   └── index.dart              # Barrel file para imports fáciles
└── widgets/
    ├── navbar.dart             # Barra de navegación
    ├── hero_section.dart       # Sección Hero
    ├── features_section.dart   # Sección de características
    ├── services_section.dart   # Sección de servicios
    ├── cta_section.dart        # Call To Action
    ├── footer.dart             # Pie de página
    └── index.dart              # Barrel file para imports fáciles
```

## 🎯 Estructura Profesional

Esta estructura permite:

- **Modularidad**: Cada componente es independiente y reutilizable
- **Mantenibilidad**: Fácil de actualizar secciones específicas
- **Escalabilidad**: Preparado para agregar nuevas páginas y widgets
- **Claridad**: El código es legible y bien organizado

## 🔄 Cómo agregar una nueva página

1. Crea el archivo en `lib/pages/nombre_pagina.dart`
2. Define tu página como un `StatelessWidget` o `StatefulWidget`
3. Exporta en `lib/pages/index.dart`
4. Importa en `lib/main.dart` y úsalo

## 📦 Cómo agregar un nuevo widget

1. Crea el archivo en `lib/widgets/nombre_widget.dart`
2. Define tu widget
3. Exporta en `lib/widgets/index.dart`
4. Úsalo en cualquier página o widget

## 🎨 Usando los colores

Importa desde constants:
```dart
import 'package:ecoservices/constants/colors.dart';

// Uso:
Color color = AppColors.primary;
Color bgColor = AppColors.bgLight;
```

## ✨ Ventajas de esta estructura

- **Separación de responsabilidades**: Cada archivo tiene un propósito específico
- **Fácil colaboración**: Múltiples desarrolladores pueden trabajar en paralelo
- **Pruebas unitarias**: Cada widget puede testearse de forma independiente
- **Reutilización de código**: Los widgets pueden usarse en múltiples páginas
- **Performance**: Solo importas lo que necesitas
