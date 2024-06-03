import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:second/screen7.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 150,left: 150),
            child: Text(
              'Verify',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1F1F1F),
                fontSize: 35,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,

                letterSpacing: 0.06,
              ),
            ),
          ),SizedBox(
            width: 284,
            child: Padding(
              padding: EdgeInsets.only(top: 50,left: 80),
              child: Text(
                'Please enter the 6 digit one time code to activate your account!',
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
          ),
          OtpTextField(
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
          ),Padding(
            padding:  EdgeInsets.only(top: 50,left: 120),
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
            padding:  EdgeInsets.only(top:30,left: 150 ),
            child: Text(
              'Resend Code!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1F1F1F),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
                letterSpacing: 0.06,
              ),
            ),
          ),Padding(
            padding:  EdgeInsets.only(left: 30,top: 70),
            child:  TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen7()));},
              child: Container(child:SizedBox(
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
              ) ,
                width: 316,
                height: 45.28,
                decoration: ShapeDecoration(
                  color: Color(0xFFFF0083),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
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
