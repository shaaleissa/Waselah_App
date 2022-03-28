
import 'package:application/Screens/WelcomePage.dart';
import 'package:application/responsive/AuthenticationOrg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(providers: [
      Provider<AuthOrg>(create: (_) => AuthOrg(FirebaseAuth.instance)),
       StreamProvider(create: (context) => context.read<AuthOrg>().authStateChanges,
        initialData: null)
    ],
    child: GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: WelcomePage(),
     ), );
  }
}

