import 'package:flutter/material.dart';
import 'package:prac_one/pages/chat_page.dart';
import 'package:prac_one/pages/sign_up.dart';
import 'package:prac_one/state_full/counter.dart';

import 'pages/login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "chat app",
      theme:ThemeData(
          primarySwatch: Colors.brown,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.black
          )
      ),
      home:  LogIn(),


    );
  }
}


