import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Registro de Producto'),
        ),
        body: RegistroProducto(),
      ),
    );
  }
}

class RegistroProducto extends StatefulWidget {
  @override
  _RegistroProductoState createState() => _RegistroProductoState();
}

class _RegistroProductoState extends State<RegistroProducto> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController stockController = TextEditingController();

  Future<void> _guardarDatos() async {
    String nombre = nombreController.text;
    int stock = int.tryParse(stockController.text) ?? 0;

    try {
      await FirebaseFirestore.instance.collection('tb_productos').add({
        'nombre': nombre,
        'stock': stock,
      });

      print(
          'Datos guardados en Firebase Firestore. Nombre: $nombre, Stock: $stock');
    } catch (e) {
      print('Error al guardar los datos: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: nombreController,
            decoration: InputDecoration(labelText: 'Nombre del Producto'),
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: stockController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Stock'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _guardarDatos,
            child: Text('Guardar'),
          ),
        ],
      ),
    );
  }
}
