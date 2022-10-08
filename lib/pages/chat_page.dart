import 'package:flutter/material.dart';
import 'package:prac_one/Widget/chat_bubble.dart';
import 'package:prac_one/Widget/send_page.dart';

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
                      ?const LeftBubble(message: "hi")
                      :const RightBubble(message: "shafi");
                  }

            ),
          ),
          SendBar(),
        ],
      ),

    );
  }
}
