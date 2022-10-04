import 'package:flutter/material.dart';


class LogIn extends StatelessWidget {
   LogIn({Key? key}) : super(key: key);

  void press(){
    print(userNameControler.text);
    print(passwordControler.text);
    print("Login successful");
  }

  final userNameControler = TextEditingController();
  final passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Let's sign in here..",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black45,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 3
              ),
            ),
            Text(
              "Welcome back! \n You've been miss! ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,

              ),
            ),

            Container(
              height: 170,
              width: 200,
              margin: EdgeInsets.all(10),
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
              )
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: userNameControler,
                decoration:InputDecoration(
                  hintText: "User Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: passwordControler,
                obscureText: true,
                decoration:InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 10
              ),
              child: ElevatedButton(onPressed: (){
                  press();
                },
                    child: Text(
                        "Log In",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                ),
            ),
             InkWell(
               splashColor: Colors.black,
               onTap: (){
                 press();
               },
               onDoubleTap: (){
                 print("double tap");
               },
               onLongPress: (){
                 print("long press");
               },
               child: Column(
                 children: [
                   Text("find me on"),
            Text("Facebook"),
                 ],
               ),
             ),

          ],
        ),
      ),
    );
  }
}
