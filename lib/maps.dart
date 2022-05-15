import 'package:CasperCar/home.dart';
import 'package:flutter/material.dart';

class maps extends StatefulWidget {
  const maps({Key? key}) : super(key: key);

  @override
  State<maps> createState() => _mapsState();
}

class _mapsState extends State<maps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Rental Mobil Terdekat",
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
