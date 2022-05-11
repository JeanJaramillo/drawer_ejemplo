import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const String ruta = "/Settings";
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'OH SI, ANIMES...'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String valorInput = '';
  final controllertext = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(1.0),
              child: Image.network(
                  "https://i.pinimg.com/originals/4e/91/af/4e91af4d3b8a531c8da9f5d7c54943b5.gif"),
            ),
            TextField(
              decoration:
                  const InputDecoration(hintText: "Ingrese el texto aquí"),
              onSubmitted: (String valortext) {
                cambiar(valortext);
              },
              controller: controllertext,
            ),
            Text(valorInput),
          ],
        ),
      ),
    );
  }

  void cambiar(String valortext) {
    // ignore: avoid_print
    setState(() {
      if (valortext.toUpperCase() == "PERRO") {
        valortext = "Firulais";
      }
      if (valortext.toUpperCase() == "GATO") {
        valortext = "Michi";
      }
      if (valortext.toUpperCase() == "CTMR") {
        valortext = "¿Con esa boca besas a tu madre?";
      }
      if (valortext.toUpperCase() == "HDP") {
        valortext = "¿Con esa boca besas a tu madre?";
      }
      valorInput = valorInput + '\n' + valortext;
      controllertext.text = '';
    });
  }
}
