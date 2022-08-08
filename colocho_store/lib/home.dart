import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Las constantes, cambiaron entre plataformas, por lo que hay que colocar que es constante, para no dejarlo afuera.
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.pink,
        title: const Center(child: Text("Colocho Store")),
      ),
      body: const Center(
          child: Text(
        "Hola Mundo",
        //style: TextStyle(color: Colors.white),
      )),
    );
  }
}
