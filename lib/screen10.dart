import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen10 extends StatefulWidget {
  const screen10({super.key});

  @override
  State<screen10> createState() => _screen10State();
}

class _screen10State extends State<screen10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 25),
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
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 327,
            height: 138,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 22,
                  top: -44.47,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-0.08),
                    child: Container(
                      width: 590,
                      height: 44.61,
                      child: Stack(),
                    ),
                  ),
                ),
                Positioned(
                  left: 206,
                  top: 90,
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Repay Loan',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0.12,
                          ),
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                                isScrollControlled: false,
                                context: context,
                                builder: (builder) {
                                  return SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 15, top: 15),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Repay Loan',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 210),
                                                child: SizedBox(
                                                    width: 30,
                                                    child: Image.asset(
                                                        'assets/k.png')),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        DefaultTabController(
                                          length: 2,
                                          child: Container(
                                            width: double.infinity,
                                            height: 500,
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.pink[50]),
                                                  child: TabBar(
                                                    indicator: BoxDecoration(
                                                      color: Colors.pink[400],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    labelColor: Colors.black,
                                                    dividerColor:
                                                        Colors.transparent,
                                                    indicatorSize:
                                                        TabBarIndicatorSize.tab,
                                                    // ignore: prefer_const_literals_to_create_immutables
                                                    tabs: [
                                                      Tab(
                                                          icon: Text(
                                                              "Full Repayment")),
                                                      Tab(
                                                          icon: Text(
                                                              "Partial Repayment")),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: TabBarView(children: [
                                                    SizedBox(
                                                      width: 313,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 10),
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              'Repay your loan today and take another one immediately.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF959595),
                                                                fontSize: 15,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                letterSpacing:
                                                                    0.40,
                                                              ),
                                                            ),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              180,
                                                                          top:
                                                                              30),
                                                                  child: Text(
                                                                    'You currently owe',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          16,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      letterSpacing:
                                                                          0.04,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text.rich(
                                                                  TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            '\$ ',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              14,
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          letterSpacing:
                                                                              0.04,
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            '10,050.00',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              24,
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          letterSpacing:
                                                                              0.07,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 100),
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  showModalBottomSheet(
                                                                      context:
                                                                          context,
                                                                      isScrollControlled:
                                                                          true,
                                                                      builder:
                                                                          (BuildContext
                                                                              context) {
                                                                        return SizedBox(
                                                                          width:
                                                                              500,
                                                                          height:
                                                                              600,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsets.only(top: 10),
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
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsets.only(top: 15),
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
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              CircleAvatar(
                                                                                radius: 35,
                                                                                backgroundColor: Colors.white60,
                                                                                child: Icon(
                                                                                  Icons.done,
                                                                                  color: Colors.green,
                                                                                  size: 50,
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: 293,
                                                                                height: 62,
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.only(top: 15),
                                                                                  child: Text(
                                                                                    'Transaction Summary',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: TextStyle(
                                                                                      color: Color(0xFF1F1F1F),
                                                                                      fontSize: 20,
                                                                                      fontFamily: 'Poppins',
                                                                                      fontWeight: FontWeight.w700,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: 293,
                                                                                height: 62,
                                                                                child: Text(
                                                                                  '\$ 10,050.00 ',
                                                                                  textAlign: TextAlign.center,
                                                                                  style: TextStyle(
                                                                                    color: Color(0xFF1F1F1F),
                                                                                    fontSize: 24,
                                                                                    fontFamily: 'Poppins',
                                                                                    fontWeight: FontWeight.w700,
                                                                                    height: 0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: 293,
                                                                                height: 62,
                                                                                child: Text(
                                                                                  'Your Loan has been fully\nPaid',
                                                                                  textAlign: TextAlign.center,
                                                                                  style: TextStyle(
                                                                                    color: Color(0xFF1F1F1F),
                                                                                    fontSize: 20,
                                                                                    fontFamily: 'Poppins',
                                                                                    fontWeight: FontWeight.w700,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsets.only(top: 30),
                                                                                child: Container(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.only(top: 10),
                                                                                    child: Text(
                                                                                      'Okay',
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
                                                                              )
                                                                            ],
                                                                          ),
                                                                        );
                                                                      });
                                                                },
                                                                child:
                                                                    Container(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                            top:
                                                                                10),
                                                                    child: Text(
                                                                      'Continue',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFFFFF2F2),
                                                                        fontSize:
                                                                            14.58,
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        letterSpacing:
                                                                            0.05,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  width: 194,
                                                                  height: 37.26,
                                                                  decoration:
                                                                      ShapeDecoration(
                                                                    color: Color(
                                                                        0xFFFF5194),
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      color: Colors.white,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 10,
                                                                    left: 10),
                                                            child: SizedBox(
                                                              width: 313,
                                                              child: Text(
                                                                'Repay your loan today and take another one immediately.',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFF959595),
                                                                  fontSize: 18,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  letterSpacing:
                                                                      0.40,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 40,
                                                                    left: 25),
                                                            child: SizedBox(
                                                              width: 300,
                                                              child: Column(
                                                                children: [
                                                                  TextFormField(
                                                                      decoration: InputDecoration(
                                                                          labelText: "Enter Amount",
                                                                          enabledBorder: OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(color: Colors.black54),
                                                                          ),
                                                                          focusedBorder: OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(color: Colors.blue),
                                                                          ),
                                                                          errorBorder: OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(color: Colors.red),
                                                                          )))
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 60,
                                                                    top: 60),
                                                            child: TextButton(
                                                              onPressed: () {
                                                                showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (builder) {
                                                                      return Container(height: 600,width: double.infinity,child: Column(children: [
                                                                        Padding(
                                                                          padding: EdgeInsets.only(top: 10),
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
                                                                          padding:  EdgeInsets.only(top: 15),
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
                                                                        ),  CircleAvatar(
                                                                          radius: 35,
                                                                          backgroundColor: Colors.white60,
                                                                          child: Icon(
                                                                            Icons.done,
                                                                            color: Colors.green,
                                                                            size: 50,
                                                                          ),
                                                                        ),Padding(
                                                                          padding: EdgeInsets.only(top: 10),
                                                                          child: SizedBox(
                                                                            width: 293,
                                                                            height: 62,
                                                                            child: Text(
                                                                              'Transaction Summary',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                color: Color(0xFF1F1F1F),
                                                                                fontSize: 20
                                                                                ,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w700,
                                                                                height: 0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),SizedBox(
                                                                          width: 293,
                                                                          height: 62,
                                                                          child: Text(
                                                                            '\$ 10,050.00 ',
                                                                            textAlign: TextAlign.center,
                                                                            style: TextStyle(
                                                                              color: Color(0xFF1F1F1F),
                                                                              fontSize: 28,
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w700,
                                                                              height: 0,
                                                                            ),
                                                                          ),
                                                                        ),SizedBox(
                                                                          width: 293,
                                                                          height: 62,
                                                                          child: Text(
                                                                            'Your Loan has been fully\nPaid',
                                                                            textAlign: TextAlign.center,
                                                                            style: TextStyle(
                                                                              color: Color(0xFF1F1F1F),
                                                                              fontSize: 20,
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w700,
                                                                              height: 0,
                                                                            ),
                                                                          ),
                                                                        ),Padding(
                                                                          padding:  EdgeInsets.only(top: 60),
                                                                          child: Container(child:Padding(
                                                                            padding:  EdgeInsets.only(top: 10),
                                                                            child: Text(
                                                                              'Okay',
                                                                              textAlign: TextAlign.center,
                                                                              style: TextStyle(
                                                                                color: Color(0xFFFFF2F2),
                                                                                fontSize: 17.72,
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w600,
                                                                                letterSpacing: 0.06,
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
                                                                        )
                                                                      ],),);
                                                                    });
                                                              },
                                                              child: Container(
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    top: 10,
                                                                  ),
                                                                  child: Text(
                                                                    'Continue',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFFFF2F2),
                                                                      fontSize:
                                                                          14.58,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      letterSpacing:
                                                                          0.05,
                                                                    ),
                                                                  ),
                                                                ),
                                                                width: 194,
                                                                height: 37.26,
                                                                decoration:
                                                                    ShapeDecoration(
                                                                  color: Color(
                                                                      0xFFFF5194),
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: ShapeDecoration(
                                color: Color(0xFFFF0083),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: -36,
                  top: 110,
                  child: Container(
                    width: 91,
                    height: 91,
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 245,
                  top: -9.44,
                  child: Container(
                    width: 100,
                    height: 93.11,
                    child: Stack(),
                  ),
                ),
                Positioned(
                  left: 12,
                  top: 9,
                  child: Container(
                    width: 305,
                    height: 77,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 287,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Loan Balance',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0.09,
                                ),
                              ),
                              Text(
                                '50%',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Stack(),
                              SizedBox(
                                  width: 30,
                                  height: 40,
                                  child: Image.asset('assets/g.png'))
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 287,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '\$3,000.00',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'of \$10,050.00',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '39 days left',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 287,
                          height: 4,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 287,
                                  height: 4,
                                  decoration: ShapeDecoration(
                                    color: Color(0xB2BFBFBF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 143.50,
                                  height: 4,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF242424),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 63),
            child: Container(
              child: Row(
                children: [
                  Container(
                    width: 327,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 5),
                                child: Text(
                                  'Transactions',
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 180,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  'See All',
                                  style: TextStyle(
                                    color: Color(0xFFFF0083),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              'Mini-Statement',
                              style: TextStyle(
                                color: Color(0xFF707070),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Container(
                              width: 327,
                              height: 48,
                              padding: const EdgeInsets.only(
                                  top: 5, left: 2, right: 12, bottom: 5),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 0.50,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Loan Disbursement',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              Text(
                                                '2022-09-12',
                                                style: TextStyle(
                                                  color: Color(0xFF707070),
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 125),
                                  Text(
                                    '\$10,050.00',
                                    style: TextStyle(
                                      color: Color(0xFF53D258),
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Container(
                              width: 327,
                              height: 48,
                              padding: const EdgeInsets.only(
                                  top: 5, left: 2, right: 12, bottom: 5),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Withdraw to Bank',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              Text(
                                                '2022-09-12',
                                                style: TextStyle(
                                                  color: Color(0xFF707070),
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 125),
                                  Text(
                                    '-\$10,050.00',
                                    style: TextStyle(
                                      color: Color(0xFFE25C5C),
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Container(
                              width: 327,
                              height: 48,
                              padding: const EdgeInsets.only(
                                  top: 5, left: 3, right: 12, bottom: 5),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Loan Repayment',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              Text(
                                                '2022-09-12',
                                                style: TextStyle(
                                                  color: Color(0xFF707070),
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 125),
                                  Text(
                                    '\$3,000.00',
                                    style: TextStyle(
                                      color: Color(0xFF53D258),
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Container(
                              width: 327,
                              height: 48,
                              padding: const EdgeInsets.only(
                                  top: 5, left: 3, right: 12, bottom: 5),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Loan Repayment Fees',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              Text(
                                                '2022-09-12',
                                                style: TextStyle(
                                                  color: Color(0xFF707070),
                                                  fontSize: 12,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 125),
                                  Text(
                                    '-\$32.00',
                                    style: TextStyle(
                                      color: Color(0xFFE25C5C),
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
                            padding: EdgeInsets.only(top: 80, left: 20),
                            child: Row(
                              children: [
                                SizedBox(
                                    width: 30,
                                    child: Image.asset('assets/i.png')),
                                Padding(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Row(
                                    children: [
                                      Icon(Icons.wallet),
                                      Padding(
                                        padding: EdgeInsets.only(left: 70),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                                width: 30,
                                                child: Image.asset(
                                                    'assets/j.png')),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 70),
                                              child: Icon(Icons.widgets),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              width: 360,
              height: 413,
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
        ],
      ),
    );
  }
}
