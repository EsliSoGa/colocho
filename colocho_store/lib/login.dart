import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //Child solo uno, children varios
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment
                  .end, //start inicio, center centrado, end derecho
              children: [
                Container(
                  //padding: const EdgeInsets.all(74.0),
                  //margin: const EdgeInsets.only(left:74.0),
                  width: 278,
                  height: 56,
                  color: Colors.black12,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "Usuario",
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  //padding: const EdgeInsets.all(74.0),
                  //margin: const EdgeInsets.all(74.0),
                  width: 278,
                  height: 56,
                  color: Colors.black12,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "Contraseña",
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                const Text(
                  "Olvidaste tu contraseña?",
                  style: TextStyle(
                    color: Color(0xFF09ADEA),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 65,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Otros metodos de autenticación",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: 278.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Ink(
                        width: 54.0,
                        height: 54.0,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF1877F2),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          //padding: const EdgeInsets.all(6.0), No funciona
                          icon: const Icon(Icons.facebook),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                      Ink(
                        width: 54.0,
                        height: 54.0,
                        decoration: const ShapeDecoration(
                          color: Colors.black12,
                          shape: CircleBorder(),
                          //shadows: Shadow(color: Colors.black87, offset: Offset.zero, blurRadius: 1.2)
                        ),
                        child: IconButton(
                          //padding: const EdgeInsets.all(6.0), No funciona
                          icon: const Icon(Icons.abc),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ),
                      Ink(
                        width: 54.0,
                        height: 54.0,
                        decoration: const ShapeDecoration(
                          color: Colors.black,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          //padding: const EdgeInsets.all(6.0), No funciona
                          icon: const Icon(Icons.apple),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 82,
                ),
                SizedBox(
                  width: 278,
                  height: 46,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      //backgroundColor: Colors.teal,
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(46.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Iniciar Sesión"),
                  ),
                ),
                /*MaterialButton(
                  //style: style,
                  height: 56.0,
                  minWidth: 278,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  splashColor: Colors.grey,
                  onPressed: () {},
                  child: const Text('Iniciar Sesión'),
                ),*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}
