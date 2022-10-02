import 'package:flutter/material.dart';


class SendBar extends StatelessWidget {
  const SendBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.add,
                color: Colors.white,
              )
          ),
          IconButton(onPressed: (){},
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
