import 'package:flutter/material.dart';

class ButtonAuth extends StatelessWidget {
  ButtonAuth({required this.title, required this.onPressed,Key? key}) : super(key: key);
  String title;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: 50,
        width: size.width*0.9,
        decoration: BoxDecoration(
          color: Color(0xff74ABEB),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
