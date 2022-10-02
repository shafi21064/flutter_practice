import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() {

    State<CounterApp> myState = _CounterAppState();

    return myState;
  }
}

class _CounterAppState extends State<CounterApp> {

  int counter = 0;
  Color btnColor = Colors.blue;

  void increment(){

    setState(() {
      counter ++;
    });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: btnColor,
        child: Icon(Icons.add),
        onPressed: (){
          increment();
        },
      ),
      body: Center(
        child: Text(
            "$counter",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold
        ),
        ),
      ),

    );
  }
}
