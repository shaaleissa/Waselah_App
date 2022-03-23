import 'package:flutter/material.dart';

class LoginTextFields extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 102, 106, 134))
            )
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter your admin ID",
              hintStyle: TextStyle(color: Color.fromARGB(255, 102, 106, 134)),
              border: InputBorder.none
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color.fromARGB(255, 102, 106, 134))
              )
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
            ),
          ),
        ),
      ],
    );
  }
}