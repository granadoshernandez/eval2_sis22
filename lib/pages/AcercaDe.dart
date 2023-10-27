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
              Color.fromARGB(255, 241, 25, 133),
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
                alignment: WrapAlignment.center,
                spacing: 10.0,
                direction: Axis.horizontal,
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
                    color: Color.fromARGB(255, 12, 12, 12),
                    fontSize: 20,
                  )),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 32,
                    color: Color.fromARGB(255, 221, 236, 7),
                  ),
                  children: [
                    TextSpan(
                      text: 'Texto en negrita ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Texto Rojo y Grande  ',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 24,
                      ),
                    ),
                    TextSpan(
                      text: 'Texto Verde Cursiva ',
                      style: TextStyle(
                        color: Color.fromARGB(166, 164, 248, 6),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(text: 'Wendy '),
                    TextSpan(
                        text: 'Lorena Granados',
                        style: TextStyle(
                          color: Color.fromARGB(255, 8, 218, 8),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    // TextSpan(text: ' \nHola')
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
