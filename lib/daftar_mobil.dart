import 'package:CasperCar/dataCustomer.dart';
import 'package:CasperCar/isi_nota.dart';
import 'package:flutter/material.dart';
import 'package:CasperCar/home.dart';

void main(List<String> args) {
  runApp(const daftarMobil());
}

class daftarMobil extends StatefulWidget {
  const daftarMobil({Key? key}) : super(key: key);

  @override
  State<daftarMobil> createState() => _daftarMobilState();
}

class _daftarMobilState extends State<daftarMobil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartdaftarMobil(),
    );
  }
}

class StartdaftarMobil extends StatefulWidget {
  const StartdaftarMobil({Key? key}) : super(key: key);

  @override
  State<StartdaftarMobil> createState() => __StartdaftarMobilState();
}

class __StartdaftarMobilState extends State<StartdaftarMobil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Daftar Mobil",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
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
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage(
                  "assets/images/toyota.png",
                ),
              ),
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
                          return dataCustomer();
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
                    "Sewa",
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
