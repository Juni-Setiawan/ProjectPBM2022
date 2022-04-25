import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const HistoryPage());
}

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartHistory(),
    );
  }
}

class StartHistory extends StatefulWidget {
  const StartHistory({Key? key}) : super(key: key);

  @override
  State<StartHistory> createState() => _StartHistoryState();
}

class _StartHistoryState extends State<StartHistory> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text(
                  "History",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 30),
                ),
              ),
              backgroundColor: Color.fromARGB(255, 97, 203, 115),
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondHistoryPage()));
                    },
                    icon: Icon(
                      Icons.arrow_right,
                      color: Colors.black,
                    ))
              ],
            ),
            body: ListView(children: [
              Column(
                children: <Widget>[
                  //1
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Color(0xFFC4C4C4),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      leading: Image(
                        image: AssetImage(
                          'assets/images/toyota.png',
                        ),
                      ),
                      title: Text(
                        "Zainul A.",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Toyota Avanza 1.3 E MT\n 1 hari\nRp. 100.000",
                        textAlign: TextAlign.right,
                        style: const TextStyle(fontSize: 18),
                      ),
                      trailing: ElevatedButton(
                          onPressed: () {},
                          child: Text("Lunas"),
                          style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFF60F077)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                          )),
                    ),
                  ),

                  //2
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Color(0xFFC4C4C4),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      leading: Image(
                        image: AssetImage(
                          'assets/images/mercedes.png',
                        ),
                      ),
                      title: Text(
                        "Setiawan",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Mercedes Benz CL Class\n 3 hari\nRp. 150.000",
                        textAlign: TextAlign.right,
                        style: const TextStyle(fontSize: 18),
                      ),
                      trailing: ElevatedButton(
                          onPressed: () {},
                          child: Text("Lunas"),
                          style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFF60F077)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                          )),
                    ),
                  ),

                  //3
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Color(0xFFC4C4C4),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      leading: Image(
                        image: AssetImage(
                          'assets/images/honda.png',
                        ),
                      ),
                      title: Text(
                        "Abdullah",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Honda Jazz RS CVT\n 4 hari\nRp. 440.000",
                        textAlign: TextAlign.right,
                        style: const TextStyle(fontSize: 18),
                      ),
                      trailing: ElevatedButton(
                          onPressed: () {},
                          child: Text("Lunas"),
                          style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFF60F077)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                          )),
                    ),
                  ),
                ],
              ),
            ]),
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
                    color: Colors.blue,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  label: "",
                ),
              ],
            )));
  }
}

class SecondHistoryPage extends StatefulWidget {
  const SecondHistoryPage({Key? key}) : super(key: key);

  @override
  State<SecondHistoryPage> createState() => _SecondHistoryPageState();
}

class _SecondHistoryPageState extends State<SecondHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text(
                  "History",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 30),
                ),
              ),
              backgroundColor: Color.fromARGB(255, 97, 203, 115),
              leading: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HistoryPage()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.blue,
                  )),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_right,
                      color: Colors.black,
                    ))
              ],
            ),
            body: ListView(children: [
              Column(
                children: <Widget>[
                  //1
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Color(0xFFC4C4C4),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      leading: Image(
                        image: AssetImage(
                          'assets/toyota.png',
                        ),
                      ),
                      title: Text(
                        "Toyota Avanza 1.3 E MT",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        "P 3821 AA",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Text(
                        "1 hari\nRp 100.000",
                        textAlign: TextAlign.right,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),

                  //2
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Color(0xFFC4C4C4),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      leading: Image(
                        image: AssetImage(
                          'assets/mercedes.png',
                        ),
                      ),
                      title: Text(
                        "Mercedes Benz CL Class 500",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        "N 9742 FD",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Text(
                        "3 hari\nRp 450.000",
                        textAlign: TextAlign.right,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),

                  //3
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Color(0xFFC4C4C4),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      leading: Image(
                        image: AssetImage(
                          'assets/mercedes.png',
                        ),
                      ),
                      title: Text(
                        "Honda Jazz RS CVT",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        "W 5433 YY",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Text(
                        "3 hari\nRp 440.000",
                        textAlign: TextAlign.right,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
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
                    color: Colors.blue,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  label: "",
                ),
              ],
            )));
  }
}
