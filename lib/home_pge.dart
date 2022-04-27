// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uzair_ali_app/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/camera.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 360, 30, 20),
              width: 400,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(23),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade900,
                      offset: Offset(5, 5),
                    ),
                  ]),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Photography Experiance',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'MinimaList Dimentions',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'The ultimate dimentional photography',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.grey[600]),
                  ),
                  Text(
                    'experiance with a minimalistic layout',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.grey[600]),
                  ),
                  Text(
                    'that creats a special masterpiece',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.pag1Route);
                    },
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          offset: Offset(4, 4),
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5, -5),
                          blurRadius: 9,
                        ),
                      ], color: Colors.black, shape: BoxShape.circle),
                      height: 90,
                      width: 90,
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
