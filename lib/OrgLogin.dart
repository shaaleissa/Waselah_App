import 'package:application/Home1.dart';
import 'package:application/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

import 'package:adobe_xd/page_link.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'LoginParts.dart';

class OrgLogin extends StatelessWidget {
  OrgLogin({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            body: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                  Color.fromARGB(104, 102, 106, 134),
                  Color.fromARGB(92, 185, 131, 137)
                ]),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Header(),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                        )),
                    child: InputWrapper(),
                  ))
                ],
              ),
            ),
            appBar: AppBar(
              title: Text("WASELAH"),
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
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
            )));
  }
}
