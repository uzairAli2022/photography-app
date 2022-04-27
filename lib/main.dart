import 'package:flutter/material.dart';
import 'package:uzair_ali_app/home_pge.dart';
import 'package:uzair_ali_app/my_screens/photos_pag1.dart';
import 'package:uzair_ali_app/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.deepPurple.withOpacity(0.7)),
          textTheme: TextTheme(bodyText1: GoogleFonts.lato())),
      routes: {
        MyRoutes.pag1Route: (context) => MyPage1(),
        MyRoutes.homeRoute: (context) => MyHome(),
      },
    );
  }
}
