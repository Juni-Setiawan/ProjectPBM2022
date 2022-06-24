import 'package:CasperCar/isi_nota.dart';
import 'package:CasperCar/scanqr.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Payment(),
    );
  }
}

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IsiNota(),
                    ));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            "Pembayaran",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          backgroundColor: Color(0xFF5CD870),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Row(mainAxisSize: MainAxisSize.max, children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Pilih Metode Pembayaran',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Container(
                        width: 300,
                        height: 250,
                        decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4),
                        ),
                        alignment: AlignmentDirectional(0, 0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0.9),
                              child: Container(
                                  width: 300,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFC4C4C4),
                                  ),
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Stack(children: <Widget>[
                                    Align(
                                      alignment: AlignmentDirectional(0, 0.9),
                                      child: Container(
                                          child: SizedBox(
                                        width: 100,
                                        height: 30,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const ScanQR(),
                                                  ));
                                            },
                                            child: Text("Next"),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color(0xFFD48989)),
                                              textStyle:
                                                  MaterialStateProperty.all(
                                                      TextStyle(
                                                color: Colors.black,
                                              )),
                                            )),
                                      )),
                                    )
                                  ])),
                            ),
                            Image.asset(
                              'assets/images/virtualaccount.png',
                              width: 300,
                              height: 200,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Container(
                        width: 300,
                        height: 220,
                        decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4),
                        ),
                        alignment: AlignmentDirectional(0, 0),
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: AlignmentDirectional(0, 0.9),
                              child: Container(
                                  child: SizedBox(
                                width: 100,
                                height: 30,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ScanQR(),
                                          ));
                                    },
                                    child: Text("Next"),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xFFD48989)),
                                      textStyle:
                                          MaterialStateProperty.all(TextStyle(
                                        color: Colors.black,
                                      )),
                                    )),
                              )),
                            ),
                            Image.asset(
                              'assets/images/wallet.png',
                              width: 300,
                              height: 200,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
