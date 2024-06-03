import 'package:flutter/material.dart';
import 'package:second/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 120, left: 130),
            child: Text(
              'Pay Fast',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: SizedBox(
              width: 320,
              height: 84,
              child: Text(
                'Forget Everything \nYou Know About\nBanking',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 70, top: 40),
            child: SizedBox(width: 230, child: Image.asset('assets/a.png')),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 70,top: 50),
            child: TextButton(onPressed: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen2()));},
              child: Container(
                width: 190,
                height: 46,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(color: Color(0xffFF0083),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),child:Center(
                  child: Text(
                  'Log in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.07,
                    letterSpacing: 0.06,
                  ),
                              ),
                ) ,
              ),
            ),
          ),Padding(
            padding:  EdgeInsets.only(top: 25,left: 80),
            child: Container(
              width: 190,
              height: 46,
              decoration: ShapeDecoration(
                color: Color(0xffFF0083),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),child: Center(
                child: Text(
                'Sign Up',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0.07,
                  letterSpacing: 0.06,
                ),
                            ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
