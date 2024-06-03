import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:second/screen9.dart';

class screen8 extends StatefulWidget {
  const screen8({super.key});

  @override
  State<screen8> createState() => _screen8State();
}

class _screen8State extends State<screen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
    Padding(
      padding:  EdgeInsets.only(top: 180,left: 30),
      child: Text(
        'Verify',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF1F1F1F),
          fontSize: 29,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: 0.03,
          letterSpacing: 0.06,
        ),
      ),
    ),Padding(
      padding:  EdgeInsets.only(top: 30,left: 30),
      child: SizedBox(
        width: 284,
        child: Text(
          'Please enter the 6 digit one time code to activate your account!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
            letterSpacing: 0.06,
          ),
        ),
      ),
    ),
    Padding(
      padding:  EdgeInsets.only(top: 50),
      child: OtpTextField(
        numberOfFields: 5,
        borderColor: Color(0x661F1F1F),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true,fieldHeight: 50,fillColor: Color(0xFFF2F2F2),
        //runs when a code is typed in
        onCodeChanged: (String code) {
          //handle validation or checks here
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
          showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                  title: Text("Verification Code"),
                  content: Text('Code entered is $verificationCode'),
                );
              }
          );
        }, // end onSubmit
      ),
    ),Padding(
      padding:  EdgeInsets.only(top: 70),
      child: Text(
        'Didn’t receive a Code?',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          letterSpacing: 0.06,
        ),
      ),
    ),Padding(
      padding: EdgeInsets.only(top: 50),
      child: Text(
        'Resend Code!',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF1F1F1F),
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          decoration: TextDecoration.underline,
          height: 0.08,
          letterSpacing: 0.06,
        ),
      ),
    ),Padding(
      padding: EdgeInsets.only(top: 50),
      child: TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen9()));},
        child: Container(child: SizedBox(
          width: 69.89,
          height: 21.66,
          child: Padding(
            padding:  EdgeInsets.only(top: 10),
            child: Text(
              'Verify',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFFFF2F2),
                fontSize: 17.72,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.06,
              ),
            ),
          ),
        ),
          width: 316,
          height: 45.28,
          decoration: ShapeDecoration(
            color: Color(0xFFFF5194),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    )
  ],
),

    );
  }
}
