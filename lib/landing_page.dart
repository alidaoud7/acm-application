import 'package:acm_application/logo_animation.dart';
import 'package:acm_application/slogan_ani.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'get_start_buton.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(child: AcmLogo()),
              SizedBox(height: 20),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TypeWrite(
                    textScaleFactor: 1,
                    seconds: 5,
                    word: 'think twice\ncode once',
                    style: GoogleFonts.lato(
                      letterSpacing: 1.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
              Container(
                  height:screenHeight * 0.2 ,
                  child: SlideToRegisterButton(onRegistered: () {},)),
            ],
          )),
    );
  }
}

void main() {
  runApp(LandingPage());
}
