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
            Image.network(
                "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3eb70ccc-e7ad-4e1a-87fa-f97df9ef1c52/d8rx6aw-7aed38dd-576b-47cc-b0b0-a24803f1f2fe.png/v1/fill/w_1024,h_576,strp/dragon_ball_z__dbz__nuevo_logo_by_saodvd_d8rx6aw-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTc2IiwicGF0aCI6IlwvZlwvM2ViNzBjY2MtZTdhZC00ZTFhLTg3ZmEtZjk3ZGY5ZWYxYzUyXC9kOHJ4NmF3LTdhZWQzOGRkLTU3NmItNDdjYy1iMGIwLWEyNDgwM2YxZjJmZS5wbmciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.oYKaNgd3mlbQkcOGM5ZCJnb4RG0bBOxr3j5rSPCpSPg"),
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
                "https://peru21.pe/resizer/9UAuA17MjUmyLhrf-LN0Cd7y9Jw=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/RYKYUOIPM5E57DGPZISRDQJ2O4.png"),
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
            Image.network(
                "https://depor.com/resizer/ki9PdtixqgHHtOK0W_0_n09NiSE=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/WWVWAITCRNFPXIA2NELKB6GI6E.jpg"),
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
