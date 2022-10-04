import 'package:flutter/material.dart';
import 'package:prac_one/Widget/chat_bubble.dart';
import 'package:prac_one/Widget/send_page.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);
  
  // void logOutButton(){
  //   Navigator.pop(context);
  //   print("Logged Out");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello ...!",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
            print("Logged Out");
          },
              icon: Icon(Icons.logout,
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
                      ?LeftBubble(message: "hi")
                      :RightBubble(message: "shafi");
                  }

            ),
          ),
          SendBar(),
        ],
      ),

    );
  }
}
