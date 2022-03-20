import 'package:application/responsive/LoginController.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:provider/provider.dart';

import 'NavigationBar.dart';

class InputWrapper extends StatelessWidget {
  static final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () {
            if (controller.googleAccount.value == null)
              return LoginButton();
            else
              return ButtonToHome(context);
          },
        ),
      ),
    );
  }

  Center ButtonToHome(BuildContext context) {
    return Center(
      child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home1()));
          },
          child: Text("Continue to homepage")),
    );
  }

  ElevatedButton LoginButton() {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            primary: const Color(0xff666a86),
            onPrimary: Colors.black,
            minimumSize: Size(double.infinity, 50)),
        onPressed: () {
          controller.login();
        },
        icon: FaIcon(FontAwesomeIcons.google),
        label: Text('Sign Up with Google'));
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              "images/Untitled_Artwork 13.png",
              width: 100,
              height: 100,
            ),
          ),
          Center(
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Welcome to Waselah",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}

