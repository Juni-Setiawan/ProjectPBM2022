import 'package:CasperCar/home.dart';
import 'package:flutter/material.dart';
import 'package:CasperCar/navbar.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Keranjang",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 97, 203, 115),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
    ));
  }
}
