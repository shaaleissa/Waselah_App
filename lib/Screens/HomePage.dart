import 'package:application/Screens/AlberRequest.dart';
import 'package:application/Screens/More.dart';
import 'package:application/Screens/UserLogin.dart';
import 'package:flutter/material.dart';
import 'AttaRequest.dart';
import 'ErtqaRequest.dart';
import 'JoodRequest.dart';
import 'QatifRequest.dart';
import 'SihatRequest.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            body: TabBarView(children: [
              AllMenu(context),
              ElectMenu(context),
              PlasticMenu(context),
              ClothsMenu(context),
            ]),
            drawer: More(),
            appBar: AppBar(
              title: Text("WASELAH"),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UserLogin()));
                    },
                    icon: Icon(Icons.arrow_back)),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ],
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "All",
                ),
                Tab(
                  icon: Icon(Icons.computer),
                  text: "Electronics",
                ),
                Tab(
                  icon: Icon(Icons.recycling_rounded),
                  text: "Plastic",
                ),
                Tab(icon: Icon(Icons.woman), text: "Clothes"),
              ]),
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

  Padding AllMenu(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AlberImage(),
              AlberText(context),
              JoodImage(),
              JoodText(context),
              ErtqaImage(),
              ErtqaText(context),
              AttaImage(),
              AttaText(context),
              SihatImage(),
              SihatText(
                context,
              ),
              QatifImage(),
              QatifText(context),
            ],
          )),
    );
  }

  Padding ElectMenu(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ErtqaImage(),
              ErtqaText(context),
            ],
          )),
    );
  }

  Padding PlasticMenu(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AlberImage(),
              AlberText(context),
              JoodImage(),
              JoodText(context),
              SihatImage(),
              SihatText(
                context,
              ),
              AttaImage(),
              AttaText(context),
            ],
          )),
    );
  }

  Padding ClothsMenu(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AlberImage(),
              AlberText(context),
              JoodImage(),
              JoodText(context),
              SihatImage(),
              SihatText(
                context,
              ),
              AttaImage(),
              AttaText(context),
            ],
          )),
    );
  }

  Widget AlberImage() => Image.asset(
        "images/alber.png",
        width: double.infinity,
        height: 200,
        fit: BoxFit.scaleDown,
      );
  Widget AlberText(BuildContext context) => ExpansionTile(
        title: Text("Alber Charity ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center),
        childrenPadding: EdgeInsets.all(16),
        children: [
          Text(
              "About Alber : Alber chairty thrives to strength the potentials of the eastren province community to help those in need "),
          Text("Location : Eastren Province"),
          Text("Services : "),
          Center(
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlberRequest()));
                },
                child: Text("Request Pick Up")),
          ),
        ],
      );
  Widget JoodImage() => Image.asset(
        "images/jood.png",
        width: double.infinity,
        height: 200,
        fit: BoxFit.scaleDown,
      );
  Widget JoodText(BuildContext context) => ExpansionTile(
        title: Text("Jood Charity ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center),
        childrenPadding: EdgeInsets.all(16),
        children: [
          Text(
              "About Jood : a non- profit organization running and founded by women to help serve, support families in need by offering financial aids as well as helping create a hand in hand community    "),
          Text("Location : Eastren Province"),
          Text("Services : "),
          Center(
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JoodRequest()));
                },
                child: Text("Request Pick Up")),
          ),
        ],
      );
  Widget ErtqaImage() => Image.asset(
        "images/ertqa.jpg",
        width: double.infinity,
        height: 200,
        fit: BoxFit.scaleDown,
      );
  Widget ErtqaText(BuildContext context) => ExpansionTile(
        title: Text("Ertqa Charity ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center),
        childrenPadding: EdgeInsets.all(16),
        children: [
          Text(
              " About Ertqa :Ertiqa is a Non-Profit Organization registered with the Ministry of Human Resources and Social Development, concerned with the collection, refurbishment and distribution of used computers to educational and social institutes. In association with “Extra”."),
          Text("Location : Eastren Province"),
          Text("Services :"),
          Center(
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EtrqaRequest()));
                },
                child: Text("Request Pick Up")),
          ),
        ],
      );
  Widget SihatImage() => Image.asset(
        "images/sihat.jpeg",
        width: double.infinity,
        height: 200,
        fit: BoxFit.scaleDown,
      );
  Widget SihatText(BuildContext context) => ExpansionTile(
        title: Text("Sihat Charity ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center),
        childrenPadding: EdgeInsets.all(16),
        children: [
          Text(" About Sihat : "),
          Text("Location : Eastren Province"),
          Text("Services :"),
          Center(
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SihatRequest()));
                },
                child: Text("Request Pick Up")),
          ),
        ],
      );
  Widget AttaImage() => Image.asset(
        "images/alatta.png",
        width: double.infinity,
        height: 200,
        fit: BoxFit.scaleDown,
      );
  Widget AttaText(BuildContext context) => ExpansionTile(
        title: Text("Ata'a Charity ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center),
        childrenPadding: EdgeInsets.all(16),
        children: [
          Text(" About Ata'a :"),
          Text("Location : Eastren Province"),
          Text("Services :"),
          Center(
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AttaRequest()));
                },
                child: Text("Request Pick Up")),
          ),
        ],
      );

  Widget QatifImage() => Image.asset(
        "images/qatif.png",
        width: double.infinity,
        height: 200,
        fit: BoxFit.scaleDown,
      );
  Widget QatifText(BuildContext context) => ExpansionTile(
        title: Text("Qatif Charity ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center),
        childrenPadding: EdgeInsets.all(16),
        children: [
          Text(" About Qatif :"),
          Text("Location : Eastren Province"),
          Text("Services :"),
          Center(
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QatifRequest()));
                },
                child: Text("Request Pick Up")),
          ),
        ],
      );
}
