import 'package:CasperCar/home.dart';
import 'package:CasperCar/navbar.dart';
import 'package:CasperCar/scanqr.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: transacsionsuccess(),
    );
  }
}

class transacsionsuccess extends StatefulWidget {
  const transacsionsuccess({Key? key}) : super(key: key);

  @override
  State<transacsionsuccess> createState() => _transacsionsuccessState();
}

class _transacsionsuccessState extends State<transacsionsuccess> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Transaksi Berhasil",
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
                      builder: (context) => const ScanQR(),
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
                  "assets/images/berhasil.png",
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(top: 100),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Navbar();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      primary: Color.fromARGB(255, 99, 194, 94)),
                  child: const Text(
                    "Kembali Ke Beranda",
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
