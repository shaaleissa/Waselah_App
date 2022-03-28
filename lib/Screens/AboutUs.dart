
import 'package:flutter/material.dart';

import '../responsive/NavigationBar.dart';


class AboutUs extends StatefulWidget {
  const AboutUs({ Key? key }) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
 Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('images/Untitled_Artwork 13.png',
            width: 200,
            height: 200,),
          ),
          Center(
            child: Text("Waselah", 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: const Color(0xff666a86),
              
            ) ,
            ),
         
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("is an application that Gathers together institutions and charities that receive donations of clothing, electronic devices, and plastics. Waselah serves the community in promoting sustainable City recycling through donations. The application acts as an intermediary between the donor and the concerned party. It also provides a Google Map service to see the nearest place of donations." , textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: const Color.fromARGB(255, 185, 131, 137),
                

            ),),
          )
        ],
      ),
    ),
    appBar: AppBar(
              title: Text("WASELAH"),
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home1()));
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
              titleSpacing: 20,)
    );
  }
}

  