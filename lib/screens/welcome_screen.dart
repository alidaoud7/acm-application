// ignore_for_file: prefer_const_constructors

import 'package:acm_application/screens/login_screen.dart';
import 'package:acm_application/screens/signup_screen.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color:Color.fromRGBO(242, 246, 248,1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.centerRight,
              /*child: TextButton(
             onPressed:(){
              //  Navigator.push(context,MaterialPageRoute(
             //       builder: (context){

               //     }
               // )
             // ),
              },
              /*child: Text(
                "SKIP",
                style:TextStyle(
                  color:Color(0xFF7165D6),
                  fontSize:20,
                ),*/
              ),
            ),*/
            ),
            SizedBox(height: 60,),
            Padding(padding: EdgeInsets.all(20),child: Image.asset("images/coder3.jpg"),
            ),
            SizedBox(height:30),
            Text("Let's Code",
              style: TextStyle(
                color:Color(0xFF7165D6),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,

              ),
            ),
            SizedBox(height: 10),
            Text(
              "ACM coding application ",
              style: TextStyle(
                color:Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.w500,



              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                    },
                    child:Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal:40),
                      child: Text("Log In",style:TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ));
                    },
                    child:Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal:40),
                      child: Text("Sign Up",style:TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );

  }
}
