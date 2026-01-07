# Documentación - Página de Autenticación

## 📁 Nueva Estructura Agregada

```
lib/
├── config/
│   └── routes.dart             # Gestor de rutas de la aplicación
├── pages/
│   ├── landing_page.dart       # Landing page (pública)
│   └── auth_page.dart          # Página de login/registro
└── widgets/
    ├── custom_text_field.dart  # Campo de texto personalizado
    ├── auth_form_login.dart    # Formulario de login
    └── auth_form_register.dart # Formulario de registro
```

## 🔐 Componentes de Autenticación

### AuthPage (`lib/pages/auth_page.dart`)
- Página principal de autenticación
- Soporta desktop (2 columnas) y mobile (1 columna)
- Tabs para cambiar entre Login y Register
- Diseño responsivo y profesional

### AuthFormLogin (`lib/widgets/auth_form_login.dart`)
- Formulario con validaciones
- Campos: Email, Contraseña
- Enlace "¿Olvidaste tu contraseña?"
- Validaciones en tiempo real

### AuthFormRegister (`lib/widgets/auth_form_register.dart`)
- Formulario completo de registro
- Campos: Nombre, Email, Contraseña, Confirmar Contraseña
- Validación de coincidencia de contraseñas
- Checkbox de términos y condiciones
- Validaciones exhaustivas

### CustomTextField (`lib/widgets/custom_text_field.dart`)
- Widget reutilizable para campos de texto
- Soporte para iconos
- Validación personalizada
- Estilos consistentes

## 🛣️ Sistema de Rutas (`lib/config/routes.dart`)

```dart
AppRoutes.landing  // '/'   - Landing page
AppRoutes.auth     // '/auth' - Página de autenticación
```

### Uso de rutas:
```dart
// Navegar a autenticación
Navigator.pushNamed(context, AppRoutes.auth);

// Navegar a landing
Navigator.pushNamed(context, AppRoutes.landing);
```

## 🎨 Características del Diseño

### Desktop
- Lado izquierdo: Branding y características
- Lado derecho: Formulario de autenticación
- Diseño profesional con gradiente

### Mobile
- Header con branding
- Formularios adaptados a pantalla pequeña
- Navegación simplificada

## ✅ Validaciones Implementadas

### Login
- Email requerido y válido
- Contraseña mínimo 6 caracteres

### Registro
- Nombre completo requerido
- Email válido y requerido
- Contraseña mínimo 6 caracteres
- Confirmación de contraseña
- Aceptación de términos obligatoria

## 🔄 Próximos Pasos Recomendados

1. **Integración con Firebase/Backend**
   - Conectar formularios a API
   - Autenticación real

2. **Dashboard de Usuario**
   - Página protegida post-login
   - Gestión de servicios

3. **Recuperación de Contraseña**
   - Implementar flujo de reset

4. **Perfil de Usuario**
   - Editar información
   - Cambiar contraseña

## 🚀 Cómo Usar

### Acceder a la página de auth desde landing:
El botón "Comenzar" en el navbar ahora navega a AuthPage

### Agregar más páginas:
1. Crear archivo en `lib/pages/nueva_pagina.dart`
2. Agregar ruta en `lib/config/routes.dart`
3. Usar `Navigator.pushNamed(context, AppRoutes.nueva)`
