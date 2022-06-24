import 'package:CasperCar/cart.dart';
import 'package:CasperCar/payment.dart';
import 'package:CasperCar/scanqr.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(IsiNota());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class IsiNota extends StatelessWidget {
  IsiNota({Key? key}) : super(key: key);
  final TextEditingController namacontroller = TextEditingController();
  final TextEditingController alamatcontroller = TextEditingController();
  final TextEditingController jenismobilcontroller = TextEditingController();
  final TextEditingController nomobilcontroller = TextEditingController();
  final TextEditingController lamasewacontroller = TextEditingController();
  final TextEditingController biayacontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('isi nota');
    {}

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF24C735),
              foregroundColor: Colors.black,
              centerTitle: true,
              title: Text(
                "Isi Nota",
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const cart()),
                  );
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            body: ListView(children: [
              //text nama
              Container(
                width: 100,
                height: 20,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Nama",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              //textfield nama
              TextField(
                controller: namacontroller,
                decoration: InputDecoration(
                  fillColor: Color(0xFFC4C4C4),
                  filled: true,
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  hintText: "Nama",
                ),
              ),

              //text alamat
              Container(
                width: 100,
                height: 20,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Alamat",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              //textfield alamat
              TextField(
                controller: alamatcontroller,
                keyboardType: TextInputType.multiline,
                minLines: 5,
                maxLines: null,
                decoration: InputDecoration(
                  fillColor: Color(0xFFC4C4C4),
                  filled: true,
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  hintText: "Alamat",
                ),
              ),

              //text jenis mobil
              Container(
                width: 100,
                height: 20,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Jenis mobil",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              //textfield jenis mobil
              TextField(
                controller: jenismobilcontroller,
                decoration: InputDecoration(
                  fillColor: Color(0xFFC4C4C4),
                  filled: true,
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  hintText: "jenis mobil",
                ),
              ),

              //text nomor mobil
              Container(
                width: 100,
                height: 20,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Nomor mobil",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              //textfield nomor mobil
              TextField(
                controller: nomobilcontroller,
                decoration: InputDecoration(
                  fillColor: Color(0xFFC4C4C4),
                  filled: true,
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  hintText: "Nomor mobil",
                ),
              ),

              //text Lama sewa
              Container(
                width: 100,
                height: 20,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Lama Sewa",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              //textfield Lama sewa
              TextField(
                controller: lamasewacontroller,
                decoration: InputDecoration(
                  fillColor: Color(0xFFC4C4C4),
                  filled: true,
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  hintText: "Lama sewa",
                ),
              ),
              Text("Hari"),

              //text biaya
              Container(
                width: 100,
                height: 20,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Biaya",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              //textfield biaya
              TextField(
                controller: biayacontroller,
                decoration: InputDecoration(
                  fillColor: Color(0xFFC4C4C4),
                  filled: true,
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  hintText: "Biaya",
                ),
              ),

              Padding(
                  padding: EdgeInsets.only(
                      top: 40, bottom: 30, left: 100, right: 100),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF60F077),
                      onPrimary: Colors.black,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                    onPressed: () async {
                      print(namacontroller.text);
                      print(alamatcontroller.text);
                      print(jenismobilcontroller.text);
                      print(nomobilcontroller.text);
                      print(lamasewacontroller.text);
                      print(biayacontroller.text);
                      await users.add({
                        'nama': namacontroller.text,
                        'alamat': alamatcontroller.text,
                        'jenismobil': jenismobilcontroller.text,
                        'nomobil': int.tryParse(nomobilcontroller.text) ?? 0,
                        'lamasewa': int.tryParse(lamasewacontroller.text) ?? 0,
                        'biaya': int.tryParse(biayacontroller.text) ?? 0,
                      });

                      print(namacontroller.text = '');
                      print(alamatcontroller.text = '');
                      print(jenismobilcontroller.text);
                      print(nomobilcontroller.text);
                      print(lamasewacontroller.text);
                      print(biayacontroller.text);

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PaymentPage();
                      }));
                    },
                    child: Text('Selanjutnya'),
                  ))
            ])));
  }
}
