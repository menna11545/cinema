// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AdminHome extends StatelessWidget {
  static String id = 'AdminHome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/download.png'),
              fit: BoxFit.cover,
            )),
      // backgroundColor: Color.fromARGB(255, 164, 160, 160),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
          ),
          InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/Addfilm");
                          // ignore: avoid_print
                          print('click');
                        },
                        borderRadius: BorderRadius.circular(10),
                  child:Container(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                           decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10)
                           ),
                          child: Text('Add movies',
                          style: GoogleFonts.ptSans(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                          ),
                      
                        ),
          ),
                         SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/Apdatemovies");
                          // ignore: avoid_print
                          print('click');
                        },
                        borderRadius: BorderRadius.circular(10),
           child:Container(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                           decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10)
                           ),
                          child: Text('Update movies',
                          style: GoogleFonts.ptSans(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                          ),
                      
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/Deletemovies");
                          // ignore: avoid_print
                          print('click');
                        },
                        borderRadius: BorderRadius.circular(10),
         child:  Container(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                           decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10)
                           ),
                          child: Text('Delete movies',
                          style: GoogleFonts.ptSans(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                          ),
                      
                        ),),
                      SizedBox(
                        height: 15,
                      ),
          
        ],
      ),
      ));
  }
}