import 'package:CasperCar/cart.dart';
import 'package:CasperCar/daftar_mobil.dart';
import 'package:CasperCar/transaction_failed.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class dataCustomer extends StatelessWidget {
  dataCustomer({Key? key}) : super(key: key);
  final TextEditingController namacustomercontroller = TextEditingController();
  final TextEditingController alamatcontroller = TextEditingController();
  final TextEditingController noktpcontroller = TextEditingController();
  final TextEditingController merkmobilcontroller = TextEditingController();
  final TextEditingController nomobilcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('data customer');
    {}

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Data Customer"),
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
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
            body: SingleChildScrollView(
                child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Color.fromARGB(255, 202, 202, 202),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: TextField(
                    controller: namacustomercontroller,
                    cursorColor: Color.fromARGB(255, 20, 20, 20),
                    decoration: InputDecoration(
                      hintText: "Nama Customer",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Color.fromARGB(255, 202, 202, 202),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: TextField(
                    controller: alamatcontroller,
                    cursorColor: Color.fromARGB(255, 20, 20, 20),
                    decoration: InputDecoration(
                      hintText: "Alamat",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Color.fromARGB(255, 202, 202, 202),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: TextField(
                    controller: noktpcontroller,
                    cursorColor: Color.fromARGB(255, 20, 20, 20),
                    decoration: InputDecoration(
                      hintText: "No. KTP",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Color.fromARGB(255, 202, 202, 202),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: TextField(
                    controller: merkmobilcontroller,
                    cursorColor: Color.fromARGB(255, 20, 20, 20),
                    decoration: InputDecoration(
                      hintText: "Merk Mobil",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Color.fromARGB(255, 202, 202, 202),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: TextField(
                    controller: nomobilcontroller,
                    cursorColor: Color.fromARGB(255, 20, 20, 20),
                    decoration: InputDecoration(
                      hintText: "No. Mobil",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    print(namacustomercontroller.text);
                    print(alamatcontroller.text);
                    print(noktpcontroller.text);
                    print(merkmobilcontroller.text);
                    print(nomobilcontroller.text);
                    await users.add({
                      'nama customer': namacustomercontroller.text,
                      'alamat': alamatcontroller.text,
                      'noktp': int.tryParse(noktpcontroller.text) ?? 0,
                      'merkmobil': merkmobilcontroller.text,
                      'nomobil': int.tryParse(nomobilcontroller.text) ?? 0,
                    });

                    print(namacustomercontroller.text = '');
                    print(alamatcontroller.text = '');
                    print(noktpcontroller.text);
                    print(merkmobilcontroller.text);
                    print(nomobilcontroller.text);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return cart();
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
                      gradient: LinearGradient(
                          colors: [
                            (Color.fromARGB(255, 97, 203, 115)),
                            Color.fromARGB(255, 97, 203, 115)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
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
                      "Next",
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ],
            ))));
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
