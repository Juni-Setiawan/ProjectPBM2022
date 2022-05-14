import 'package:CasperCar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:CasperCar/history.dart';
import 'package:CasperCar/home.dart';
import 'package:CasperCar/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpScreen> {
  var SignUpScreen1;

  @override
  Widget build(BuildContext context) => initWidget();

  Widget initWidget() {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("SIGN UP"),
          backgroundColor: Color.fromARGB(255, 97, 203, 115),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: 75,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Selamat Datang di CasperCar!!!",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  )
                ],
              )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
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
                cursorColor: Color.fromARGB(255, 20, 20, 20),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.account_circle,
                    color: Color.fromARGB(255, 20, 20, 19),
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
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextField(
                cursorColor: Colors.lightGreen,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock_outline,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  hintText: "Password",
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
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextField(
                cursorColor: Colors.lightGreen,
                decoration: InputDecoration(
                  focusColor: Colors.lightGreen,
                  icon: Icon(
                    Icons.lock_outline,
                    color: Color.fromARGB(255, 2, 2, 2),
                  ),
                  hintText: "Confirm Password",
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
                cursorColor: Colors.lightGreen,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.account_box,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  focusColor: Colors.lightGreen,
                  hintText: "Nama Lengkap",
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
                cursorColor: Colors.lightGreen,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.calendar_month_rounded,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  focusColor: Colors.lightGreen,
                  hintText: "Tanggal Lahir (DD/MM/YYYY)",
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
                cursorColor: Colors.lightGreen,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.phone_android,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  focusColor: Colors.lightGreen,
                  hintText: "No. Handphone",
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
                cursorColor: Colors.lightGreen,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.location_history,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  focusColor: Colors.lightGreen,
                  hintText: "Alamat Lengkap",
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
                cursorColor: Colors.lightGreen,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.credit_card_outlined,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  focusColor: Colors.lightGreen,
                  hintText: "No. KTP",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    // ignore: dead_code
                    MaterialPageRoute(builder: (BuildContext ctx) {
                  return Navbar();
                }));
                // Write Click Listener Code Here.
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    (Color.fromARGB(255, 97, 203, 115)),
                    Color.fromARGB(255, 97, 203, 115)
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[300],
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: Text(
                  "REGISTER",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2, bottom: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sudah Punya Akun?  "),
                  GestureDetector(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.lightGreen),
                    ),
                    onTap: () {
                      // Write Tap Code Here.
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                  )
                ],
              ),
            )
          ],
        )));
  }
}
