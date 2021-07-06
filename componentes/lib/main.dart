import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'ES'), // Spanish, no country code
      ],
      title: 'Material App',
      //home: HomePage(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      // Si la pagina no se encuentra ejecuta el codigo de abajo
      // onGenerateRoute: (RouteSettings settings) {
      //   print('Ruta llamada: ${settings.name}');
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => AlertPage()
      //   );
      // },
    );
  }
}
