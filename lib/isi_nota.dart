import 'package:CasperCar/cart.dart';
import 'package:CasperCar/scanqr.dart';
import 'package:flutter/material.dart';

void main() => runApp(const IsiNotaPage());

class IsiNotaPage extends StatelessWidget {
  const IsiNotaPage({Key? key}) : super(key: key);

  static const String _title = 'Isi Nota';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: IsiNota(),
    );
  }
}

class IsiNota extends StatefulWidget {
  const IsiNota({Key? key}) : super(key: key);

  @override
  State<IsiNota> createState() => _IsiNotaState();
}

class _IsiNotaState extends State<IsiNota> {
  String dropdownValue = 'Select option';

  @override
  Widget build(BuildContext context) {
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
                  Navigator.pop(context);
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

              //text Jenis mobil
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(
                  color: Colors.black,
                ),
                underline: Container(
                  height: 2,
                  color: Color(0xFFC4C4C4),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'Select option',
                  'Toyota Avanza 1.3 E MT',
                  'Mercedes Benz CL Class',
                  'Honda Jazz RS CVT'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
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
                  "Jenis mobil",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              //textfield Lama sewa
              TextField(
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScanQR(),
                          ));
                    },
                    child: Text('Selanjutnya'),
                  ))
            ])));
  }
}
