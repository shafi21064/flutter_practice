import 'package:flutter/material.dart';
import 'package:prac_one/models/chat_messag.dart';

class LeftBubble extends StatelessWidget {

  final ChatMessage entitity;


  const LeftBubble({Key? key, required this.entitity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(12),
        child:
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Text(
          "${entitity.text}",
          style: TextStyle(fontSize: 24,
              color: Colors.white
          ),
        ),
            if(entitity.imageUrl != null)
              Image.network(
                '${entitity.imageUrl}',
                width: 250,height: 150,fit: BoxFit.fitWidth,
              ),

          ],

        ),

        margin: EdgeInsets.only(
            left: 30,
            right: 30,
            bottom: 30,
            top: 20
        ),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12))),
      ),
    );
  }
}

class RightBubble extends StatelessWidget {
  final ChatMessage entitity;

  const RightBubble({Key? key, required this.entitity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(

        padding: EdgeInsets.all(12),
        child:
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("${entitity.text}",
              style: TextStyle(fontSize: 24,
                  color: Colors.white
              ),
            ),
            if (entitity.imageUrl != null)
              Image.asset(
              '${entitity.imageUrl}',
              width: 250,height: 150,fit: BoxFit.fitWidth,
            ),
          ],
        ),


        margin: EdgeInsets.only(
            left: 30,
            right: 30,
            bottom: 30,
            top: 20
        ),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12)
            )
        ),
      ),
    );
  }
}



