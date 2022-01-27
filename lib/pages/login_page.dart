import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login01.png",
          ),
          Text(
            "Login",
            style: TextStyle(
              fontSize: 22,
            ),
          )
        ],
      ),

      // child: Center(
      //   child: Text(
      //     "Login Page",
      //     style: TextStyle(fontSize: 40, color: Colors.deepOrangeAccent),
      //   ),
      // ),
    );
  }
}
