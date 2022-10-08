import 'package:flutter/material.dart';
import 'package:prac_one/Widget/signup_form.dart';

class SignUp extends StatelessWidget {
   SignUp({Key? key}) : super(key: key);

  void signupbtn(){
    print(fullNameControler.text);
    print(emailControler.text);
    print(passwordControler.text);
    print(confirmPasswordControler.text);
    print("Sign Up Successfully");
  }
  final fullNameControler = TextEditingController();
  final emailControler = TextEditingController();
  final passwordControler = TextEditingController();
  final confirmPasswordControler = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign up.."),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SignUpForm(
              fieldName: "Full Name",
                controller: fullNameControler,
                ),
           SignUpForm(
               fieldName: "Email/Phone",
               controller: emailControler
           ),
            SignUpForm(
                fieldName: "Password",
                controller: passwordControler
            ),
            SignUpForm(
                fieldName: "Confirm Password",
                controller: confirmPasswordControler
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: ElevatedButton(onPressed: (){
                signupbtn();
              }, child: const Text(
                  "Sign Up"
              )
              ),
            )
          ],
        ),
    );
  }
}
