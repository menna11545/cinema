// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/blackcinema.jpeg'),
              fit: BoxFit.cover,
            )),
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 115,
                      ),

                      Text(
                        " Book your movie",
                        style: TextStyle(
                            fontSize: 33,
                            fontFamily: "assets/fonts/font1.ttf",
                            fontWeight: FontWeight.bold,
                            height: 5,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(
                        height: 70,
                      ),

                      // SvgPicture.asset("assets/icons/cinema2.svg", width: 288,),
                      SizedBox(
                        height: 0,
                      ),

                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, "/movie");
                      //   },
                      //   style: ButtonStyle(
                      //     backgroundColor: MaterialStateProperty.all(
                      //         Color.fromARGB(255, 251, 228, 60)),
                      //     padding: MaterialStateProperty.all(
                      //         EdgeInsets.symmetric(
                      //             horizontal: 85, vertical: 12)),
                      //     shape: MaterialStateProperty.all(
                      //         RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(27))),
                      //   ),
                      //   child: Text(
                      //     "Movies",
                      //     style: TextStyle(
                      //         fontSize: 27,
                      //         color: Color.fromARGB(255, 255, 255, 255)),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 22,
                      // ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 228, 212, 94)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 79, vertical: 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "login",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 228, 212, 94)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 74, vertical: 15)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "SIGNUP",
                          style: TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        
                      ),
                      SizedBox(
                        height: 25,
                      ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/adminlogin");
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 35, 35, 33)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 17, vertical: 5)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: Text(
                    "Admin login",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 25,
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
                //   child: Image.asset(
                //     "assets/images/main_bottom.png",
                //     width: 111,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
