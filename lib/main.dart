import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(new MyApp());
  debugPaintSizeEnabled = false;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // Configuramos el blanco como color por defecto en diferentes sitios
      theme: new ThemeData(
        // Por ej. al editar texto en el TextField
        primaryColor: Colors.white,
        // Defecto para el texto
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
            ),
        // Defecto para el TextField
        hintColor: Colors.white,
      ),
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.lightBlue[300],
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: new Column(
              children: <Widget>[
                SizedBox(height: 80.0),
                SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: new Placeholder(),
                ),
                SizedBox(height: 45.0),
                Text(
                  "Sign up for a free FFFFFF account",
                  style: Theme.of(context).textTheme.title,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Your email",
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Create a Password",
                  ),
                ),
                SizedBox(height: 25.0),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.white,
                    textColor: Colors.lightBlue[300],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Create Account",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    onPressed:
                        () {}, // Necesario para que no aparezca deshabilitado
                  ),
                ),
                SizedBox(height: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Already have an account?",
                      style: Theme.of(context).textTheme.subhead,
                    ),
                    SizedBox(width: 10.0),
                    GestureDetector(
                      onTap: () {
                        print("link clicked!");
                      },
                      child: Text(
                        "Sign in!",
                        style: Theme.of(context)
                            .textTheme
                            .subhead
                            .copyWith(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
