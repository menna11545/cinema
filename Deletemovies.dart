// ignore_for_file: prefer_const_constructors, duplicate_ignore, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Deletemovies extends StatelessWidget {
  const Deletemovies({Key? key}) : super(key: key);

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
                        Navigator.pushNamed(context, "/Welcome");
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
                          "Hi admin you can delete movies now",
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: "myfont",
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        SizedBox(
                          height: 60,
                        
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
                                  Icons.link,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                hintText: "link movie page :",
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
                        
                        
                        
                        
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 158, 157, 147)),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 12)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27))),
                          ),
                          child: Text(
                            "Delete movie from slidershow",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 12,
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
                            "Delete movie",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        //  
                      ],
                    ),
                  ),
                  // Positioned(
                 
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