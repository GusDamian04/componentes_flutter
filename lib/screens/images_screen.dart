import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
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
      )
    );
  }

  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: SizedBox(
          height: 1,
          width: 1,
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
                child: Text('Paisaje', style: AppTheme.lightTheme.textTheme.headlineLarge,),
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