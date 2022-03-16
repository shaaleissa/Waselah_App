import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Home1.dart';

class InputField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey)
            )
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter your username",
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey)
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

class InputWrapper extends StatelessWidget {
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
            child: InputField(),
          ),
          SizedBox(height: 40,),
          Text(
            "Sign Up/In with Google",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 40,),
          Center(
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home1()
                      ));
                },
                child: Text("Login")),
          ),
        ],
      ),
    );
  }
}
class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset("images/Untitled_Artwork 13.png" , width:100, height: 100,),
          ),
          Center(
            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text("Welcome to Waselah", style: TextStyle(color: Colors.white, fontSize: 18),),
          )
        ],
      ),
    );
  }
}