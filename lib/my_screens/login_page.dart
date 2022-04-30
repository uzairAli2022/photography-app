// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uzair_ali_app/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwrdsec = true;
  bool loginpress = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/loginPic.jpeg"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    border: Border.all(color: Colors.white.withOpacity(0.5))),
                height: 400,
                width: 360,
                child: Column(children: [
                  Container(
                    child: Column(children: [
                      Text(
                        "LogIn",
                        style: GoogleFonts.anton(
                            color: Color.fromARGB(255, 11, 92, 146),
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter Email",
                              hintStyle: TextStyle(color: Colors.grey.shade500),
                              labelText: "Email",
                              suffixIcon: Icon(Icons.check_box_rounded),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          obscureText: passwrdsec,
                          decoration: InputDecoration(
                              hintText: "Enter passwerd",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              labelText: "Passwerd",
                              suffixIcon: InkWell(
                                  onTap: () async {
                                    setState(() {
                                      passwrdsec = false;
                                    });
                                    await Future.delayed(Duration(seconds: 1));
                                    setState(() {
                                      passwrdsec = true;
                                    });
                                  },
                                  child: passwrdsec
                                      ? Icon(Icons.remove_red_eye)
                                      : Icon(
                                          Icons.remove_red_eye,
                                          color: Colors.green,
                                        )),
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(height: 55),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            loginpress = true;
                          });
                          await Future.delayed(Duration(seconds: 1));
                          await Navigator.pushNamed(
                              context, MyRoutes.profile1route);
                          setState(() {
                            loginpress = false;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: loginpress ? 50 : 80,
                          height: loginpress ? 50 : 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: loginpress
                                ? Colors.green
                                : Colors.black.withOpacity(0.7),
                          ),
                          child: Center(
                            child: loginpress
                                ? Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 25,
                                  )
                                : Text(
                                    "LogIn",
                                    style: GoogleFonts.adamina(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                    ]),
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
