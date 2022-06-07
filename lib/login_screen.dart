import 'dart:io';
import 'package:CasperCar/navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:CasperCar/cart.dart';
import 'package:CasperCar/daftar_mobil.dart';
import 'package:CasperCar/history.dart';
import 'package:CasperCar/home.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  TextEditingController ctrlEmail = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();
  late bool secure;

  @override
  void initState() {
    secure = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("LOGIN"),
          backgroundColor: Color.fromARGB(255, 97, 203, 115),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    (Color.fromARGB(255, 255, 255, 255)),
                    Color.fromARGB(255, 255, 255, 255)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/caspercar.png",
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 20),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 26, 25, 25)),
                    ),
                  )
                ],
              )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextField(
                controller: ctrlEmail,
                cursorColor: Colors.lightGreen,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.account_circle,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  hintText: "Email atau Username",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffEEEEEE),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextField(
                controller: ctrlPassword,
                obscureText: secure,
                cursorColor: Colors.lightGreen,
                decoration: InputDecoration(
                    focusColor: Colors.lightGreen,
                    icon: Icon(
                      Icons.lock_outline,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    hintText: "Password",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                          secure ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          secure = !secure;
                        });
                      },
                    )),
              ),
            ),
            GestureDetector(
              onTap: () {
                FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: ctrlEmail.text, password: ctrlPassword.text)
                    .then((value) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Navbar()));
                }).onError((error, stackTrace) {
                  print("Error ${error.toString()}");
                  // Write Tap Code Here.
                });
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    (Color.fromARGB(255, 97, 203, 115)),
                    Color.fromARGB(255, 97, 203, 115)
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: Text(
                  "LOGIN",
                  style: TextStyle(color: Color.fromARGB(255, 15, 15, 15)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum Punya Akun?  "),
                  GestureDetector(
                      child: Text(
                        "Sign Up",
                        style:
                            TextStyle(color: Color.fromARGB(255, 99, 194, 94)),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      })
                ],
              ),
            )
          ],
        )));
  }
}
