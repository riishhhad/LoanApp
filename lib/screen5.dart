
import 'package:flutter/material.dart';
import 'package:second/screen6.dart';

class screen5 extends StatefulWidget {
  const screen5({super.key});

  @override
  State<screen5> createState() => _screen5State();
}

class _screen5State extends State<screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 100,left: 30),
              child: SizedBox(width: 180,child: Image.asset('assets/e.png')),
            ),Padding(
              padding:  EdgeInsets.only(top: 100,left: 40),
              child: SizedBox(
                width: 307.14,
                height: 21.66,
                child: Text(
                  'Add your mobile number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21.66,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.06,
                  ),
                ),
              ),
            ),SizedBox(
              width: 323,
              height: 22,
              child: Text(
                'We’ll need to confirm it by sending a text.',
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
            Padding(
              padding: const EdgeInsets.all(20.0),
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
            ),Column(
              children: [
                TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen6()));},
                  child: Container(child:SizedBox(
                    width: 121,
                    height: 22,
                    child: Padding(
                      padding:  EdgeInsets.only(top: 10),
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
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}
