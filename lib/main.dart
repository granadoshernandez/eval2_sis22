import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Inicializa Firebase

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ),
      body: StreamBuilder(
        stream:
            FirebaseFirestore.instance.collection('tb_productos').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator(); // Muestra un indicador de carga
          }
          var productos = snapshot.data.docs;
          List<Widget> productList = [];
          for (var producto in productos) {
            var nombre = producto['nombre'];
            var precio = producto['precio'];
            var stock = producto['stock'];
            productList.add(
              ListTile(
                title: Text(nombre),
                subtitle: Text('Precio: $precio, Stock: $stock'),
              ),
            );
          }
          return ListView(
            children: productList,
          );
        },
      ),
    );
  }
}
