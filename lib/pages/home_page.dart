import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

    String name="Pratham";
    int days = 30;

  // const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("First App"),),

        body: Center(

          child: Container(

            child: Text("Welcome to $name app and Days is $days"),
            
          ),
        ),
        drawer: Drawer(),
      );
  }
}