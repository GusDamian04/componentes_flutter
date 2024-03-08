import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list.dart';
import 'package:practica3/screens/notification.dart';
import 'package:practica3/theme/app_theme.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  bool valueSwitch = false;
  double sliderValue = 5.0;
  int foodRadio = 0;
  bool postreCheck1 = false;
  bool postreCheck2 = false;
  bool postreCheck3 = false;
  int selectedIndex = 0; // Elemento seleccionado de la BottomNavigationBar

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
              entradaTexto(),
              entradaSwitch(),
              entradaSider(),
              entradaRadio(),
              Text(
                '¿Qué postres te gustan?',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              entradaCheck(),
              const ElevatedButton(
                onPressed: null,
                child: Text('Guardar')
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

  TextField entradaTexto() {
    return TextField(
          style: AppTheme.lightTheme.textTheme.headlineMedium,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: 'Escribe tu nombre: ',
            labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
        );
  }
  Row entradaSwitch(){
    return Row(
      children: [
        const FlutterLogo(),
        Text(
          '¿Te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
        Switch(
          value: valueSwitch,
          onChanged: (value){
            setState(() {
              valueSwitch = value;
              // print('Valor del slider: $valueSwitch');
            });
          }
        )
      ],
    );
  }
  Column entradaSider(){
    return Column(
      children: [
        Text('¿Que tanto te gusta Flutter??', style: AppTheme.lightTheme.textTheme.headlineLarge,),
        Slider(
          min: 0.0,
          max: 10.0,
          value: sliderValue,
          divisions: 10,
          label: '${sliderValue.round()}',
          onChanged: (value) {
            setState(() {
              sliderValue = value;
              // print('Valor del slider: $sliderValue');
            });
          }),
      ],
    );
  }

  Column entradaRadio(){
    return Column(
      children: [
        Text(
          '¿Qué prefires?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
          ListTile(
            title: Text(
              'Tacos al pastor',
              style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
            leading: Radio(
              value: 1,
              groupValue: foodRadio,
              onChanged: (value) {
                setState(() {
                  foodRadio = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Pozole',
              style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
            leading: Radio(
              value: 2,
              groupValue: foodRadio,
              onChanged: (value) {
                setState(() {
                  foodRadio = value!;
                });
              },
            ),
          ),
      ],
    );
  }

  Row entradaCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Helado',
          style: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
        Checkbox(
          value: postreCheck1,
          onChanged: (value){
            setState(() {
              postreCheck1 = value!;
            });
          }
        ),
        Text(
          'Chocoflan',
          style: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
        Checkbox(
          value: postreCheck2,
          onChanged: (value){
            setState(() {
              postreCheck2 = value!;
            });
          }
        ),
        Text(
          'Pastel',
          style: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
        Checkbox(
          value: postreCheck3,
          onChanged: (value){
            setState(() {
              postreCheck3 = value!;
            });
          }
        ),
      ],
    );
  }
}