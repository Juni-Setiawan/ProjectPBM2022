import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/costum_button_profile.dart';
import 'package:flutter_application_1/widget/custom_button_edit.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                          color: Colors.white,
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
              const SizedBox(height: 30),
              CostumButton2(
                  nama: 'Nama', ket: 'Setiawan', onPressed: () {}, width: 150),
              const SizedBox(height: 20),
              CostumButton2(
                  nama: 'No. KTP',
                  ket: '3525183294324738',
                  onPressed: () {},
                  width: 70),
              const SizedBox(height: 20),
              CostumButton2(
                  nama: 'E-Mail',
                  ket: 'Yudi012@gmail.com',
                  onPressed: () {},
                  width: 70),
              const SizedBox(height: 20),
              CostumButton2(
                  nama: 'No. HP',
                  ket: '+628310359321',
                  onPressed: () {},
                  width: 95),
              const SizedBox(height: 20),
              CostumButton2(
                  nama: 'Alamat',
                  ket: 'JL. Proklamasi Lumajang',
                  onPressed: () {},
                  width: 50),
              const SizedBox(height: 20),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.pin_drop,
                  color: Colors.black,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.history,
                  color: Colors.black,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                label: "",
              ),
            ],
          ),
        ));
  }
}
