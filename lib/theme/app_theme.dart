import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  // Constante del color primario
  static const primaryColor =  Color.fromARGB(255, 41, 15, 46);
  // static const primaryColor =  Color.fromARGB(255, 70, 0, 0);
  // Constante del color secundario
  static const secondaryColor = Color.fromARGB(255, 124, 98, 129);
  // Constante del color del fondo
  static const backColor = Color.fromARGB(255, 247, 217, 251);

  //Definicion del tema de color y estilo de la App
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
        appBarTheme: const AppBarTheme(color: primaryColor),
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.acme(
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
            color: primaryColor
          ),

          // Fuente para textos muy pequelos
          bodySmall: GoogleFonts.montserrat(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: secondaryColor
          ),
        ),
  );
}