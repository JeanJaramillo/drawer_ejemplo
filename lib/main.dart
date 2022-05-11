import 'package:flutter/material.dart';
import 'package:drawer_ejemplo/pages/Battery.dart';
import 'package:drawer_ejemplo/pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App1',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyFirstPage(title: 'MOSQUETEROS APP'),
      routes: <String, WidgetBuilder>{
        Settings.ruta: (BuildContext context) => Settings(),
        Battery.ruta: (BuildContext context) => Battery()
      },
    );
  }
}

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyFirstPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    ListView lista = ListView(
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.indigo,
          ),
          child: Text(
            'Menu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        AboutListTile(
          child: Text("Información del APP"),
          applicationIcon: Icon(Icons.check_circle),
          applicationVersion: "v c.27",
          applicationName: "Mosqueteros Demo",
          icon: Icon(Icons.info),
        ),
        ListTile(
          leading: const Icon(Icons.add_comment),
          title: const Text("Mira y Comenta"),
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed("/Settings");
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Página Principal"),
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed("/");
            });
          },
        ),
        ListTile(
          leading: Icon(Icons.battery_charging_full),
          title: Text("Bateria"),
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed("/Battery");
            });
          },
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: lista,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "BIENVENIDO A",
              style: TextStyle(fontSize: 30),
            ),
            Container(
              child: Column(children: [
                Image.asset('assets/md1.png', fit: BoxFit.contain)
              ]),
            ),
            Text(
              '"Todos para uno y uno para todos"',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
