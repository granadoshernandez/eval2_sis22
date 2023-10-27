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
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromARGB(212, 231, 123, 226),
              Color.fromARGB(255, 160, 226, 243),
              Color.fromARGB(255, 68, 65, 58),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: 'Wrap',
                  style: TextStyle(
                    color: Color.fromARGB(255, 8, 8, 8),
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
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
                  Wen('Lore'),
                ],
              ),
              SizedBox(height: 40),
              Text('RichText',
                  style: TextStyle(
                    color: Color.fromARGB(255, 12, 12, 12),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 32,
                    color: Color.fromARGB(255, 113, 84, 241),
                  ),
                  children: [
                    TextSpan(
                      text: 'Hola ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Mundo  ',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 24,
                      ),
                    ),
                    TextSpan(
                      text: 'esto es  ',
                      style: TextStyle(
                        color: Color.fromARGB(166, 36, 36, 35),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                        text: 'Rich',
                        style: TextStyle(
                          backgroundColor: Color.fromARGB(255, 68, 182, 248),
                        )),
                    TextSpan(
                        text: 'Text',
                        style: TextStyle(
                          color: Color.fromARGB(255, 238, 108, 2),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    //TextSpan(text: ' \nHola')
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
        backgroundColor: Color.fromARGB(255, 215, 245, 132),
      ),
      label: Text(this.texto, style: TextStyle(color: Colors.white)),
      backgroundColor: Color.fromARGB(255, 180, 84, 245),
    );
  }
}
