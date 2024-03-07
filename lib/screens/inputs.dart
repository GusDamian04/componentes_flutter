import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas')
        ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaTexto(),
            entradaSwitch(),
            entradaSider(),
            entradaRadio(),
            entradaRadio1(),
            const ElevatedButton(
              onPressed: null,
              child: Text('Guardar')
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.next_plan), label: 'Data'),
        ],
      ),
    );
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
  Column entradaRadio1(){
    return Column(
      children: [
        Text(
          '¿Qué bebida prefires?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
          ListTile(
            title: Text(
              'Coca-Cola',
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
              'Agua',
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
}