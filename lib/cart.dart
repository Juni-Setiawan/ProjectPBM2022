import 'package:CasperCar/dataCustomer.dart';
import 'package:CasperCar/home.dart';
import 'package:CasperCar/isi_nota.dart';
import 'package:flutter/cupertino.dart';
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
                    builder: (context) => const dataCustomer(),
                  ));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.topRight,
                child: Icon(
                  CupertinoIcons.pencil,
                )),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(top: 200),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return IsiNota();
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
                    "CheckOut",
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
