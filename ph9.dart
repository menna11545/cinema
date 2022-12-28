// ignore_for_file: prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class ph9 extends StatelessWidget {
  const ph9({Key? key}) : super(key: key);

  // get child => null;

  // get mainAxisAlignment => null;
  
  // get crossAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.7,

            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              image: DecorationImage(
              image:  AssetImage('assets/images/ph9.jpg'),
              fit: BoxFit.cover
            )
            ),

      ),
      Positioned(
        left: 30,
        top: 30 + MediaQuery.of(context).padding.top,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/movie");
          },

          child: ClipOval(
            child: Container(
              height: 42, width: 41,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.25),
                    offset: Offset(0,4),
                    blurRadius: 8
                  )
                ]
              ),
              child: Center(
                child:SvgPicture.asset('assets/icons/left_arrow_om8zlvtfhzxq.svg') 
              ),
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)
          ),
          child: Container(
            height:MediaQuery.of(context).size.height*.5 ,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.2),
                  offset: Offset(0,-4),
                  blurRadius: 8
                )
              ]
        
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Black Panther: Wakanda Forever",
                      style: GoogleFonts.ptSans(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ) ,
                      ),
                    ),
                    InkWell(
                      onTap:(){},
                      child: Image.asset('assets/images/heart_1acmg20kjjdp.ico')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30
                ),
                child: Row(
                  children: [
                  Text('20 Novamber 2022' ,
                  style: GoogleFonts.ptSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(width: 10,),
                  Text('100EGP',
                  style: GoogleFonts.ptSans(
                    fontSize: 20,
                  ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 30,
                  right: 30,
                  // bottom: 10
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 212, 106),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text('Suitable for all ages',
                  style: GoogleFonts.ptSans(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  ),
                ),
                 ),
                // Expanded(child:Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                // children: [
                //   Container(
                //     height: 49, width: 49,
                //     decoration: BoxDecoration(
                //       color:Color.fromRGBO(228, 228, 228, 1),
                //       borderRadius: BorderRadius.circular(10)
                //        ),
                //        child: Center(
                //         child: Text("-",
                //         style: GoogleFonts.ptSans(
                //           fontSize: 20,
                //           fontWeight: FontWeight.bold
                //         ) ,
                //         ),
                //        ),
                //   ),
                //   Container(
                //     height: 100, width: 49,
                //     decoration: BoxDecoration(
                //       color:Color.fromRGBO(228, 228, 228, 1),
                //       borderRadius: BorderRadius.circular(10)
                //        ),
                //        child: Center(
                //         child: Text("1",
                //         style: GoogleFonts.ptSans(
                //           fontSize: 20,
                //           fontWeight: FontWeight.bold
                //         ) ,
                //         ),
                //        ),
                //   ),
                //   Container(
                //     height: 49, width: 49,
                //     decoration: BoxDecoration(
                //       color:Color.fromRGBO(228, 228, 228, 1),
                //       borderRadius: BorderRadius.circular(10)
                //        ),
                //        child: Center(
                //         child: Text("+",
                //         style: GoogleFonts.ptSans(
                //           fontSize: 20,
                //           fontWeight: FontWeight.bold
                //         ) ,
                //         ),
                //        ),
                //   ),

                // ],) 
                
                // ),



                 Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 30,
                  right: 30,
                  // bottom: 20,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 103, 102, 98),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('6.2/10',
                  style: GoogleFonts.ptSans(
                    color: Colors.white,
                    fontSize: 17,)))),
                 Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                      height: 49, width: 49,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                      child: Text(
                        "-",
                        style: GoogleFonts.ptSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),)
                      )
                    ),
                    Container(
                      height: 49, width: 100,
                       child: Center(
                      child: Text(
                        "1",
                        style: GoogleFonts.ptSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),)
                      )
                    ),
                    Container(
                      height: 49, width: 49,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                      child: Text(
                        "+",
                        style: GoogleFonts.ptSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),)
                      )
                    ),

                  ]),
                 ),
                 Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.07),
                        offset: Offset(0,-3),
                        blurRadius: 12

                      )
                    ]

                  ),
                  child: Row(
                    children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('total',
                      style: GoogleFonts.ptSans(
                        fontSize: 14,
                        color: Colors.black,
                      ),),
                      Text('100EGP',
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),)
                    ],)
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/payment");
                          // ignore: avoid_print
                          print('click');
                        },
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                           decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10)
                           ),
                          child: Text('Buy ticket',
                          style: GoogleFonts.ptSans(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                          ),
                      
                        ),
                      ),
                    )
                  ]),
                 )
            ]),
          ),
        ),
      )
  
      ]
      ));
  }}