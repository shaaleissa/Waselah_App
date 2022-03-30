import 'package:application/Screens/WelcomePage.dart';
import 'package:application/responsive/AuthenticationOrg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../responsive/UserLoginParts.dart';
import 'OrgHome.dart';

final TextEditingController IDContoller = TextEditingController();
final TextEditingController PassContoller = TextEditingController();

class OrgLogin extends StatelessWidget {
  OrgLogin({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
            length: 4,
            child: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },

             child: Scaffold(
                body: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        colors: [
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
                        child: Input(),
                      ))
                    ],
                  ),
                ),
                appBar: AppBar(
                  title: Text("WASELAH"),
                  centerTitle: true,
                  leading: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomePage()));
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
                ),
                resizeToAvoidBottomInset: false,
                )
                ));
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseuser = context.watch<User>();
    // ignore: unnecessary_null_comparison
    if (firebaseuser != null) {
      return OrgHome();
    } else {
      return OrgLogin();
    }
  }
}

class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: LoginTextFields(),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 40,
          ),
          Button()
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 185, 131, 137),
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 10.0,
      ),
      onPressed: () {
        context
            .read<AuthOrg>()
            .signIn(email: IDContoller.text, pass: PassContoller.text);
           Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrgHome()));
      },
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          "Login",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class LoginTextFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom:
                      BorderSide(color: Color.fromARGB(255, 102, 106, 134)))),
          child: TextField(
            controller: IDContoller,
            decoration: InputDecoration(
                hintText: "Enter your admin ID",
                hintStyle: TextStyle(color: Color.fromARGB(255, 102, 106, 134)),
                border: InputBorder.none),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom:
                      BorderSide(color: Color.fromARGB(255, 102, 106, 134)))),
          child: TextField(
            controller: PassContoller,
            decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none),
                obscureText: true,
          ),
        ),
      ],
    );
  }
}
