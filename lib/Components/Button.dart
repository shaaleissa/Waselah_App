import 'package:application/Screens/OrgHome.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 185, 131, 137),
        onPrimary:  Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
        ),
        elevation: 10.0,
      ),
      onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => OrgHome()));
          }, child: Padding(
            padding: EdgeInsets.all(15.0)
          ,child: Text("Login",style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),
      ),
          ),
    );
  }
}