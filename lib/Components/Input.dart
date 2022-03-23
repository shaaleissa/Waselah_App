import 'package:application/Components/LoginTextFields.dart';
import 'package:flutter/material.dart';

import 'Button.dart';


class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: LoginTextFields(),
          ),
          SizedBox(height: 40,),
          Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 40,),
          Button()
        ],
      ),
    );
  }
}