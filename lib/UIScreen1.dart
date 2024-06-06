import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Gallary.dart';

class UIScreen1 extends StatefulWidget {
  const UIScreen1({super.key});

  @override
  State<UIScreen1> createState() {
    return UIScreenstate();
  }
}

class UIScreenstate extends State<UIScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
        body: Column(children: [
          Stack(
            children: [
              Image.asset("Assets/image1.png"),
              Positioned(
                bottom: 15.0,
                left: 45.0,
                child: SizedBox(
                  height: 200,
                  width: 270,
                  child: Text(
                    'Dancing between The shadows Of rhythm ',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: 260,
            height: 47,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color.fromRGBO(255, 46, 0, 1)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gallary()),
                );
              },
              child: Center(
                child: Text(
                  "Get Started",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 260,
            height: 47,
            child: Center(
              child: Text(
                "Continue with Email",
                style: GoogleFonts.inter(color: const Color.fromRGBO(255, 46, 0, 1)),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: const Color.fromRGBO(255, 61, 0, 1)),
            ),
          ),
          SizedBox(
            width: 227,
            height: 32,
            child: Text(
              "by continuing you agree to terms of services and  Privacy policy",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: const Color.fromRGBO(203, 200, 200, 1)),
            ),
          )
        ]));
  }
}
