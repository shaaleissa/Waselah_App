import 'dart:ui';

import 'package:application/Screens/UserLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../responsive/NavigationBar.dart';
import '../responsive/LoginController.dart';
import 'HomePage.dart';

var bannerItems = ["Alataa charity ", "Qatif charity", "Saihat charity", "Ertiqaa charity"];
var bannerDes = [
                      "To support the sustainable environment, recycle batteries of all kinds. We receive batteries at the Smart Consumption Foundation 4:30 pm to 8:30 pm Al Quds Street (opposite Riyad Bank) 0533939200",
      
                 
                      "Al Qatif Charity Project Utilizing Surplus Clothes for Home Receipt. Call 0534279839 Transport Contractor Muhammad Salem Al Rashidi Foundation for Commercial Services",
                      
                    
                      "We receive used clothes and paper in the containers located opposite the women's center north of Saihat Public Park",
                    
                      "Upgrading Your Computer Don’t Throw 2 ertiqa initiative for “Green Saudi Arabia” We are working on rehabilitating computers used to protect the environment The reception continues for two days: First day: 01/25/2022 The second day  01/02/2022 from 10:00 am to 12:00 pm according to the following locations: Male Students Building (A11) Female Students Building (650) Contact and inquiries: 0133332005",
                     
                   ];
var bannerImage = [
  "images/ad1.jpg",
  "images/ad2.jpg",
  "images/ad3.jpg",
  "images/ad4.jpg"
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
                Header(),
                    Counter(),
                    SizedBox(
                      width: 40,
                      height: 40,
                    ),
                    BannerWidgetArea(),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(8, 60, 8, 40),
                       child: Text(" \" We make a living by what we get, but we make a life by what we give \" ",
                    style: TextStyle(
                      color: const Color(0xff666a86),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                    ),
                     ),
              ],
            ),
          ))),
      appBar: AppBar(
        title: Text("WASELAH"),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
                  fit: BoxFit.fill,
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
               Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      bannerItems[x],
                      style: TextStyle(fontSize: 20.0, color: Colors.white,
                      backgroundColor: Color.fromARGB(96, 158, 158, 158)),
                    ),
                        ExpansionTile(title: Text("Desciption", style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                      backgroundColor: Colors.white
                        ),),
               children:[
                   Text(
                      bannerDes[x],
                      style: TextStyle(fontSize: 10.0, color: Color.fromARGB(255, 0, 0, 0),
                      backgroundColor: Colors.white),
                    ),

               ]
               ),
                  ],
                ),
              )
           
            ],
          ),
        ),
        
      );
      banners.add(bannerView);
    }
    for (int x = 0; x < bannerItems.length; x++) {
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

class Header extends StatefulWidget {
  const Header({ Key? key }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  static final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
  

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color:  const Color(0xff666a86),
          height: 120,
          width: screenWidth,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 4),
            child: Align(
              alignment: Alignment.center,
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
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    controller.googleAccount.value!.email,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({ Key? key }) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
    static int _count = 0;
    void _incrementCount() {
      setState(() {
        _count = _count + 1;
      });
    }

    void _decrementCount() {
      setState(() {
        _count = _count - 1;
      });
    }

    void _resetCount() {
      setState(() {
        _count = 0;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Your Goals:',
              ),
              Text(
                '$_count',
                style: Theme.of(context).textTheme.headline4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                     backgroundColor:Color.fromARGB(255, 185, 131, 137) ,
                    onPressed: _incrementCount,
          tooltip: 'Increment',
          child: const FaIcon(FontAwesomeIcons.plus),),
          FloatingActionButton(
             backgroundColor: Color.fromARGB(255, 185, 131, 137),
                    onPressed: _decrementCount,
          tooltip: 'Decrement',
          child: const FaIcon(FontAwesomeIcons.minus),),
          FloatingActionButton(
            backgroundColor:Color.fromARGB(255, 185, 131, 137) ,
                    onPressed: _resetCount,
          tooltip: 'Reset',
          child: const Icon(Icons.refresh_sharp),)
                ],
              )
            ],
          
      ),
    );
  }
}