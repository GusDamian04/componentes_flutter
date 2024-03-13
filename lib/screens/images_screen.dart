import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/infinite_list.dart';
import 'package:practica3/screens/notification.dart';
import 'package:practica3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  int selectedIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagenes', style: AppTheme.lightTheme.textTheme.headlineLarge,),
      ),
      body: ListView(
        children: [
          imageCard(),
          imageWeb(),
        ],
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

  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(20),
      elevation: 15,
      child: SizedBox(
          height: 304,
          width: 400,
          // height: 1,
          // width: 1,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: const Image(
                  image: AssetImage('assets/img/juego.png'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text('Juego', style: AppTheme.lightTheme.textTheme.headlineLarge,),
              )
            ],
          ),
        ),
    );
  }

  Widget imageWeb(){
    return Center(
      child: Image.network(
      'https://static6.depositphotos.com/1023870/625/i/450/depositphotos_6256662-stock-photo-sea-landscape-with-a-sunset.jpg'
      ),
    );
  }
}