import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
//import './iPhoneXRXSMax111.dart';
import 'package:adobe_xd/page_link.dart';
//import './iPhoneXRXSMax115.dart';
//import './iPhoneXRXSMax116.dart';

//import './iPhoneXRXSMax117.dart';

import './Map_.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'AboutUs.dart';
import 'Home1.dart';
import 'LoginParts.dart';
import 'LoginController.dart';

class More extends StatelessWidget {
  More({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
                InputWrapper.controller.googleAccount.value?.displayName ?? ''),
            accountEmail:
                Text(InputWrapper.controller.googleAccount.value?.email ?? ''),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: Image.network(
                InputWrapper.controller.googleAccount.value?.photoUrl ?? '',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              )),
            ),
            decoration: BoxDecoration(color: const Color(0xff666a86)),
          ),
          ListTile(
            leading: Icon(Icons.computer),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () {
              
            },
          ),
        ],
      ),
    );
  }
}
