import 'package:flutter/material.dart';
import 'package:prac_one/Widget/chat_bubble.dart';
import 'package:prac_one/Widget/send_page.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello ...!",
          style: TextStyle(color: Colors.blue,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            print("pressed");
          },
              icon: Icon(Icons.logout,
                color: Colors.blue,)
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
