import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

// Guión bajo es clase privada _
class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int index = 0;
  List<String> collections = [
    'Flutter',
    'es',
    'genial!',
    'Creado',
    'por',
    'Juan ',
    'Angel ',
    'Cruz',
    '180527'
  ];

  void onPressedButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 9 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primera Aplicación Stateful Widget 180527"),
        backgroundColor: Color.fromARGB(255, 37, 24, 110),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 16, 39, 53)),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                  child: Text("Actualizar"),
                  onPressed: onPressedButton,
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 35, 34, 133)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
