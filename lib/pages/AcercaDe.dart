import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AcercaDe(),
  ));
}

class AcercaDe extends StatelessWidget {
  const AcercaDe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examen'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromARGB(212, 231, 123, 226),
              Color.fromARGB(255, 160, 226, 243),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'WRAP',
                style: TextStyle(
                  color: Color.fromARGB(255, 12, 12, 12),
                  fontSize: 20,
                ),
              ),
              Wrap(
                children: <Widget>[
                  Wen('Wendy'),
                  Wen('Sthefany'),
                  Wen('Wendy'),
                  Wen('Wendy'),
                  Wen('Wendy'),
                  Wen('Wendy'),
                  Wen('Wendy'),
                ],
              ),
              SizedBox(height: 40),
              Text('RichText',
                  style: TextStyle(
                      color: Color.fromARGB(255, 12, 12, 12), fontSize: 20)),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.blue,
                  ),
                  children: [
                    TextSpan(
                      text: 'Texto en negrita: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: 'texto normal'),
                    TextSpan(
                      text: '\nTexto Rojo y Grande: ',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 24,
                      ),
                    ),
                    TextSpan(text: 'Este es un texto rojo y grande.'),
                    TextSpan(
                      text: '\nTexto Verde Cursiva: ',
                      style: TextStyle(
                        color: Colors.green,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(text: 'Este es un texto verde en cursiva.'),
                    TextSpan(
                        text: 'Wendy Granados',
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Wen extends StatelessWidget {
  final String texto;

  Wen(this.texto);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        child: Text(this.texto),
        backgroundColor: Colors.white,
      ),
      label: Text(this.texto, style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.blue,
    );
  }
}
