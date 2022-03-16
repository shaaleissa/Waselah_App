import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Component21.dart';
import './Component41.dart';

class OrgLogin extends StatelessWidget {
  OrgLogin({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -45.0, end: 21.0),
            Pin(size: 438.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/Untitled_Artwork 12.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 82.0, start: 41.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff666a86),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 82.0, end: 11.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff666a86),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 39.0, end: 39.0),
            Pin(size: 395.0, end: 119.0),
            child: Component21(),
          ),
          Align(
            alignment: Alignment(0.532, 0.667),
            child: SizedBox(
              width: 132.0,
              height: 37.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff54494b),
                      borderRadius: BorderRadius.circular(27.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.486, 0.277),
            child: SizedBox(
              width: 169.0,
              height: 41.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(21.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.486, 0.476),
            child: SizedBox(
              width: 169.0,
              height: 41.0,
              child: Component41(),
            ),
          ),
          Align(
            alignment: Alignment(-0.49, 0.271),
            child: SizedBox(
              width: 69.0,
              height: 29.0,
              child: Text(
                'Admin',
                style: TextStyle(
                  fontFamily: 'PT Sans',
                  fontSize: 25,
                  color: const Color(0xff54494b),
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
            ),
          ),
          Align(
            alignment: Alignment(-0.54, 0.469),
            child: SizedBox(
              width: 101.0,
              height: 29.0,
              child: Text(
                'Password',
                style: TextStyle(
                  fontFamily: 'PT Sans',
                  fontSize: 25,
                  color: const Color(0xff54494b),
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
            ),
          ),
          Pinned.fromPins(
            Pin(size: 59.0, middle: 0.7127),
            Pin(size: 29.0, end: 147.0),
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: 'PT Sans',
                fontSize: 25,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(-0.492, -0.227),
            child: SizedBox(
              width: 95.0,
              height: 24.0,
              child: Text(
                'WASELAH',
                style: TextStyle(
                  fontFamily: 'SF Pro Rounded',
                  fontSize: 20,
                  color: const Color(0xff54494b),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.077),
            child: SizedBox(
              width: 204.0,
              height: 29.0,
              child: Text(
                'Organization Login',
                style: TextStyle(
                  fontFamily: 'PT Sans',
                  fontSize: 25,
                  color: const Color(0xff54494b),
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
            ),
          ),
        ],
      ),
    );
  }
}
