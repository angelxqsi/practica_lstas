import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Clase principal de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', //
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstPage(),
    );
  }
}

// Clase de la primera página de la aplicación
class FirstPage extends StatelessWidget {
  const FirstPage ({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        // Barra de aplicación de la página
        title: const Text('Pagina Principal'), // Título de la barra de aplicación
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Color de fondo de la barra de aplicación
      ),
      body: Center(
        // Contenido principal de la página
        child: ElevatedButton(
          // Botón elevado que al hacer clic navega a la Segunda Página
          child: const Text('Ir a segunda pantalla'), // Texto del botón
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const SecondPage())); // Navegación a la Segunda Página
          },
        ),
      ),
    );
  }
}

// Clase de la segunda página de la aplicación
class SecondPage extends StatelessWidget {
  const SecondPage ({super.key}); // Constructor de la clase SecondPage

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      // Widget Scaffold que proporciona la estructura básica de una página
      appBar: AppBar(
        // Barra de aplicación de la página
        title: const Text('Segunda Pagina'), // Título de la barra de aplicación
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Color de fondo de la barra de aplicación
      ),
      body: Center(
        // Contenido principal de la página
        child: ElevatedButton(
          // Botón elevado que al hacer clic regresa a la Primera Página
          child: const Text('Regresar'), // Texto del botón
          onPressed: () {
            Navigator.pop(context); // Regresa a la página anterior
          },
        ),
      ),
    );
  }
}
