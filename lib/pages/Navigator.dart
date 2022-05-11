import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  static const String ruta = "/Navigator";
  const Nav({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App1',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyFirstPage(title: 'Dragon Ball Z'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/kaio.jpg'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MySecondPage(title: 'La mejor batalla')));
                },
                child: const Text("Adelante",
                    style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}

class MySecondPage extends StatelessWidget {
  const MySecondPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
                "https://c.tenor.com/yHidMVxXBXkAAAAC/vegeta-insecto.gif"),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MyThirdPage(title: 'El mejor equipo')));
                },
                child: const Text("Adelante",
                    style: TextStyle(color: Colors.white))),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child:
                    const Text("Atrás", style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}

class MyThirdPage extends StatelessWidget {
  const MyThirdPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/shengdorado.png'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child:
                    const Text("Atrás", style: TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
