import 'package:CasperCar/profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:CasperCar/widget/costum_button_profile.dart';
import 'package:CasperCar/widget/custom_button_edit.dart';

class mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);
  final TextEditingController namacontroller = TextEditingController();
  final TextEditingController noktpcontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController nohpcontroller = TextEditingController();
  final TextEditingController alamatcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('edit');

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 167, 242, 139),
          body: Column(
            children: [
              const SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_outlined),
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(width: 80),
                      Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/images/setiawan.jpeg',
                                  width: 100,
                                  height: 100,
                                  color:
                                      const Color.fromARGB(208, 129, 129, 129),
                                  colorBlendMode: BlendMode.modulate,
                                ),
                              ),
                              Positioned(
                                top: 30,
                                right: 25,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.camera_alt_outlined),
                                  color: Colors.white,
                                  iconSize: 30,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 95,
                            height: 28,
                            child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 243, 255, 80),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                child: const Text(
                                  'Edit',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontFamily: "Montserrat",
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: TextField(
                  controller: namacontroller,
                  cursorColor: Color.fromARGB(255, 20, 20, 20),
                  decoration: InputDecoration(
                    hintText: "Nama",
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
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 255, 255, 255),
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
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: TextField(
                  controller: emailcontroller,
                  cursorColor: Color.fromARGB(255, 20, 20, 20),
                  decoration: InputDecoration(
                    hintText: "E-Mail",
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
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: TextField(
                  controller: nohpcontroller,
                  cursorColor: Color.fromARGB(255, 20, 20, 20),
                  decoration: InputDecoration(
                    hintText: "No. HP",
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
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 255, 255, 255),
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
              GestureDetector(
                onTap: () async {
                  print(namacontroller.text);
                  print(noktpcontroller.text);
                  print(emailcontroller.text);
                  print(nohpcontroller.text);
                  print(alamatcontroller.text);
                  await users.add({
                    'nama': namacontroller.text,
                    'noktp': int.tryParse(noktpcontroller.text) ?? 0,
                    'email': emailcontroller.text,
                    'nohp': int.tryParse(nohpcontroller.text) ?? 0,
                    'alamat': alamatcontroller.text,
                  });

                  print(namacontroller.text = '');
                  print(noktpcontroller.text = '');
                  print(emailcontroller.text = '');
                  print(nohpcontroller.text = '');
                  print(alamatcontroller.text = '');

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Profile();
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
                    "Simpan",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
