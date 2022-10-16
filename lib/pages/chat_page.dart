import 'package:flutter/material.dart';
import 'package:prac_one/Widget/chat_bubble.dart';
import 'package:prac_one/Widget/send_page.dart';
import 'package:prac_one/models/chat_messag.dart';

class ChatPage extends StatelessWidget {

  final userName;
    ChatPage({Key? key, required this.userName}) : super(key: key);


   List<ChatMessage> _message = [
     ChatMessage(
         text: "1st text",
         id: "1",
         timeStamp: 1234567,
         author: Author(userName: "shafi")),

     ChatMessage(
         text: "2nd text",
         id: "1",
         timeStamp: 1234567,
         imageUrl: 'assets/download.jpg',
         author: Author(userName: "shafi")),

     ChatMessage(
         text: "3rd text",
         id: "1",
         timeStamp: 1234567,
         imageUrl: 'assets/download.jpg',
         author: Author(userName: "jane")),

     ChatMessage(
         text: "1st text",
         id: "1",
         timeStamp: 1234567,
         author: Author(userName: "shafi")),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello $userName!",
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context,'/');
            print("Logged Out");
          },
              icon: const Icon(Icons.logout,
                )
          )
        ],
      ),


      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _message.length,
                itemBuilder: (context, index){

                  return _message[index].author.userName == 'shafi'
                      ?RightBubble(
                    entitity: _message[index]
                  )
                      :LeftBubble(
                      entitity: _message[index]
                  );
                  }

            ),
          ),
          SendBar(),
        ],
      ),

    );
  }
}
