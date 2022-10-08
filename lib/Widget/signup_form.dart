import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  final String fieldName;
  final TextEditingController controller;
  const SignUpForm({Key? key,
    required this.fieldName,
    required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
        top: 8,
        left: 10,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            fieldName,
            textAlign: TextAlign.right,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500
            ),
          ),

          TextField(

            controller: controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))
                )
            ),
          ),
        ],
      ),
    );
  }
}
