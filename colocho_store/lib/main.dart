//import 'package:colocho_store/home.dart';
import 'package:colocho_store/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  //strengths.forEach((strength) {
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  } //);
  return MaterialColor(color.value, swatch);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Se refiere al contexto, todo el contenido de la pagina.
    return MaterialApp(
      //Contiene la aplicacion como tal.
      debugShowCheckedModeBanner: false,
      title: 'Colocho Store', //Nombre de la pestaña
      theme: ThemeData(
        primarySwatch: buildMaterialColor(const Color(0xFF006684)), //006684
        canvasColor: Colors.white,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.amber),
        //textTheme: const TextTheme(,),
      ),
      home: const LoginScreen(),
      //Tiene nuestra pagina de inicio
    );
  }
}
