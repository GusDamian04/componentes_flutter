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
  // Constante del color de botones y otros widgets
  static const widgetsColor = Color.fromARGB(255, 179, 65, 220);
  // Contante de color de botones y widgets desabilitados
  static const disableWidgetColor = Color.fromARGB(255, 125, 123, 123);

  //Definicion del tema de color y estilo de la App
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Colores del tema claro
    scaffoldBackgroundColor: backColor,
    appBarTheme: AppBarTheme(
      color: primaryColor,
      titleTextStyle: GoogleFonts.lato(
        color: backColor,
        fontSize: 28.5,
        fontWeight: FontWeight.bold
      )
    ),
    iconTheme: const IconThemeData(
      color: primaryColor,
      size: 30.0,
    ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widgetsColor),
            foregroundColor: MaterialStateProperty.all(primaryColor),
            textStyle: MaterialStateProperty.all(
              GoogleFonts.pacifico(
                color: backColor,
                fontSize: 22.5
              )
            )
          )
        ),
        // estilo de los textos
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.acme(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: primaryColor,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.double,
            decorationThickness: 2.5,
          ),

          headlineMedium: GoogleFonts.alexandria(
              fontSize: 25.5,
              fontWeight: FontWeight.w700,
              color: secondaryColor,
          ),

          // Fuente para textos muy pequelos
          bodySmall: GoogleFonts.montserrat(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: secondaryColor,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline
          ),

          bodyMedium: GoogleFonts.montserrat(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: secondaryColor,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline
          )
        ),
  );
}