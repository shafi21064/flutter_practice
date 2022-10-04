import 'package:flutter/material.dart';

class LeftBubble extends StatelessWidget {
  final String message;


  const LeftBubble({Key? key, required this.message}) : super(key: key);

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
            Text("$message",
              style: TextStyle(fontSize: 24,
                  color: Colors.white
              ),
            ),
            Image.network(
              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
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
  final String message;

  const RightBubble({Key? key, required this.message}) : super(key: key);

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
            Text("$message",
              style: TextStyle(fontSize: 24,
                  color: Colors.white
              ),
            ),
            Image.network(
              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
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



