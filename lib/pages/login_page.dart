// ignore_for_file: prefer_const_constructors

import 'package:first/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login01.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
              width: 400,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
              width: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    label: Text("Username"),
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    label: Text("Password"),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                ),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });

                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 100,
                    height: 40,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 15,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                    ),
                  ),
                )
                // ElevatedButton(
                //     child: Text("Login"),
                //     style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                //     onPressed: () {
                //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                //     }),
              ]),
            )
          ],
        ),
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
