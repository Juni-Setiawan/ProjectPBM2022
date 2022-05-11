import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/edit_profil.dart';
import 'package:flutter_application_1/widget/costum_button_profile.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:cool_alert/cool_alert.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return const NewWidget();
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 167, 242, 139),
            body: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/images/setiawan.jpeg',
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Setiawan",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 243, 255, 80),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EditProfile()));
                            },
                            child: const Text(
                              "Edit Profile",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: "Montserrat",
                              ),
                            ))
                      ],
                    )
                  ]),
                  const SizedBox(height: 40),
                  CustomButton3(
                    icon: Icons.account_box_outlined,
                    text: 'Setiawan',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  CustomButton3(
                    icon: Icons.card_membership,
                    text: '3525183294324738',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  CustomButton3(
                    icon: Icons.email,
                    text: 'yudi012@gmail.com',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  CustomButton3(
                    icon: Icons.phone_android_outlined,
                    text: '+628310359321',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  CustomButton3(
                    icon: Icons.location_city_outlined,
                    text: 'Jl. Proklamasi Lumajang',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  CustomButton3(
                      icon: Icons.logout,
                      text: 'Logout',
                      onPressed: () {
                        CoolAlert.show(
                          context: context,
                          type: CoolAlertType.confirm,
                          backgroundColor:
                              const Color.fromARGB(255, 175, 221, 243),
                          title: 'apakah anda yakin ingin logout?',
                          onConfirmBtnTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          onCancelBtnTap: () {
                            Navigator.of(context, rootNavigator: true).pop();
                          },
                          cancelBtnTextStyle: const TextStyle(
                              color: Color.fromARGB(255, 221, 29, 29)),
                          confirmBtnColor:
                              const Color.fromARGB(255, 136, 225, 139),
                          confirmBtnTextStyle: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0)),
                        );
                      })
                ],
              ),
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
            )));
  }
}

void showAlert() {}
