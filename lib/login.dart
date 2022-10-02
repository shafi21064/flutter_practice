import 'package:flutter/material.dart';


class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Let's sign in here..",
            style: TextStyle(color: Colors.black45,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                wordSpacing: 3

            ),
          ),
          Center(

            child: Text(
              "Welcome back! \n You've been miss! ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,

              ),
            ),
          ),

          Container(
            height: 170,
            width: 200,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'
                  )
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(15)
              ),
            ),

          )
        ],
      ),
    );
  }
}
