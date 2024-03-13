import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list.dart';
import 'package:practica3/theme/app_theme.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificaciones')
        ),
      body: ListView(
        children: const [
            Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Notificaciones',
              )
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
}