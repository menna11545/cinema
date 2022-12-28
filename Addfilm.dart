// ignore_for_file: unused_import, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Addfilm extends StatelessWidget {
  const Addfilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/download.png'),
              fit: BoxFit.cover,
            )),
            // color: Color.fromARGB(255, 255, 255, 255),
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    left: 30,
                    top: 30 + MediaQuery.of(context).padding.top,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/AdminHome");
                      },
                      child: ClipOval(
                        child: Container(
                          height: 42,
                          width: 41,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 144, 143, 136),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 255, 249, 249)
                                        .withOpacity(.25),
                                    offset: Offset(0, 4),
                                    blurRadius: 8)
                              ]),
                          child: Center(
                              child: SvgPicture.asset(
                                  'assets/icons/left_arrow_om8zlvtfhzxq.svg')),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Hi admin you can add movies now",
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: "myfont",
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        SizedBox(
                          height: 50,
                        
                        ),
                        // SvgPicture.asset(
                        //   "assets/icons/cinema2.svg",
                        //   height: 266,
                        // ),
                        SizedBox(
                          height: 0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 212, 94),
                            borderRadius: BorderRadius.circular(66),
                          ),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.photo_size_select_large_rounded,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                hintText: "movie picture :",
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 212, 94),
                            borderRadius: BorderRadius.circular(66),
                          ),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.camera,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                hintText: "movie name :",
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 212, 94),
                            borderRadius: BorderRadius.circular(66),
                          ),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.price_change,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                hintText: "movie price :",
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 212, 94),
                            borderRadius: BorderRadius.circular(66),
                          ),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.description,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                hintText: "movie description:",
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 212, 94),
                            borderRadius: BorderRadius.circular(66),
                          ),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.rate_review_sharp,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                hintText: "movie rate :",
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 212, 94),
                            borderRadius: BorderRadius.circular(66),
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
                                  Icons.category_rounded,
                                  color: Color.fromARGB(255, 1, 1, 1),
                                  size: 19,
                                ),
                                hintText: "category :",
                                fillColor: Colors.white,
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 228, 212, 94),
                            borderRadius: BorderRadius.circular(66),
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
                                  Icons.location_city,
                                  color: Color.fromARGB(255, 1, 1, 1),
                                  size: 19,
                                ),
                                hintText: "cinema location :",
                                fillColor: Colors.white,
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 158, 157, 147)),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal: 90, vertical: 12)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27))),
                          ),
                          child: Text(
                            "Add movie",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        //  ElevatedButton(
                        //   onPressed: () {},
                        //   style: ButtonStyle(
                        //     backgroundColor: MaterialStateProperty.all(
                        //         Color.fromARGB(255, 158, 157, 147)),
                        //     padding: MaterialStateProperty.all(
                        //         EdgeInsets.symmetric(
                        //             horizontal: 90, vertical: 12)),
                        //     shape: MaterialStateProperty.all(
                        //         RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.circular(27))),
                        //   ),
                        //   child: Text(
                        //     "Delete film",
                        //     style: TextStyle(fontSize: 24),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 33,
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Text(
                        //       "Already have an accout? ",
                        //       style: TextStyle(color: Colors.white),
                        //     ),
                        //     GestureDetector(
                        //       onTap: () {
                        //         Navigator.pushNamed(context, "/login");
                        //       },
                        //       child: Text(
                        //         " Log in",
                        //         style: TextStyle(
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.white),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // SizedBox(
                        //   height: 17,
                        // ),
                        // SizedBox(
                        //   width: 299,
                        //   child: Row(
                        //     children: [
                        //       Expanded(
                        //           child: Divider(
                        //         thickness: 0.6,
                        //         color: Color.fromARGB(255, 255, 255, 255),
                        //       )),
                        //       Text(
                        //         "OR",
                        //         style: TextStyle(
                        //           color: Color.fromARGB(255, 255, 255, 255),
                        //         ),
                        //       ),
                        //       Expanded(
                        //           child: Divider(
                        //         thickness: 0.6,
                        //         color: Color.fromARGB(255, 255, 255, 255),
                        //       )),
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   margin: EdgeInsets.symmetric(vertical: 27),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       GestureDetector(
                        //         onTap: () {},
                        //         child: Container(
                        //           padding: EdgeInsets.all(13),
                        //           decoration: BoxDecoration(
                        //               shape: BoxShape.circle,
                        //               border: Border.all(
                        //                   color: Color.fromARGB(
                        //                       255, 255, 255, 255),
                        //                   width: 1)),
                        //           child: SvgPicture.asset(
                        //             "assets/icons/facebook.svg",
                        //             color: Color.fromARGB(255, 255, 255, 255),
                        //             height: 27,
                        //           ),
                        //         ),
                        //       ),
                        //       SizedBox(
                        //         width: 22,
                        //       ),
                        //       GestureDetector(
                        //         onTap: () {},
                        //         child: Container(
                        //           padding: EdgeInsets.all(13),
                        //           decoration: BoxDecoration(
                        //               shape: BoxShape.circle,
                        //               border: Border.all(
                        //                   color: Color.fromARGB(
                        //                       255, 255, 255, 255),
                        //                   width: 1)),
                        //           child: SvgPicture.asset(
                        //             "assets/icons/google-plus.svg",
                        //             color: Color.fromARGB(255, 251, 251, 251),
                        //             height: 27,
                        //             width: 55,
                        //           ),
                        //         ),
                        //       ),
                        //       SizedBox(
                        //         width: 22,
                        //       ),
                        //       GestureDetector(
                        //         onTap: () {},
                        //         child: Container(
                        //           padding: EdgeInsets.all(13),
                        //           decoration: BoxDecoration(
                        //               shape: BoxShape.circle,
                        //               border: Border.all(
                        //                   color: Color.fromARGB(
                        //                       255, 195, 195, 195),
                        //                   width: 1)),
                        //           child: SvgPicture.asset(
                        //             "assets/icons/twitter.svg",
                        //             color: Color.fromARGB(255, 255, 255, 255),
                        //             height: 27,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
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
          ),
        ),
      )),
    );
  }
}
