import 'package:flutter/material.dart';
import 'package:whatsappclone/models/userchatmodel.dart';
import 'package:whatsappclone/views/contactspage.dart';
import 'package:whatsappclone/widgets/chatcard.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<UserChatModel> chats = [
    UserChatModel(message: "Hello, How Are You?", name: "Kunal", time: "01:12"),
    UserChatModel(message: "Username is robin03", name: "Robin", time: "07:12"),
    UserChatModel(message: "Where are you?", name: "Kevin", time: "08:46"),
    UserChatModel(message: "Hello, How Are You?", name: "Kunal", time: "01:12"),
    UserChatModel(message: "Username is robin03", name: "Robin", time: "07:12"),
    UserChatModel(message: "Where are you?", name: "Kevin", time: "08:46"),
    UserChatModel(message: "Hello, How Are You?", name: "Kunal", time: "01:12"),
    UserChatModel(message: "Username is robin03", name: "Robin", time: "07:12"),
    UserChatModel(message: "Where are you?", name: "Kevin", time: "08:46"),
    UserChatModel(message: "Hello, How Are You?", name: "Kunal", time: "01:12"),
    UserChatModel(message: "Username is robin03", name: "Robin", time: "07:12"),
    UserChatModel(message: "Where are you?", name: "Kevin", time: "08:46"),
    UserChatModel(message: "Hello, How Are You?", name: "Kunal", time: "01:12"),
    UserChatModel(message: "Username is robin03", name: "Robin", time: "07:12"),
    UserChatModel(message: "Where are you?", name: "Kevin", time: "08:46"),
    UserChatModel(message: "Hello, How Are You?", name: "Kunal", time: "01:12"),
    UserChatModel(message: "Username is robin03", name: "Robin", time: "07:12"),
    UserChatModel(message: "Where are you?", name: "Kevin", time: "08:46"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ContactsPage()));
        },
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, element) =>
              ChatCard(userChatModel: chats[element])),
    );
  }
}
