import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
  final String title;

  @override
  _RegistroProductoState createState() => _RegistroProductoState();
}
}
class _RegistroProductoState extends State<RegistroProducto> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController stockController = TextEditingController();

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
            child: Text('Guardar'),
          ),
        ],
      ),
    );
  }
}
