import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App de componentes de flutter"),
      ),
        body: 
          ListView(
            children: const <Widget> [
              ListTile(
                title: Text('Entradas'),
                subtitle: Text('Recuperar informacion de TexField'),
                leading: Icon(Icons.input_rounded),
                trailing: Icon(Icons.arrow_right_alt_outlined),
              ),
              Divider(),
              ListTile(
                title: Text('Lista infinita'),
                subtitle: Text('Recuperar muchos elementos'),
                leading: Icon(Icons.list_alt_sharp),
                trailing: Icon(Icons.arrow_right_alt_outlined),
              ),
              Divider(),
              ListTile(
                title: Text('Notificaciones'),
                subtitle: Text('Manejo de Notificaciones'),
                leading: Icon(Icons.notification_important),
                trailing: Icon(Icons.arrow_right_alt_outlined),
              )
            ],
          ),
      );
  }
}