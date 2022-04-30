// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.grey[400],
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 17),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.menu_outlined),
                    Icon(Icons.settings),
                  ]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
          ),
        ),
        Container(
          child: Column(
            children: [
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, size: 30, color: Colors.white),
                    Icon(Icons.search, size: 30, color: Colors.white),
                  ],
                ),
              )
            ],
          ),
          height: 240,
          decoration: BoxDecoration(
            color: Colors.cyan[900],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
        ),
        Positioned(
          top: 150,
          left: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              color: Colors.blue,
              width: 120,
              height: 160,
              child: Image.asset(
                'assets/images/baby.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 607,
          left: 177,
          child: FloatingActionButton(
            backgroundColor: Colors.pink[800],
            onPressed: () {},
            child: Icon(Icons.home),
          ),
        )
      ]),
    );
  }
}
