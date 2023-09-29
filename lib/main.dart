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
  @override
  _RegistroProductoState createState() => _RegistroProductoState();
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
            controller: stockController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Stock'),
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: stockController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'precio'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Aquí puedes agregar la lógica para guardar los datos ingresados.
              String nombre = nombreController.text;
              int stock = int.tryParse(stockController.text) ?? 0;

              // Puedes hacer algo con los valores ingresados, como enviarlos a una base de datos.
              print('Nombre: $nombre, Stock: $stock');
            },
            child: Text('Guardar'),
          ),
        ],
      ),
    );
  }
}
