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
          title: Text('Registro de Productos'),
        ),
        body: RegistroProducto(),
      ),
    );
  }
}
<<<<<<< HEAD

class RegistroProducto extends StatefulWidget {
=======
class RegistroProducto extends StatefulWidget {
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
  final String title;

>>>>>>> 2b1d7d7b4274800c9034faa61e186e7cd72cbbdd
  @override
  _RegistroProductoState createState() => _RegistroProductoState();
}
}
class _RegistroProductoState extends State<RegistroProducto> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController precioController = TextEditingController();
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
            controller: precioController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Precio'),
          ),
          SizedBox(height: 20.0),
<<<<<<< HEAD
          ElevatedButton(
            onPressed: _guardarDatos,
=======
          TextField(
            controller: stockController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'stock'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Aquí puedes agregar la lógica para guardar los datos ingresados.
              String nombre = nombreController.text;
              String precio = precioController.text;
              int stock = int.tryParse(stockController.text) ?? 0;

              // Puedes hacer algo con los valores ingresados, como enviarlos a una base de datos.
              print('Nombre: $nombre, Precio: $precio, Stock: $stock');
            },
>>>>>>> 2b1d7d7b4274800c9034faa61e186e7cd72cbbdd
            child: Text('Guardar'),
          ),
        ],
      ),
    );
  }
}
