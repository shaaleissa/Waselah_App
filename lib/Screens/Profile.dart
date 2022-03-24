
import 'package:flutter/material.dart';
import '../responsive/NavigationBar.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WASELA"),
          centerTitle: true,
          leading: IconButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Home1()
                ));
          }, icon: Icon(Icons.arrow_back)),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search),),
            IconButton(onPressed: () {}, icon: Icon(Icons.more)),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      const Color(0xff666a86),
                      Color.fromARGB(255, 185, 131, 137)
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft)),
          ),
          elevation: 20.0,
          titleSpacing: 20,


        ),
        body: Text("Profile")

    );
  }
}

