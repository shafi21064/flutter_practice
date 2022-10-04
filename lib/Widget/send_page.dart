import 'package:flutter/material.dart';


class SendBar extends StatelessWidget {
  SendBar({Key? key}) : super(key: key);

  final messageControlar = TextEditingController();
  void sendButton(){
    print("Chat Message: "+messageControlar.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.add,
                color: Colors.white,
              )
          ),

          Expanded(
            child: TextField(
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 4,
              textCapitalization: TextCapitalization.sentences,
              controller: messageControlar,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Type message",
                hintStyle: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ),


          IconButton(onPressed: (){
            sendButton();
          },
              icon: Icon(Icons.send,
                color: Colors.white,
              )
          ),


        ],
      ),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
          )
      ),
    );
  }
}
