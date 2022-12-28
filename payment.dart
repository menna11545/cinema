// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class payment extends StatelessWidget {
  const payment({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 251, 228, 60),
            title: const Text("payment",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255))),
            centerTitle: true,
          ),
          body: Scaffold(
            body: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: duplicate_ignore
                      children: [
                        const SizedBox(
                          height: 80,
                        ),
                        const Text(
                          "payment options",
                          style: TextStyle(
                              fontSize: 45,
                              fontFamily: "myfont",
                              fontWeight: FontWeight.bold),
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(
                          height: 85,
                        ),
                        // SvgPicture.asset(
                        //   "assets/icons/cinema2.svg",
                        //   width: 288,
                        // ),
                        SizedBox(
                          height: 80,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/Credit_Card_Page");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 228, 212, 94),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            width: 266,
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 80),
                            child: Text(
                              'Credit Card',
                              style: GoogleFonts.ptSans(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),

                          // child: TextField(
                          // decoration: InputDecoration(
                          //     icon: Icon(

                          //       Icons.credit_card,
                          //       color: Color.fromARGB(255, 0, 0, 0),
                          //     ),
                          //     hintText: "debit/credit card ",
                          //     border: InputBorder.none),
                        ),

                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 212, 94),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.payments,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                hintText: "Internet banking ",
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 212, 94),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            obscureText: true,

                            decoration: InputDecoration(
                                suffix: Icon(
                                  Icons.visibility,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                icon: Icon(
                                  Icons.paypal,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  size: 24,
                                ),
                                hintText: " Pay ",
                                border: InputBorder.none),

                            // textAlign:TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 212, 94),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.attach_money,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                hintText: "cash ",
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 158, 157, 147)),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal: 100, vertical: 10)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                          ),
                          child: Text(
                            "add anthor option",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                      ],
                    ),
                  ),
                  // Positioned(
                  //   left: 0,
                  //   child: Image.asset(
                  //     "assets/images/main_top.png",
                  //     width: 111,
                  //   ),
                  // ),
                  // Positioned(
                  //   bottom: 0,
                  //   right: 0,
                  //   child: Image.asset(
                  //     "assets/images/login_bottom.png",
                  //     width: 111,
                  //   ),
                  // ),
                ],
              ),
            ),
          )),
    );
  }
}
