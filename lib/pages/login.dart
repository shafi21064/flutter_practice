import 'package:flutter/material.dart';
import 'package:prac_one/Widget/login_form.dart';
import 'package:prac_one/pages/chat_page.dart';
import 'package:prac_one/pages/sign_up.dart';
import 'package:prac_one/pages_style/style.dart';
import 'package:url_launcher/url_launcher.dart';


class LogIn extends StatelessWidget {
   LogIn({Key? key}) : super(key: key);

   final _formKey = GlobalKey<FormState>();

  void loginpress(context){
    if(_formKey.currentState != null && _formKey.currentState!.validate()) {
      print(userNameControler.text);
      print(passwordControler.text);
      print("Login successful");

      Navigator.pushReplacement(context,
          MaterialPageRoute(
              builder: (context) =>ChatPage(userName: userNameControler.text,)));

    }
  }

  void signUpButton(context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }

  final userNameControler = TextEditingController();
  final passwordControler = TextEditingController();
  final _maiUrl = "https://github.com/shafi21064";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: (){
                signUpButton(context);
              },
              icon: Icon(Icons.account_box)
          )
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Let's sign in here..",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black45,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 3
              ),
            ),
            const Text(
              "Welcome back! \n You've been miss! ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,

              ),
            ),

            Container(
              height: 100,
              width: 200,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
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

            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: LogInPageForm(
                      hintText: "User Name",
                      validator: (value){
                        if(value != null && value.isNotEmpty && value.length < 5){
                          return "Please input more than 5 character";
                        } else if (value != null && value.isEmpty){
                          return "Please input a username";
                        }
                        return null;
                      },
                      controller: userNameControler,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: LogInPageForm(
                      validator: (value){
                        if (value != null && value.isEmpty){
                          return "Please input a password";
                        }
                        return null;
                      },
                      passwordView: true,
                      hintText: "Password",
                      controller: passwordControler,
                      ),
                  ),
                ]
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(5.00),
              child: ElevatedButton(onPressed: (){
                  loginpress(context);
                },
                    child: const Text(
                        "Log In",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                ),
            ),
             InkWell(
               splashColor: Colors.black,
               onTap: () async {
                 if (!await launch(_maiUrl)) {
                 throw 'Could not launch this';
                 }
                 },
               onDoubleTap: (){
                 print("double tap");
               },
               onLongPress: (){
                 print("long press");
               },
               child: Column(
                 children: const [
                   Text("Don't have an account?"),
            Text(
                "Github",
              style: TextStyle(
                color: Colors.blueGrey,
              ),

            ),
                 ],
               ),
             ),
          ],
        ),
      )
    );
  }
}
