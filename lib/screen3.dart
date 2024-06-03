
import 'package:flutter/material.dart';
import 'package:second/screen4.dart';
class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 130,left: 50),
          child: SizedBox(width: 240,child: Image.asset('assets/c.png')),
        ),Padding(
          padding: EdgeInsets.only(top: 50,left: 50),
          child: Text(
            'Pay Bills',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              letterSpacing: 0.06,
            ),
          ),
        ),Padding(
          padding: EdgeInsets.only(top: 30,left: 40),
          child: SizedBox(
            width: 283,
            height: 70,
            child: Text(
              'Pay Bills such as Electricity, Water bill, TV subscriptions etc. \nBuy airtime & Bundles.\n',
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
          padding: EdgeInsets.only(top:80,left: 35),
          child: TextButton(onPressed:  () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen4()));},
            child: Container(child:Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Next',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFF2F2),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.06,
                ),
              ),
            ) ,
              width: 220,
              height: 46,
              decoration: ShapeDecoration(
                color: Color(0xFFFF0083),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
        ),
      ],
    ),

    );
  }
}
