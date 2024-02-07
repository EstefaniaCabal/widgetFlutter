import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Constructor con parámetro Key opcional
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perfil de un usuario X'), 
        ),
        body: const UserProfilePage(),
      ),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          // Widget Container para mostrar la imagen de perfil---------------------
          Container(
            margin: const EdgeInsets.all(50.0), 
            width: 150.0,
            height: 150.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage('https://cdn.pixabay.com/photo/2017/07/18/18/24/dove-2516641_1280.jpg'), 
              ),
            ),
          ),
        
          // Widget Text para mostrar el nombre del usuario-----------------
          const Text(
            'Miguel Hidalgo', 
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          // Widget Row para alinear los iconos de redes sociales------------
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.facebook), 
                onPressed: () {             
                },
              ),
              IconButton(
                icon: const Icon(Icons.linked_camera),
                onPressed: () {
                },
              ),
              IconButton(
                icon: const Icon(Icons.access_alarm), 
                onPressed: () {
                },           
              ),
            ],
          ),
        ],
      ),
    );
  }
}
