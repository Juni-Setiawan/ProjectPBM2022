import 'package:CasperCar/home.dart';
import 'package:CasperCar/navbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:CasperCar/chatPage.dart';
import 'package:CasperCar/login_screen.dart';
import 'package:CasperCar/profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Pendahuluan(),
    );
  }
}

class Pendahuluan extends StatelessWidget {
  const Pendahuluan({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 167, 242, 139),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              // color: Color.fromARGB(255, 167, 242, 139),
              padding: EdgeInsets.only(top: 20),
              child: Image.asset("assets/images/caspercar.png"),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(top: 200),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      primary: Color.fromARGB(255, 99, 194, 94)),
                  child: const Text(
                    "Mulai",
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
