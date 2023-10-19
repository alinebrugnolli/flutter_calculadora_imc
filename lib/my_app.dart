import 'package:flutter/material.dart';
import 'package:flutter_calculadora_imc/screens/principal_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Chamando método build");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple, 
      accentColor: const Color.fromARGB(255, 101, 24, 114), 
      cardColor: const Color.fromARGB(255, 93, 43, 180), 
      backgroundColor: const Color.fromARGB(255, 200, 190, 217)),
      textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),          
          titleLarge: GoogleFonts.oswald(
            fontSize: 35,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          bodyMedium: GoogleFonts.merriweather( fontSize: 20, color: Colors.black),
          displaySmall: GoogleFonts.merriweather(fontSize: 20, color: Colors.black),
        ),       
      ),
      home: const PrincipalScreen(),      
    );
  }
}

