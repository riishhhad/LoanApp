
import 'package:flutter/material.dart';
import 'package:second/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
Padding(
  padding:  EdgeInsets.only(top: 130,left: 30),
  child: Image.asset('assets/a.png'),
),Padding(
  padding: EdgeInsets.only(top: 35,left: 80),
  child: SizedBox(width: 180,height: 50,
    child: Text(
              'Send Money',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0.07,
                letterSpacing: 0.06,
              ),
            ),
  ),
),Padding(
  padding: EdgeInsets.only(left: 30),
  child: SizedBox(
            width: 283,
            height: 70,
            child: Text(
              'Send money to all networks and banks right from your Pay Fast\naccount.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                letterSpacing: 0.06,
              ),
            ),
          ),
),Padding(
  padding:  EdgeInsets.only(top: 80,left: 55),
  child: TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen3()));},
    child: Container(
              width: 220,
              height: 46,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0xffff5194),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 220,
                      height: 46,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 220,
                              height: 46,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFF0083),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 220,
                              height: 46,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFF5194),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 89.37,
                    top: 13,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'Next',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFFF2F2),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0.07,
                          letterSpacing: 0.06,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
  ),
)


      ],),
    );
  }
}
