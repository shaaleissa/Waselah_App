import 'package:application/Screens/OrgLogin.dart';
import 'package:flutter/material.dart';

class OrgHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("WASELAH"),
      centerTitle: true,
      leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => OrgLogin()));
          },
          icon: Icon(Icons.arrow_back)),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          const Color(0xff666a86),
          Color.fromARGB(255, 185, 131, 137)
        ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
      ),
      elevation: 20.0,
      titleSpacing: 20,
    ));
  }
}

