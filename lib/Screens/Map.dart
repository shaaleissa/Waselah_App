
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

  @override

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(body: Home()

         ,   appBar: AppBar(
              title: Text("WASELAH"),
              centerTitle: true,
              leading: IconButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home1()
                    ));
              }, icon: Icon(Icons.arrow_back)),
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search),),
                IconButton(onPressed: () {}, icon: Icon(Icons.more)),
              ],
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

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var markers = HashSet<Marker>();
  late BitmapDescriptor customMarker;

  @override

  void initState() {
    super.initState();
    getCustomMarker();
  }

  getCustomMarker() async {
    customMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration(),'assets/MapPin.png');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          GoogleMap(
            initialCameraPosition:
              CameraPosition(target: LatLng(26.399250, 49.984360), zoom: 10),
              onMapCreated: (GoogleMapController googleMapController){
              setState(() {
                markers.add(
                Marker(markerId: MarkerId('1'),
                position: LatLng(26.5706198,50.0668469),
                infoWindow: InfoWindow(
                title: 'جمعية تاروت الخيرية',
                ),
                ),
                );
                markers.add(
                    Marker(markerId: MarkerId('2'),
                position: LatLng(26.4118495,50.0747275),
                infoWindow: InfoWindow(
                title: 'جمعية جود الخيرية',
                ),
                    ),
                );
                markers.add(
                  Marker(markerId: MarkerId('3'),
                    position: LatLng(26.4915143,50.0424943),
                    infoWindow: InfoWindow(
                      title: 'جمعية سيهات الخيرية',
                    ),
                  ),
                );
                markers.add(
                  Marker(
                      markerId: MarkerId('4'),
                      position: LatLng(26.5689503,50.0014977),
                      infoWindow: InfoWindow(
                        title: 'جمعية العطاء النسائية',
                      )
                  ),
                );
                markers.add(
                  Marker(
                      markerId: MarkerId('5'),
                      position: LatLng(26.5661247,50.0060139),
                      infoWindow: InfoWindow(
                        title: 'جمعية القطيف الخيرية',
                      )
                  ),
                );
                markers.add(
                  Marker(
                      markerId: MarkerId('6'),
                      position: LatLng(26.433865,50.112422),
                      infoWindow: InfoWindow(
                        title: 'جمعية البر الخيرية',
                      )
                  ),
                );
                markers.add(
                  Marker(
                      markerId: MarkerId('7'),
                      position: LatLng(26.341836,50.1957597),
                      infoWindow: InfoWindow(
                        title: 'جمعية ارتقاء',
                      )
                  ),
                );
                markers.add(
                  Marker(
                      markerId: MarkerId('8'),
                      position: LatLng(26.569953, 49.995327),
                      infoWindow: InfoWindow(
                        title: 'حاوية تبرع بالملابس',
                      )
                  ),
                );
                markers.add(
                  Marker(
                      markerId: MarkerId('9'),
                      position: LatLng(26.510422, 50.031200),
                      infoWindow: InfoWindow(
                        title: 'حاوية تبرع بالخبز',
                      )
                  ),
                );
                markers.add(
                  Marker(
                      markerId: MarkerId('10'),
                      position: LatLng(26.518997, 50.029004),
                      infoWindow: InfoWindow(
                        title: 'حاوية تبرع بالملابس',
                      )
                  ),
                );
                markers.add(
                  Marker(
                      markerId: MarkerId('11'),
                      position: LatLng(26.571741, 50.030972),
                      infoWindow: InfoWindow(
                        title: 'حاوية تبرع بالملابس',
                      )
                  ),
                );
                markers.add(
                  Marker(
                      markerId: MarkerId('12'),
                      position: LatLng(26.514480, 50.035111),
                      infoWindow: InfoWindow(
                        title: 'حاوية تبرع بالملابس',
                      )
                  ),
                );

              }
              );
              },
            markers: markers,
          )
        ],),
    );

  }


  }