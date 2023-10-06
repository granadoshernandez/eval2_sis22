import 'package:flutter/material.dart';

import 'AcercaDe.dart';
import 'Consulta.dart';
import 'Registrar.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => homeState();
}

class homeState extends State<home> {
  int ItemDrawer = 0;

  _getDrawerItem(int position) {
    switch (position) {
      case 0:
        return AcercaDe();
      case 1:
        return Registro();
      case 2:
        return Consulta();
    }
  }

  void _onSelectItemDrawer(int pos) {
    Navigator.pop(context);
    setState(() {
      ItemDrawer = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 237, 21),
        title: Text('EVALUACIÓN 2'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 237, 73),
              ),
              child: const Center(
                child: Text('NAVEGACIÓN',
                    style: TextStyle(
                        color: Color.fromARGB(255, 224, 9, 9),
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: const Text(
                'Acerca de nosotros',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                _onSelectItemDrawer(0);
              },
            ),
            ListTile(
                title: const Text('Registrar productos',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onTap: () {
                  _onSelectItemDrawer(1);
                }),
            ListTile(
                title: const Text('Consultar productos',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onTap: () {
                  _onSelectItemDrawer(2);
                }),
            Divider(color: Colors.black),
          ],
        ),
      ),
      body: _getDrawerItem(ItemDrawer),
    );
  }
}
