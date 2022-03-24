import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../responsive/NavigationBar.dart';

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
             child:Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 // here u can add 
                 BannerWidgetArea(),
               ],
             ) ,))

       ),
      appBar: AppBar(
        title: Text("WASELA"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home1()));
            },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more)),
        ],
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
                        colors: [Color.fromARGB(90, 177, 152, 152),Color.fromARGB(90, 177, 152, 152)])),
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