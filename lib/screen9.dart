import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:second/screen10.dart';

class screen9 extends StatefulWidget {
  const screen9({super.key});

  @override
  State<screen9> createState() => _screen9State();
}

class _screen9State extends State<screen9> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 50),
            child: SizedBox(
              width: 153,
              height: 32,
              child: Text(
                'Good afternoon,',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 60),
            child: SizedBox(
              width: 153,
              height: 32,
              child: Text(
                'Jacquie!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  width: 327,
                  height: 138,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              'Loan Limit',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '\$10,000.00',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0.09,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0.09,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 100, top: 10),
                            child: Text(
                              'Request for \$5,500.00',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: LinearPercentIndicator(
                          width: 300.0,
                          lineHeight: 5.0,
                          percent: 0.5,
                          backgroundColor: Color(0xB2BFBFBF),
                          progressColor: Colors.black,
                          barRadius: Radius.circular(30),
                          widgetIndicator: CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: SizedBox(
                            width: 80, child: Image.asset('assets/f.png')),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 268),
                child: SizedBox(width: 80, child: Image.asset('assets/g.png')),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100, left: 200),
                child: Text(
                  'Request for Loan',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 85, left: 280),
                child: CircleAvatar(
                    backgroundColor: Colors.pink,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 230),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'How do you want to use your limit?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.04,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (builder) {
                                  return Container(
                                    height: 350.0, width: 500,
                                    color: Colors.transparent,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 30),
                                          child: Text(
                                            'How long do you want the loan for?',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 0.08,
                                              letterSpacing: 0.04,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 30),
                                          child: SizedBox(
                                            width: 300,
                                            height: 24,
                                            child: Text(
                                              '2 Months',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF1F1F1F),
                                                fontSize: 30,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 25, left: 20),
                                          child: LinearPercentIndicator(
                                            width: 300.0,
                                            lineHeight: 10.0,
                                            percent: 0.2,
                                            backgroundColor: Color(0xffFFD6E7),
                                            progressColor: Colors.pink,
                                            barRadius: Radius.circular(30),
                                            widgetIndicator: CircleAvatar(
                                              radius: 8,
                                              backgroundColor: Colors.pink,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 15),
                                          child: Container(
                                            child: Column(children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 56,
                                                    height: 35,
                                                    child: Text(
                                                      'Monthly \nPayment',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 10,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.03,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 50,
                                                  ),
                                                  SizedBox(
                                                    width: 56,
                                                    height: 35,
                                                    child: Text(
                                                      'No of\nPayments',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 10,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.03,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 60,
                                                  ),
                                                  SizedBox(
                                                    width: 56,
                                                    height: 35,
                                                    child: Text(
                                                      'Total Payback',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 10,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.03,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 77,
                                                    height: 24,
                                                    child: Text(
                                                      'NIL',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFC4C4C4),
                                                        fontSize: 20,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  SizedBox(
                                                    width: 77,
                                                    height: 24,
                                                    child: Text(
                                                      'NIL',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFC4C4C4),
                                                        fontSize: 20,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 50,
                                                  ),
                                                  SizedBox(
                                                    width: 77,
                                                    height: 24,
                                                    child: Text(
                                                      'NIL',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFC4C4C4),
                                                        fontSize: 20,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                            width: 315,
                                            height: 88,
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shadows: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 5,
                                                  blurRadius: 7,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 25, top: 10),
                                              child: Checkbox(
                                                value: isClicked,
                                                onChanged: (value) {
                                                  setState(() {
                                                    isClicked = !isClicked;
                                                  });
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 15, left: 25),
                                              child: SizedBox(
                                                width: 260,
                                                height: 17,
                                                child: Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'I agree to the ',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 17,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing: 0.03,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            'Terms & Conditions',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFFF0083),
                                                          fontSize: 17,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing: 0.03,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: ' and ',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 17,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing: 0.03,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: 'Policy.',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFFF0083),
                                                          fontSize: 17,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
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
                                        TextButton(
                                          onPressed: () {
                                            showModalBottomSheet(isScrollControlled: true,
                                                context: context,
                                                builder: (builder) {
                                                  return Container(child: Column(children: [
                                                    Padding(
                                                      padding:  EdgeInsets.only(top: 15),
                                                      child: Text(
                                                        'That was way to easy!',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                          fontFamily: 'Poppins',
                                                          fontWeight: FontWeight.w600,
                                                          letterSpacing: 0.04,
                                                        ),
                                                      ),
                                                    ),Padding(
                                                      padding: EdgeInsets.only(top: 20),
                                                      child: SizedBox(
                                                        width: 293,
                                                        height: 62,
                                                        child: Text(
                                                          'Congratulations!',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                            color: Color(0xFF1F1F1F),
                                                            fontSize: 30,
                                                            fontFamily: 'Poppins',
                                                            fontWeight: FontWeight.w700,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),CircleAvatar(radius: 30,backgroundColor: Colors.black12,child: Icon(Icons.done,color:Color(0xFF6CD12E) ,),)
                                                    ,Padding(
                                                      padding: EdgeInsets.only(top: 10),
                                                      child: SizedBox(
                                                        width: 293,
                                                        height: 62,
                                                        child: Text(
                                                          'Transaction Summary',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                            color: Color(0xFF1F1F1F),
                                                            fontSize: 20,
                                                            fontFamily: 'Poppins',
                                                            fontWeight: FontWeight.w700,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),SizedBox(width:30 ,),
                                                    Row(
                                                      children: [
                                                        Column(children: [
                                                          Padding(
                                                            padding: EdgeInsets.only(left: 70),
                                                            child: Container(
                                                              width: 149.64,
                                                              height: 144.48,
                                                              child: Column(
                                                                mainAxisSize: MainAxisSize.min,
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  SizedBox(
                                                                    width: 147,
                                                                    child: Text(
                                                                      'Next Repayment Date:',
                                                                      style: TextStyle(
                                                                        color: Color(0xFF7F8790),
                                                                        fontSize: 12,
                                                                        fontFamily: 'Poppins',
                                                                        fontWeight: FontWeight.w300,

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(height: 6.30),
                                                                  SizedBox(
                                                                    width: 147,
                                                                    child: Text(
                                                                      'Interest Rate:',
                                                                      style: TextStyle(
                                                                        color: Color(0xFF7F8790),
                                                                        fontSize: 12,
                                                                        fontFamily: 'Poppins',
                                                                        fontWeight: FontWeight.w300,

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(height: 6.30),
                                                                  SizedBox(
                                                                    width: 147,
                                                                    child: Text(
                                                                      'Monthly Repayment:',
                                                                      style: TextStyle(
                                                                        color: Color(0xFF7F8790),
                                                                        fontSize: 12,
                                                                        fontFamily: 'Poppins',
                                                                        fontWeight: FontWeight.w300,

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(height: 6.30),
                                                                  SizedBox(
                                                                    width: 147,
                                                                    child: Text(
                                                                      'No of Payments:',
                                                                      style: TextStyle(
                                                                        color: Color(0xFF7F8790),
                                                                        fontSize: 12,
                                                                        fontFamily: 'Poppins',
                                                                        fontWeight: FontWeight.w300,

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(height: 6.30),
                                                                  SizedBox(
                                                                    width: 147,
                                                                    child: Text(
                                                                      'Reason:',
                                                                      style: TextStyle(
                                                                        color: Color(0xFF7F8790),
                                                                        fontSize: 12,
                                                                        fontFamily: 'Poppins',
                                                                        fontWeight: FontWeight.w300,

                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(height: 6.30),
                                                                  SizedBox(
                                                                    width: 147,
                                                                    child: Text(
                                                                      'Total Payback Amount:',
                                                                      style: TextStyle(
                                                                        color: Color(0xFF7F8790),
                                                                        fontSize: 12,
                                                                        fontFamily: 'Poppins',
                                                                        fontWeight: FontWeight.w300,

                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        ],),Container(
                                                          width: 85.51,
                                                          height: 144.48,
                                                          child: Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              SizedBox(
                                                                width: 147,
                                                                child: Text(
                                                                  '02/04/2023',
                                                                  textAlign: TextAlign.right,
                                                                  style: TextStyle(
                                                                    color: Color(0xFF080808),
                                                                    fontSize: 12,
                                                                    fontFamily: 'Poppins',
                                                                    fontWeight: FontWeight.w300,

                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(height: 6.30),
                                                              SizedBox(
                                                                width: 147,
                                                                child: Text(
                                                                  '10 %',
                                                                  textAlign: TextAlign.right,
                                                                  style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 12,
                                                                    fontFamily: 'Poppins',
                                                                    fontWeight: FontWeight.w300,

                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(height: 6.30),
                                                              SizedBox(
                                                                width: 147,
                                                                child: Text(
                                                                  '\$5,000.00',
                                                                  textAlign: TextAlign.right,
                                                                  style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 12,
                                                                    fontFamily: 'Poppins',
                                                                    fontWeight: FontWeight.w300,

                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(height: 6.30),
                                                              SizedBox(
                                                                width: 147,
                                                                child: Text(
                                                                  '2',
                                                                  textAlign: TextAlign.right,
                                                                  style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 12,
                                                                    fontFamily: 'Poppins',
                                                                    fontWeight: FontWeight.w300,

                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(height: 6.30),
                                                              SizedBox(
                                                                width: 147,
                                                                child: Text(
                                                                  'Emergency Bills',
                                                                  textAlign: TextAlign.right,
                                                                  style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 12,
                                                                    fontFamily: 'Poppins',
                                                                    fontWeight: FontWeight.w300,

                                                                  ),
                                                                ),
                                                              ),
                                                              const SizedBox(height: 6.30),
                                                              SizedBox(
                                                                width: 147,
                                                                child: Text(
                                                                  '\$ 10,050.00',
                                                                  textAlign: TextAlign.right,
                                                                  style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 12,
                                                                    fontFamily: 'Poppins',
                                                                    fontWeight: FontWeight.w300,

                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),Padding(
                                                      padding:  EdgeInsets.only(top: 50),
                                                      child: TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen10()));},
                                                        child: Container(child: Padding(
                                                          padding:  EdgeInsets.only(top: 8),
                                                          child: Text(
                                                            'Accept',
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
                                                    ),Padding(
                                                      padding:  EdgeInsets.only(top: 50),
                                                      child: Container(child: Padding(
                                                        padding:  EdgeInsets.only(top: 8),
                                                        child: Text(
                                                          'Decline',
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
                                                        width: 316,
                                                        height: 45.28,
                                                        decoration: ShapeDecoration(
                                                          color: Color(0xFF0C0C0C),
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(30),
                                                          ),
                                                        ),
                                                      ),
                                                    )

                                                  ],),
                                                    height: 650,
                                                    width: 500,
                                                    color: Colors.transparent,
                                                  );
                                                });
                                          },
                                          child: Container(
                                            child: SizedBox(
                                              width: 113,
                                              height: 21,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8),
                                                child: Text(
                                                  'Apply Now',
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
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ), //could change this to Color(0xFF737373),
                                    //so you don't have to change MaterialApp canvasColor
                                  );
                                });
                          },
                          child: Container(
                            width: 315,
                            height: 69,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shadows: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  width: 360,
                  height: 399,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 290, left: 50),
                child: SizedBox(width: 40, child: Image.asset('assets/h.png')),
              ),
              Padding(
                padding: EdgeInsets.only(top: 300, left: 100),
                child: Text(
                  'Emergency Bills',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.04,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 360, left: 20),
                child: Container(
                  width: 315,
                  height: 69,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 375, left: 50),
                child: SizedBox(width: 40, child: Image.asset('assets/h.png')),
              ),
              Padding(
                padding: EdgeInsets.only(top: 390, left: 100),
                child: Text(
                  'Food and Shopping',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: 0.04,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 440, left: 20),
                child: Container(
                  width: 315,
                  height: 69,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 470, left: 100),
                child: Text(
                  'Others',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: 0.04,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 450, left: 50),
                child: SizedBox(width: 40, child: Image.asset('assets/h.png')),
              ),
              Padding(
                padding: EdgeInsets.only(top: 300, left: 280),
                child: Icon(Icons.navigate_next),
              ),
              Padding(
                padding: EdgeInsets.only(top: 380, left: 280),
                child: Icon(Icons.navigate_next),
              ),
              Padding(
                padding: EdgeInsets.only(top: 460, left: 280),
                child: Icon(Icons.navigate_next),
              ),
              Padding(
                padding: EdgeInsets.only(top: 580, left: 20),
                child: SizedBox(width: 30, child: Image.asset('assets/i.png')),
              ),
              Padding(
                padding: EdgeInsets.only(top: 580, left: 120),
                child:
                    SizedBox(width: 30, height: 40, child: Icon(Icons.wallet)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 580, left: 220),
                child: SizedBox(width: 30, child: Image.asset('assets/j.png')),
              ),
              Padding(
                padding: EdgeInsets.only(top: 590, left: 300),
                child: Icon(Icons.category),
              )
            ],
          )
        ],
      ),
    );
  }
}
