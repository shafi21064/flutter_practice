import 'package:flutter/material.dart';
import 'package:prac_one/Widget/chat_bubble.dart';
import 'package:prac_one/Widget/send_page.dart';
import 'package:prac_one/models/chat_messag.dart';

class ChatPage extends StatelessWidget {

   const ChatPage({Key? key, required this.userName}) : super(key: key);

  final String userName;

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
              itemCount: 10,
                itemBuilder: (context, index){

                  return index % 2 == 0
                      ?LeftBubble(
                    entitity: ChatMessage(
                      id: "1234",
                      text: "hi",
                      timeStamp: DateTime.now().millisecondsSinceEpoch,
                      author: Author(userName: "Shafi")
                    ))
                      :RightBubble(
                      entitity: ChatMessage(
                          id: "1234",
                          text: "hi",
                          timeStamp: DateTime.now().millisecondsSinceEpoch,
                          author: Author(userName: "Shafi")
                  ));
                  }

            ),
          ),
          SendBar(),
        ],
      ),

    );
  }
}
