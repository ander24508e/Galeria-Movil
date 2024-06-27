import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GALERIA',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GALERIA DE TURISMO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}          

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset('lib/imagenes/imagen-turismo.jpeg'),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network('https://www.upsjb.edu.pe/wp-content/uploads/2024/03/40-turismo--1024x592.jpeg')
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network('https://cdn.diferenciador.com/imagenes/turismo-aventura-cke.jpg')
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset('lib/imagenes/imagen-turismo2.jpg'),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset('lib/imagenes/imagen-turismo3.jpg'),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Image.network('https://mytrip2ecuador.com/wp-content/uploads/2022/03/ecuador-mainland.jpg')
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}