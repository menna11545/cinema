// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/blackcinema.jpeg'),
                  fit: BoxFit.cover)),

          //  color: Color.fromARGB(255, 254, 254, 254),

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
                            color: Color.fromARGB(255, 144, 143, 136) ,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 0, 0, 0)
                                      .withOpacity(.19),
                                      
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: 45,
                            fontFamily: "myfont",
                            fontWeight: FontWeight.bold),
                      ),
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
                      // pos
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
                                Icons.person,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              hintText: "Your Email :",
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 8,
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
                                Icons.lock,
                                color: Color.fromARGB(255, 0, 0, 0),
                                size: 19,
                              ),
                              hintText: "Password :",
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 27,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/movie");
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 158, 157, 147)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 106, vertical: 10)),
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
                        height: 17,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an accout? "),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/signup");
                              },
                              child: Text(
                                " Sign up",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                        ],
                      )
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
      )),
    );
  }
}
