import 'package:application/Screens/AlberRequest.dart';
import 'package:application/Screens/More.dart';
import 'package:application/Screens/UserLogin.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'AttaRequest.dart';
import 'ErtqaRequest.dart';
import 'JoodRequest.dart';
import 'QatifRequest.dart';
import 'SihatRequest.dart';
import '../responsive/NavigationBar.dart';
import 'TarotRequest.dart';

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
                  icon: FaIcon(FontAwesomeIcons.recycle),
                  text: "Plastic",
                ),
                Tab(icon: FaIcon(FontAwesomeIcons.hatWizard), text: "Clothes"),
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
              TarotImage(),
              TarotText(context),
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
              AttaImage(),
              AttaText(context),
              AlberImage(),
              AlberText(context),
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
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 139, 143, 173),
                    onPrimary: Colors.white,
                    minimumSize: Size(30, 30)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlberRequest()));
                },
                icon: Icon(Icons.request_page),
                label: Text("Request Pick Up")),
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
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 139, 143, 173),
                    onPrimary: Colors.white,
                    minimumSize: Size(30, 30)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JoodRequest()));
                },
                icon: Icon(Icons.request_page),
                label: Text("Request Pick Up")),
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
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 139, 143, 173),
                    onPrimary: Colors.white,
                    minimumSize: Size(30, 30)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EtrqaRequest()));
                },
                icon: Icon(Icons.request_page),
                label: Text("Request Pick Up")),
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
          Text(
              " About Sihat :  founded in eastern region. It aims to help people in need hand in hand with the different social classes in the community."),
          Text("Location : Eastren Province"),
          Text("Services :"),
          Center(
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 139, 143, 173),
                    onPrimary: Colors.white,
                    minimumSize: Size(30, 30)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SihatRequest()));
                },
                icon: Icon(Icons.request_page),
                label: Text("Request Pick Up")),
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
          Text(
              " About Ata'a :A non profit female organization that aims to advance development in the community."),
          Text("Location : Eastren Province"),
          Text("Services :"),
          Center(
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 139, 143, 173),
                    onPrimary: Colors.white,
                    minimumSize: Size(30, 30)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AttaRequest()));
                },
                icon: Icon(Icons.request_page),
                label: Text("Request Pick Up")),
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
          Text(
              " About Qatif : aims to develop the economic and social level through several programs, including donations in the Eastern Province"),
          Text("Location : Eastren Province"),
          Text("Services :"),
          Center(
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 139, 143, 173),
                    onPrimary: Colors.white,
                    minimumSize: Size(30, 30)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QatifRequest()));
                },
                icon: Icon(Icons.request_page),
                label: Text("Request Pick Up")),
          ),
        ],
      );

  Widget TarotImage() => Image.asset(
        "images/tarot.png",
        width: double.infinity,
        height: 200,
        fit: BoxFit.scaleDown,
      );
  Widget TarotText(BuildContext context) => ExpansionTile(
        title: Text("Tarot Charity ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center),
        childrenPadding: EdgeInsets.all(16),
        children: [
          Text(
              " About Tarot : aims to develop the economic and social level through providing financial and material aid, and rising the awareness of the importance of donations in the eastren province  "),
          Text("Location : Eastren Province"),
          Text("Services :"),
          Center(
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 139, 143, 173),
                    onPrimary: Colors.white,
                    minimumSize: Size(30, 30)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TarotRequest()));
                },
                icon: Icon(Icons.request_page),
                label: Text("Request Pick Up")),
          ),
        ],
      );
}
