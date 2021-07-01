import 'package:flutter/material.dart';

import 'package:contador/src/pages/contador_page.dart';
//import 'package:contador/src/pages/home_page.dart';

// Creaccion de un widget
class MyApp extends StatelessWidget {
  // Sobre escribimos el metodo build que ya trae el StatelessWidget
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }
}
