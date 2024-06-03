
import 'package:flutter/material.dart';
import 'package:second/screen5.dart';

class screen4 extends StatefulWidget {
  const screen4({super.key});

  @override
  State<screen4> createState() => _screen4State();
}

class _screen4State extends State<screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100,left: 30),
            child: SizedBox(width: 300,child: Image.asset('assets/d.png')),
          ),Padding(
            padding:  EdgeInsets.only(top: 50,left: 30),
            child: Text(
              'Pay Merchants',
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
            padding:  EdgeInsets.only(top: 30,left: 20),
            child: SizedBox(
              width: 283,
              height: 70,
              child: Text(
                'Even with insufficient balance, Pay by Phone at Merchants with Pay Fast\nAccounts.',
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
            padding:  EdgeInsets.only(top: 80,left: 20),
            child: TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen5()));},
              child: Container(child:Padding(
                padding:  EdgeInsets.only(top: 20),
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
              ) ,
                width: 220,
                height: 46,
                decoration: ShapeDecoration(
                  color: Color(0xFFFF5194),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
