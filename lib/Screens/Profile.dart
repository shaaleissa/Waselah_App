import 'dart:ui';

import 'package:application/Screens/UserLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../responsive/NavigationBar.dart';
import '../responsive/LoginController.dart';

var bannerItems = ["", "", "", ""];
var bannerImage = [
  "images/labtop.svg.png",
  "images/clothes.png",
  "images/home.png",
  "images/plastic.png"
];

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          height: screenHeight,
          width: screenWidth,
          child: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // here u can add
                CounterScreenState(),
                BannerWidgetArea(),
                Text("Hello World",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ))),
      appBar: AppBar(
        title: Text("WASELA"),
        centerTitle: true,
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
    );
  }
}

class BannerWidgetArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    PageController controller =
        PageController(viewportFraction: 0.8, initialPage: 1);

    List<Widget> banners = <Widget>[];

    for (int x = 0; x < bannerItems.length; x++) {
      var bannerView = Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0)
                    ]),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(
                  bannerImage[x],
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(90, 177, 152, 152),
                          Color.fromARGB(90, 177, 152, 152)
                        ])),
              ),
            ],
          ),
        ),
      );
      banners.add(bannerView);
    }

    return Container(
      width: screenWidth,
      height: screenWidth * 9 / 16,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: banners,
      ),
    );
  }
}

class CounterScreenState extends StatefulWidget {
  @override
  CounterScreen createState() => CounterScreen();
}

class CounterScreen extends State<CounterScreenState> {
  static final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    int count = 2;
    void _incrementCount() {
      setState(() {
        count = count + 1;
      });
    }

    void _decrementCount() {
      setState(() {
        count = count - 1;
      });
    }

    void _resetCount() {
      setState(() {
        count = 0;
      });
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Color.fromARGB(255, 185, 131, 137),
          height: 120,
          width: screenWidth,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.ltr,
                children: [
                  CircleAvatar(
                    child: ClipOval(
                        child: Image.network(
                      controller.googleAccount.value?.photoUrl ?? '',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    )),
                  ),
                  Text(
                    controller.googleAccount.value!.displayName.toString(),
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                  Text(
                    controller.googleAccount.value!.email,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        Text("The desired goal"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                backgroundColor: Color(0xff666a86),
                child: Icon(Icons.add),
                onPressed: () {
                  _incrementCount();
                },
              ),
              Text(count.toString()),
              FloatingActionButton(
                backgroundColor: Color(0xff666a86),
                child: Icon(Icons.minimize),
                onPressed: () {
                  _decrementCount();
                },
              ),
              FloatingActionButton(
                backgroundColor: Color(0xff666a86),
                child: Icon(Icons.reset_tv),
                onPressed: () {
                  _resetCount();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
