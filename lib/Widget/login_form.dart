import 'package:flutter/material.dart';
import 'package:prac_one/pages_style/style.dart';

class LogInPageForm extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final bool passwordView;

  const LogInPageForm({Key? key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.passwordView = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (value){
        if (validator != null ) return validator!(value);
      },
      obscureText: passwordView,
      controller: controller,
      decoration: InputDecoration(
        hintText: "$hintText",
        hintStyle: ThemeTextStyle.formTextStyle,
        border: OutlineInputBorder(),
      ),
    );
  }
}
