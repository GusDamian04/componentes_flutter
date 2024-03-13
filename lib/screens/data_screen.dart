import 'package:flutter/material.dart';
import 'package:practica3/models/data.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list.dart';
import 'package:practica3/screens/notification.dart';
import 'package:practica3/theme/app_theme.dart';

class DataScreen extends StatefulWidget {
  final Data datos;
  const DataScreen({super.key, required this.datos});

  @override
  State<DataScreen> createState() => _DataScreen();
}

class _DataScreen extends State<DataScreen> {
  int selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        title: const Text('Entradas')
        ),
      body: ListView(
        children: [
            Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Nombre: ',
                style: AppTheme.lightTheme.textTheme.headlineLarge),
              entradaTexto(),
              Text(
                '¿Te gusta Flutter?',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              entradaTexto(),
              Text(
                '¿Qué tanto te gusta Flutter?',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              entradaTexto(),
              Text(
                '¿Qué comida prefieres?',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              entradaTexto(),
              Text(
                '¿Qué postres te gustan?',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              entradaTexto(),
            ],
          ),
        ),
      ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => openScreen(context, index),
        backgroundColor: AppTheme.primaryColor,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: AppTheme.secondaryColor,
            icon: Icon(Icons.home),
            label: 'Inicio'
          ),
          BottomNavigationBarItem(
            backgroundColor: AppTheme.secondaryColor,
            icon: Icon(Icons.list),
            label: 'Lista'
          ),
          BottomNavigationBarItem(
            backgroundColor: AppTheme.secondaryColor,
            icon: Icon(Icons.notification_important),
            label: 'Notificaciones'
          ),
          BottomNavigationBarItem(
            backgroundColor: AppTheme.secondaryColor,
            icon: Icon(Icons.image),
            label: 'Imagenes'
          ),
          BottomNavigationBarItem(
            backgroundColor: AppTheme.secondaryColor,
            icon: Icon(Icons.exit_to_app),
            label: 'Salir'
          ),
        ],
      ),
    );
  }

  openScreen(BuildContext context, int index){
    MaterialPageRoute ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
    switch( index ){
      case 0:
        ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        ruta = MaterialPageRoute(builder: (context) => const InfiniteList ());
        break;
      case 2:
        ruta = MaterialPageRoute(builder: (context) => const Notifications ());
        break;
      case 3:
        ruta = MaterialPageRoute(builder: (context) => const ImagesScreen ());
        break;
    }
    setState(() {
      selectedIndex = index;
      Navigator.push(context, ruta);
    });
  }

  TextField entradaTexto() {
    return TextField(
          style: AppTheme.lightTheme.textTheme.headlineMedium,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
        );
  }
}