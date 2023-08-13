import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class FieldText extends StatelessWidget {
  FieldText({this.passfield = false, required this.fieldcontroller, Key? key})
      : super(key: key);
  bool passfield;
  TextEditingController fieldcontroller;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width*0.9,
      child: TextFormField(
        controller: fieldcontroller,
        obscureText: (passfield) ? true : false,
        validator: (value) {
          if (passfield) {
            // Password validation
            if (value!.isEmpty) {
              return 'Please enter a password';
            } else if (value.length < 8) {
              return 'Password must be at least 8 characters';
            }
          } else {
            // Email validation
            if (value!.isEmpty || !EmailValidator.validate(value)) {
              return "Enter valid email";
            }
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: (passfield) ? "Password" : "Email",
        ),
      ),
    );
  }
}
