import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'OrgLogin.dart';
import 'package:adobe_xd/page_link.dart';
import 'UserLogin.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 502.0, end: -257.0),
            Pin(size: 668.0, end: -389.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 79.0, start: 7.0),
                  Pin(size: 83.0, middle: 0.3949),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0x78666a86),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(1.0, 0.275),
                  child: Container(
                    width: 150.0,
                    height: 155.0,
                    decoration: BoxDecoration(
                      color: const Color(0x78666a86),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.43, -0.064),
                  child: Container(
                    width: 32.0,
                    height: 31.0,
                    decoration: BoxDecoration(
                      color: const Color(0x7854494b),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.294, 1.0),
                  child: Container(
                    width: 32.0,
                    height: 31.0,
                    decoration: BoxDecoration(
                      color: const Color(0x7854494b),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 79.0, middle: 0.7825),
                  Pin(size: 83.0, start: 87.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0x78b98389),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.158, 0.586),
                  child: Container(
                    width: 79.0,
                    height: 83.0,
                    decoration: BoxDecoration(
                      color: const Color(0x787e8287),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 150.0, start: 61.0),
                  Pin(size: 155.0, start: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0x787e8287),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 150.0, start: 0.0),
                  Pin(size: 155.0, end: 31.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0x78b98389),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.498, -0.111),
                  child: Container(
                    width: 32.0,
                    height: 31.0,
                    decoration: BoxDecoration(
                      color: const Color(0x78b98389),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: -25.0, end: -63.0),
            Pin(size: 668.0, start: 9.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 79.0, start: 7.0),
                  Pin(size: 83.0, middle: 0.3949),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0x78666a86),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(1.0, 0.275),
                  child: Container(
                    width: 150.0,
                    height: 155.0,
                    decoration: BoxDecoration(
                      color: const Color(0x78666a86),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.43, -0.064),
                  child: Container(
                    width: 32.0,
                    height: 31.0,
                    decoration: BoxDecoration(
                      color: const Color(0x7854494b),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.294, 1.0),
                  child: Container(
                    width: 32.0,
                    height: 31.0,
                    decoration: BoxDecoration(
                      color: const Color(0x7854494b),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 79.0, middle: 0.7825),
                  Pin(size: 83.0, start: 87.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0x78b98389),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.158, 0.586),
                  child: Container(
                    width: 79.0,
                    height: 83.0,
                    decoration: BoxDecoration(
                      color: const Color(0x787e8287),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 150.0, start: 61.0),
                  Pin(size: 155.0, start: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0x787e8287),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 150.0, start: 0.0),
                  Pin(size: 155.0, end: 31.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0x78b98389),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.498, -0.111),
                  child: Container(
                    width: 32.0,
                    height: 31.0,
                    decoration: BoxDecoration(
                      color: const Color(0x78b98389),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x13000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Pinned.fromPins(
            Pin(size: 140.0, end: 42.0),
            Pin(size: 40.0, middle: 0.5732),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                      primary: const Color(0xff54494b),
                      minimumSize: Size(60,60)),
              onPressed: (){
                 Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserLogin()));
              }, 
              child: Text(
              'Individual ',
              style: TextStyle(
                fontFamily: 'PT Sans',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                shadows: [
                  Shadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  )
                ],
              ),
              softWrap: false,
            ),)
          ),
          Pinned.fromPins(
            Pin(size: 140.0, start: 42.0),
            Pin(size: 40.0, middle: 0.5732),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                      primary: const Color(0xff54494b),
                      minimumSize: Size(60,60)),
              child:Text(
              'Delivary',
              style: TextStyle(
                fontFamily: 'PT Sans',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
                shadows: [
                  Shadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  )
                ],
              ),
              softWrap: false,
            ), 
            onPressed: (){
               Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrgLogin()));

            },)
          ),
          Align(
            alignment: Alignment(0.0, -0.137),
            child: SizedBox(
              width: 260.0,
              height: 108.0,
              child: Text(
                'Welcome to \nWaselah',
                style: TextStyle(
                  fontFamily: 'SF Pro Rounded',
                  fontSize: 41,
                  color: const Color(0xff54494b),
                  fontWeight: FontWeight.w800,
                  shadows: [
                    Shadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    )
                  ],
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: -45.0, end: 21.0),
            Pin(size: 438.0, start: -13.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/Untitled_Artwork 12.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
}
