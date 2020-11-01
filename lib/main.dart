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
        textTheme: GoogleFonts.montserratTextTheme().copyWith(
          bodyText2: TextStyle(
              fontSize: 14, color: Colors.white, fontWeight: FontWeight.w400),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xffb4f060),
        ),
      ),
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  TextEditingController _emailController;
  TextEditingController _passController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
          SingleChildScrollView(
            child: Container(
              width: width,
              height: height,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Text(
                    "Sign in",
                    style: TextStyle(fontSize: 32, shadows: [
                      Shadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          offset: Offset(0, 0))
                    ]),
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              enabled: true,
                              labelText: 'Your email',
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 22),
                              hintText: 'email@address.com',
                              hintStyle: TextStyle(
                                  color: Colors.white60, fontSize: 12)),
                        ),
                        TextFormField(
                          controller: _passController,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              enabled: true,
                              labelText: 'Password',
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 22),
                              hintText: '. . . . . . . . . . . .',
                              hintStyle: TextStyle(
                                  color: Colors.white60, fontSize: 22)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width * 0.4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      child: RaisedButton(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "LOGIN    ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black38,
                                          blurRadius: 3,
                                          offset: Offset(0, 0))
                                    ]),
                              ),
                              Image.asset(
                                "assets/arrowicon.png",
                                color: Color(0xff049525),
                                height: 22,
                                width: 22,
                              )
                            ],
                          )),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {}, child: Text("Forgot Password?")),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Don't have an account?",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Create one.",
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
