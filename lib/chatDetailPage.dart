import 'package:flutter/material.dart';
import 'chatMessageModel.dart';
import 'chatUsersModel.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> messages = [
    ChatMessage(
      messageContent:
          "Selamat Datang di CasperCar. Layanan Jasa Rental Mobil yang terpercaya serta aman di sekitar Kabupaten Lumajang. Ada yang bisa kami bantu kak?",
      messageType: "receiver",
    ),
    ChatMessage(
        messageContent:
            "Saya ingin menyewa mobil selama kurang lebih 3 harian kak. Apakah mobil nya masih ada kak?",
        messageType: "sender"),
    ChatMessage(
      messageContent:
          "Masih ada mas. Disini kami masih tersedia mobil merk Honda, Mercedes, serta Toyota. Mungkin mas nya ingin menyewa mobil yang mana?",
      messageType: "receiver",
    ),
    ChatMessage(
        messageContent:
            "Yang merk Mercedes mas. Insyaallah akan saya ambil nanti siang mas, Mohon dipersiapkan yaa...",
        messageType: "sender"),
    ChatMessage(
      messageContent: "Baik akan kami persiapkan dulu yaa",
      messageType: "receiver",
    ),
    ChatMessage(messageContent: "Baik Terimakasih", messageType: "sender"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  radius: 20.0,
                  child: ClipRRect(
                    child: Image.asset('assets/images/setiawan.jpeg'),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Setiawan",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.settings,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 5, bottom: 5),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: (messages[index].messageType == "receiver"
                            ? Color.fromARGB(255, 55, 247, 113)
                            : Color.fromARGB(255, 216, 242, 66)),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(
                        messages[index].messageContent,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ));
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                    elevation: 0,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.mic,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                    elevation: 0,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
