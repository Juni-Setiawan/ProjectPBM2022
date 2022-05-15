import 'package:CasperCar/daftar_mobil.dart';
import 'package:CasperCar/transaction_failed.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const dataCustomer());
}

class dataCustomer extends StatefulWidget {
  const dataCustomer({Key? key}) : super(key: key);

  @override
  State<dataCustomer> createState() => _dataCustomerState();
}

class _dataCustomerState extends State<dataCustomer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartdataCustomer(),
    );
  }
}

class StartdataCustomer extends StatefulWidget {
  const StartdataCustomer({Key? key}) : super(key: key);

  @override
  State<StartdataCustomer> createState() => _StartdataCustomerState();
}

class _StartdataCustomerState extends State<StartdataCustomer> {
  int _counterValue = 0;
  bool isChecked = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Data Customer",
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
                    builder: (context) => const daftarMobil(),
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
