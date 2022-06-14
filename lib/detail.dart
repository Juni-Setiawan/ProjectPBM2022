import 'package:CasperCar/model/mobil_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detail extends StatefulWidget {
  final int index;

  const Detail({Key? key, required this.index}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  late int indeks;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    indeks = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Daftar Mobil",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 97, 203, 115),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    if (indeks == 0) {
                      setState(() {
                        indeks = 3;
                      });
                    } else {
                      setState(() {
                        indeks -= 1;
                      });
                    }
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 40,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(mobilList[indeks].gambar),
                          fit: BoxFit.cover)),
                ),
                GestureDetector(
                  onTap: () {
                    if (indeks == 3) {
                      setState(() {
                        indeks = 0;
                      });
                    } else {
                      setState(() {
                        indeks += 1;
                      });
                    }
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 40,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${mobilList[indeks].nama}",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Color(0xFF000000)),
            ),
            Text(
              "${mobilList[indeks].plat}",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xFF000000).withOpacity(0.5)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFC4C4C4),
                  border: Border.all(color: Colors.black)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.205,
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Container(
                      child: TabBar(
                        indicatorColor: Colors.transparent,
                        indicator: BoxDecoration(color: Colors.black),
                        labelStyle: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF)),
                        unselectedLabelStyle: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF000000)),
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: 'Spesifikasi'),
                          Tab(text: 'Ketentuan Sewa')
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                                border: Border(
                              top: BorderSide(
                                  color: Colors.black,
                                  style: BorderStyle.solid), //BorderSide
                            )),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Container(
                                  padding: EdgeInsets.only(top: 4, left: 4),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Merek",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000)),
                                      ),
                                      Text(
                                        "Model",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000)),
                                      ),
                                      Text(
                                        "Varian",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000)),
                                      ),
                                      Text(
                                        "Jenis Bahan Bakar",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000)),
                                      ),
                                      Text(
                                        "Mesin",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000)),
                                      ),
                                      Text(
                                        "Jumlah Kursi",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000)),
                                      )
                                    ],
                                  ),
                                )),
                                Expanded(
                                    child: Container(
                                  padding: EdgeInsets.only(top: 4),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ": ${mobilList[indeks].merek}",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000)),
                                      ),
                                      Text(
                                        ": ${mobilList[indeks].model}",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000)),
                                      ),
                                      Text(
                                        ": ${mobilList[indeks].varian}",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000)),
                                      ),
                                      Text(
                                        ": ${mobilList[indeks].bahan}",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000)),
                                      ),
                                      Text(
                                        ": ${mobilList[indeks].mesin}",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000)),
                                      ),
                                      Text(
                                        ": ${mobilList[indeks].kursi}",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xFF000000)),
                                      )
                                    ],
                                  ),
                                )),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                                border: Border(
                              top: BorderSide(
                                  color: Colors.black,
                                  style: BorderStyle.solid), //BorderSide
                            )),
                            child: Center(
                              child: Text("Belum Tersedia"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "1 Hari : ${mobilList[indeks].harga}",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xFF000000)),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return IsiNota();
                    //     },
                    //   ),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      primary: Color(0xFF60F077),
                      onPrimary: Color(0xFF000000)),
                  child: const Text(
                    "Sewa",
                  )),
            )
          ],
        ),
      ),
    );
  }
}
