import 'package:flutter/material.dart';

class Chefs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab2"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
                title: const Text(
                    'Hemos preparado una reunión \n de 10 personas en mi piso y calculando la distancia \n de seguridad: 2 tienen que caerse por el balcón, \n uno cenará en el ascensor y otro tendrá que irse \n a casa de la vecina.',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15)),
                icon: const Icon(
                  Icons.face_outlined,
                  size: 50,
                  color: Colors.cyan,
                )),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 3.0),
      child: Card(
        margin: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[title, icon],
        ),
      ),
    );
  }
}