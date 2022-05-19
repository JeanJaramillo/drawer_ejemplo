import 'package:flutter/material.dart';

import 'package:drawer_ejemplo/pages/tappages/plato.dart';
import 'package:drawer_ejemplo/pages/tappages/chefs.dart';
import 'package:drawer_ejemplo/pages/tappages/eventos.dart';

class Tapbar extends StatelessWidget {
  static const String ruta = "/Tapbar";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertDialog',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Mosqueteros Chefs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controlador;

  @override
  void initState() {
    super.initState();
    controlador = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(icon: Icon(Icons.person)),
            Tab(icon: Icon(Icons.map)),
            Tab(icon: Icon(Icons.calendar_today)),
          ],
          controller: controlador,
        ),
      ),
      body: Center(
        child: TabBarView(
          children: [Plato(), Chefs(), Eventos()],
          controller: controlador,
        ),
      ),
    );
  }
}
