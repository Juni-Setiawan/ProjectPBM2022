import 'package:flutter/material.dart';
import 'chatMessageModel.dart';
import 'chatUsersModel.dart';
import 'chatDetailPage.dart';
import 'conversationList.dart';
import 'package:CasperCar/home.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Setiawan",
        messageText: "Baik Terimakasih",
        imageURL: "assets/images/setiawan.jpeg",
        time: "Now"),
    ChatUsers(
        name: "Zainul A.",
        messageText: "Insyaallah 2 harian kak",
        imageURL: 'assets/images/zainul.jpeg',
        time: "Yesterday"),
    ChatUsers(
        name: "Elsa Dwi",
        messageText: "Permisi kak, ada yang bisa saya bantu ....",
        imageURL: "assets/images/elsa.jpeg",
        time: "31 Mar"),
    ChatUsers(
        name: "Abdullah",
        messageText: "Baik, besok saya konfirmasi lagi yaa...",
        imageURL: "assets/images/abdullah.jpeg",
        time: "28 Mar"),
    ChatUsers(
        name: "Ziana", messageText: "Saya Besok kesana mas", time: "20 Mar"),
    ChatUsers(
        name: "Fadil Alkautsar",
        messageText: "Ada yang bisa saya bantu?.....",
        time: "15 Mar"),
    ChatUsers(
        name: "Layyinah",
        messageText:
            "Selamat Datang di CasperCar. Disini melayani rental mobil yang terpercata se Wilayah Lumajang.....",
        time: "13 Mar"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage();
                              },
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_back)),
                    Text(
                      "Chat",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          // Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: (Colors.white)),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Cari Kontak, penjual, dan pesan ......",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
