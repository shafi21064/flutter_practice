import 'package:flutter/material.dart';
import 'package:prac_one/chat_page.dart';
import 'package:prac_one/sign_up.dart';
import 'package:prac_one/state_full/counter.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "chat app",
      theme:ThemeData(primarySwatch: Colors.brown),
      home:  SignUp(),


    );
  }
}


