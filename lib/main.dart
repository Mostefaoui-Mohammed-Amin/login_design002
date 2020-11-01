import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.montserratTextTheme()),
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/bg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sign in"),
              Form(
                child: Column(
                  children: [
                    TextFormField(),
                    TextFormField(
                      obscureText: true,
                    )
                  ],
                ),
              ),
              RaisedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text("LOGIN  "),
                      Image.asset(
                        "assets/arrowicon.png",
                        color: Colors.green,
                        height: 22,
                        width: 22,
                      )
                    ],
                  )),
              FlatButton(
                child: Text("Forgot Password?"),
                onPressed: () {},
              ),
              Text("Don't have an account?"),
              FlatButton(
                child: Text("Create one."),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
