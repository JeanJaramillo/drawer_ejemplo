import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static const String ruta = "/Login";
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocationApp(),
    );
  }
}

class LocationApp extends StatefulWidget {
  @override
  _LocationAppState createState() => _LocationAppState();
}

class _LocationAppState extends State<LocationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1571008887538-b36bb32f4571?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 36.0, horizontal: 24.0),
                    child: Column(children: []),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Bienvenido de Vuelta",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26.0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Ingresa tus datos",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Color(0xffe7edeb),
                                hintText: "Ingresa tu Email",
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.grey[700],
                                )),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Color(0xffe7edeb),
                                hintText: "Ingresa Tu contraseña",
                                prefixIcon: Icon(
                                  Icons.password_outlined,
                                  color: Colors.grey[700],
                                )),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "¿Olvidaste tu contraseña?",
                                  style: TextStyle(
                                    color: Colors.blue[800],
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: RaisedButton(
                                onPressed: () {},
                                color: Colors.blue[800],
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Text("Iniciar Sesion",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      )),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
