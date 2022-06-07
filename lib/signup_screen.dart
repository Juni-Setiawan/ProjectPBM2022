import 'package:CasperCar/navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:CasperCar/history.dart';
import 'package:CasperCar/home.dart';
import 'package:CasperCar/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpScreen> {
  TextEditingController ctrlEmail = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();
  TextEditingController ctrlConfirmPassword = TextEditingController();
  TextEditingController ctrlUsername = TextEditingController();
  TextEditingController ctrlNamaLengkap = TextEditingController();
  TextEditingController ctrlTanggalLahir = TextEditingController();
  TextEditingController ctrlNoHP = TextEditingController();
  TextEditingController ctrlAlamatLengkap = TextEditingController();
  TextEditingController ctrlNoKTP = TextEditingController();
  var SignUpScreen1;

  late bool secure;
  late bool secureC;

  @override
  void initState() {
    secure = false;
    secureC = false;
    super.initState();
  }

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
                controller: ctrlEmail,
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
                controller: ctrlPassword,
                obscureText: secure,
                cursorColor: Colors.lightGreen,
                decoration: InputDecoration(
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
                controller: ctrlConfirmPassword,
                obscureText: secureC,
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
                    suffixIcon: IconButton(
                      icon: Icon(
                          secureC ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          secureC = !secureC;
                        });
                      },
                    )),
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
                controller: ctrlNamaLengkap,
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
                controller: ctrlTanggalLahir,
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
                controller: ctrlNoHP,
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
                controller: ctrlAlamatLengkap,
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
                controller: ctrlNoKTP,
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
                FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
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
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
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
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: ctrlEmail.text,
                                password: ctrlPassword.text)
                            .then((value) {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        }).onError((error, stackTrace) {
                          print("Error ${error.toString()}");
                          // Write Tap Code Here.
                        });
                      })
                ],
              ),
            )
          ],
        )));
  }
}
