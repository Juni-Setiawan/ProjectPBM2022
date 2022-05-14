import 'package:flutter/material.dart';
import 'package:flutter_application_1/daftar_mobil.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartHomePage(),
    );
  }
}

class StartHomePage extends StatefulWidget {
  const StartHomePage({Key? key}) : super(key: key);

  @override
  State<StartHomePage> createState() => _StartHomePageState();
}

class _StartHomePageState extends State<StartHomePage> {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF5CD870),
          title: const Text(
            'Casper Car',
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Icon(
              Icons.chat,
              color: Colors.black,
              size: 24,
            ),
          ],
        ),
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(mainAxisSize: MainAxisSize.max, children: [
              Stack(children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: const BoxDecoration(
                      color: Color(0xFF5CD870),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      )),
                ),
                Container(
                  width: 80,
                  height: 80,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/setiawan.jpeg',
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(-0.3, -0.4),
                  child: Text(
                    'Hi, Setiawan',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF5CD870),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => daftarMobil(),
                          ));
                    },
                    child: Text(
                      'Lihat semua >',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ]),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Color(0xFF7A7A7A),
                          ),
                          child: Image.asset(
                            'assets/images/toyota.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        'Toyota Avanza\n1.3 E MT',
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Color(0xFF7A7A7A),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 2, 0, 0),
                            child: Image.asset(
                              'assets/images/honda.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'Honda HR-V 1.5L E CVT',
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Color(0xFF7A7A7A),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF7A7A7A),
                              )
                            ],
                          ),
                          child: Image.asset(
                            'assets/images/mercedes.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const Text(
                        'Mercedes Benz\nCL Class',
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Color(0xFF7A7A7A),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF7A7A7A),
                              )
                            ],
                          ),
                          child: Image.asset(
                            'assets/images/bmw.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const Text(
                        'BMW 320i',
                      ),
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
