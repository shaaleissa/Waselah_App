
import 'dart:collection';

import 'package:application/responsive/NavigationBar.dart';
import 'package:application/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'UserLogin.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Map extends StatelessWidget {
 

  Map({
    Key? key,
  }) : super(key: key);

  var markers = HashSet<Marker>();
  List<Polyline> myline = [];

  @override
  void initState(){
    //super.initState();
    createPolyline();
  }

  createPolyline(){
    myline.add(Polyline(polylineId: PolylineId('1'),
      color: Colors.blue,
      width: 3,
      points: [
        LatLng(26.576712852750756,49.99861454270621),
        LatLng(26.4915143,50.0424943)
      ]
    ),
    );
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(body: GoogleMap(
          initialCameraPosition:
          CameraPosition(target: LatLng(26.399250, 49.984360), zoom: 10),
          onMapCreated: (GoogleMapController googleMapController) {
              markers.add(
                Marker(
                  markerId: MarkerId('1'),
                  position: LatLng(26.4915143,50.0424943),
                  infoWindow: InfoWindow(
                    title: 'جمعية سيهات الخيرية',
                    snippet: 'جمعية',
                  )
              ),
              );

          },
          markers: markers,
          polylines: myline.toSet(),
        ),

            appBar: AppBar(
              title: Text("WASELAH"),
              centerTitle: true,
              leading: IconButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home1()
                    ));
              }, icon: Icon(Icons.arrow_back)),
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


            )
        )
    );
  }
}