import 'package:CasperCar/dataCustomer.dart';
import 'package:CasperCar/home.dart';
import 'package:CasperCar/isi_nota.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:CasperCar/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {

  var mobil1 = false;
  var mobil2 = false;
  var mobil3 = false;
  var mobil4 = false;

  List<String> mobil = <String>[];
  int total = 0;

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
          body: Column(
            children: [
              Container(
                child: Align(
                  child: IconButton(
                      onPressed: (){},
                      icon: Icon(
                        CupertinoIcons.pencil,
                      )
                  ),
                  alignment: Alignment.centerRight,
                ),
              ),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: ListView(
                        children: [
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                mobil1 = !mobil1;
                              });

                              if(mobil1 == true){
                                setState(() {
                                  mobil.add("mobil1");
                                  total += 100000;
                                });
                              }else{
                                setState(() {
                                  mobil.removeWhere((element) => element == "mobil1");
                                  total -= 100000;
                                });
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.2309,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Color(0xFFC4C4C4),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "casperCar",
                                    style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Toyota Avanza 1.3 E MT",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                          Text(
                                            "- 7 Kursi",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                          Text(
                                            "- Mesin 1329 CC",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/toyota.png'),
                                                fit: BoxFit.cover
                                            )
                                        ),
                                        width: MediaQuery.of(context).size.height * 0.2,
                                        height: MediaQuery.of(context).size.height * 0.08,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    thickness: 1,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Harga",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                          Text(
                                            "100.000 / 1 Hari",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                        ],
                                      ),
                                      mobil1 == true
                                        ? Container(
                                            width: MediaQuery.of(context).size.height * 0.03,
                                            height: MediaQuery.of(context).size.height * 0.03,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFC4C4C4),
                                                border: Border.all(color: Colors.black)
                                            ),
                                            child: Icon(
                                              Icons.check
                                            ),
                                          )
                                        : Container(
                                            width: MediaQuery.of(context).size.height * 0.03,
                                            height: MediaQuery.of(context).size.height * 0.03,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFC4C4C4),
                                                border: Border.all(color: Colors.black)
                                            ),
                                          )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                mobil2 = !mobil2;
                              });

                              if(mobil2 == true){
                                setState(() {
                                  mobil.add("mobil2");
                                  total += 150000;
                                });
                              }else{
                                setState(() {
                                  mobil.removeWhere((element) => element == "mobil2");
                                  total -= 150000;
                                });
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.2309,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Color(0xFFC4C4C4),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "casperCar",
                                    style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Mercedes Benz CL Class",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                          Text(
                                            "- 4 Kursi",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                          Text(
                                            "- Mesin 4399 CC",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/mercedes.png'),
                                                fit: BoxFit.cover
                                            )
                                        ),
                                        width: MediaQuery.of(context).size.height * 0.2,
                                        height: MediaQuery.of(context).size.height * 0.08,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    thickness: 1,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Harga",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                          Text(
                                            "150.000 / 1 Hari",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                        ],
                                      ),
                                      mobil2 == true
                                          ? Container(
                                              width: MediaQuery.of(context).size.height * 0.03,
                                              height: MediaQuery.of(context).size.height * 0.03,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFC4C4C4),
                                                  border: Border.all(color: Colors.black)
                                              ),
                                              child: Icon(
                                                  Icons.check
                                              ),
                                            )
                                          : Container(
                                              width: MediaQuery.of(context).size.height * 0.03,
                                              height: MediaQuery.of(context).size.height * 0.03,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFC4C4C4),
                                                  border: Border.all(color: Colors.black)
                                              ),
                                            )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                mobil3 = !mobil3;
                              });

                              if(mobil3 == true){
                                setState(() {
                                  mobil.add("mobil3");
                                  total += 125000;
                                });
                              }else{
                                setState(() {
                                  mobil.removeWhere((element) => element == "mobil3");
                                  total -= 125000;
                                });
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.2309,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Color(0xFFC4C4C4),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "casperCar",
                                    style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Honda HR-V 1.5L E CVT",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                          Text(
                                            "- 4 Kursi",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                          Text(
                                            "- Mesin 3529 CC",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/honda.png'),
                                                fit: BoxFit.cover
                                            )
                                        ),
                                        width: MediaQuery.of(context).size.height * 0.2,
                                        height: MediaQuery.of(context).size.height * 0.08,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    thickness: 1,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Harga",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                          Text(
                                            "125.000 / 1 Hari",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                        ],
                                      ),
                                      mobil3 == true
                                          ? Container(
                                              width: MediaQuery.of(context).size.height * 0.03,
                                              height: MediaQuery.of(context).size.height * 0.03,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFC4C4C4),
                                                  border: Border.all(color: Colors.black)
                                              ),
                                              child: Icon(
                                                  Icons.check
                                              ),
                                            )
                                          : Container(
                                              width: MediaQuery.of(context).size.height * 0.03,
                                              height: MediaQuery.of(context).size.height * 0.03,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFC4C4C4),
                                                  border: Border.all(color: Colors.black)
                                              ),
                                            )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                mobil4 = !mobil4;
                              });

                              if(mobil4 == true){
                                setState(() {
                                  mobil.add("mobil4");
                                  total += 100000;
                                });
                              }else{
                                setState(() {
                                  mobil.removeWhere((element) => element == "mobil4");
                                  total -= 100000;
                                });
                              }
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.2309,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                  color: Color(0xFFC4C4C4),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.black)
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "casperCar",
                                    style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "BMW 320i",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                          Text(
                                            "- 7 Kursi",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                          Text(
                                            "- Mesin 2329 CC",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/bmw.png'),
                                                fit: BoxFit.cover
                                            )
                                        ),
                                        width: MediaQuery.of(context).size.height * 0.2,
                                        height: MediaQuery.of(context).size.height * 0.08,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    thickness: 1,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Harga",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                          Text(
                                            "100.000 / 1 Hari",
                                            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                                          ),
                                        ],
                                      ),
                                      mobil4 == true
                                          ? Container(
                                              width: MediaQuery.of(context).size.height * 0.03,
                                              height: MediaQuery.of(context).size.height * 0.03,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFC4C4C4),
                                                  border: Border.all(color: Colors.black)
                                              ),
                                              child: Icon(
                                                  Icons.check
                                              ),
                                            )
                                          : Container(
                                              width: MediaQuery.of(context).size.height * 0.03,
                                              height: MediaQuery.of(context).size.height * 0.03,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFC4C4C4),
                                                  border: Border.all(color: Colors.black)
                                              ),
                                            )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                  )
              ),
              mobil.length == 0
                ? SizedBox()
                : Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: Color(0xFFA3EF8F),
                    border: Border(
                      top: BorderSide(
                          color: Colors.black,
                          style: BorderStyle.solid
                      ), //BorderSide
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              mobil.clear();
                              total = 0;
                            });

                            if(mobil1){
                              setState(() {
                                mobil1 = !mobil1;
                              });
                            }

                            if(mobil2){
                              setState(() {
                                mobil2 = !mobil2;
                              });
                            }

                            if(mobil3){
                              setState(() {
                                mobil3 = !mobil3;
                              });
                            }

                            if(mobil4){
                              setState(() {
                                mobil4 = !mobil4;
                              });
                            }
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.height * 0.03,
                            height: MediaQuery.of(context).size.height * 0.03,
                            decoration: BoxDecoration(
                                color: Color(0xFFA3EF8F),
                                border: Border.all(color: Colors.black)
                            ),
                            child: Icon(
                                Icons.check
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Select ${mobil.length}",
                          style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000).withOpacity(0.5)),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                        ),
                        Text(
                          "${total}",
                          style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF000000)),
                        ),
                      ],
                    ),
                    ElevatedButton(
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
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)
                            ),
                            primary: Color(0xFFC4C4C4),
                            onPrimary: Color(0xFF000000)
                        ),
                        child: const Text(
                          "Checkout",
                        )
                    )
                  ],
                ),
              )
            ],
          ),
    ));
  }
}
