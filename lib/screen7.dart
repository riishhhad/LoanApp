import 'package:flutter/material.dart';
import 'package:second/screen8.dart';

class screen7 extends StatefulWidget {
  const screen7({super.key});

  @override
  State<screen7> createState() => _screen7State();
}

class _screen7State extends State<screen7> {
  bool isClicked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 70,left:85),
            child: Text(
              'How you’ll log in',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1F1F1F),
                fontSize: 35,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.06,
              ),
            ),
          ),Padding(
            padding:  EdgeInsets.only(top: 5,left: 40),
            child: SizedBox(
              width: 284,
              child: Text(
                'Make sure you keep it as secure as possible!',
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

          SizedBox(height: 140,) , Padding(
              padding:  EdgeInsets.only(left: 30,right: 30),
              child: TextFormField(decoration: InputDecoration(
                  labelText: "Mobail Number",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),

                  ),errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              )

              )
              ),
            ),SizedBox(height: 40,), Padding(
              padding:  EdgeInsets.only(right: 30,left: 30),
              child: TextFormField(decoration: InputDecoration(
                  labelText: "passwred",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),

                  ),errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              )

              )
              ),
            ),Padding(
              padding:  EdgeInsets.only(top: 90,left: 15),
              child: TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen8()));},
                child: Container(child:SizedBox(
                  width: 121,
                  height: 22,
                  child: Center(
                    child: Text(
                      'Proceed',
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
                  color: Color(0xFFFF5194),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                          ),
              ),
            ), Row(
              children: [
                Checkbox(
                value: isClicked,
                onChanged: ( value) {
                    setState(() {
                      isClicked=!isClicked;
                    });
                },
                          ),Padding(
                            padding:  EdgeInsets.only(top: 15),
                            child: SizedBox(
                                              width: 270,
                                              height: 17,
                                              child: Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                            text: 'I agree to the ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.16,
                              letterSpacing: 0.03,
                            ),
                                                    ),
                                                    TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(
                              color: Color(0xFFFF0083),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.16,
                              letterSpacing: 0.03,
                            ),
                                                    ),
                                                    TextSpan(
                            text: ' and ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.16,
                              letterSpacing: 0.03,
                            ),
                                                    ),
                                                    TextSpan(
                            text: 'Policy.',
                            style: TextStyle(
                              color: Color(0xFFFF0083),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.16,
                              letterSpacing: 0.03,
                            ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                          )
              ],
            ),
        ],
      ),
    );
  }
}
