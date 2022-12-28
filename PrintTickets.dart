// ignore_for_file: unused_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_widget/ticket_widget.dart';

// ignore: camel_case_types
class PrintTickets extends StatelessWidget {
  const PrintTickets({Key? key}) : super(key: key);
  
   get details => null;
  
   get title => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/Credit_Card_Page");
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
              
                  ),
              ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  
                ),
            ]
              ),
              Text(
                "Your Ticket".toUpperCase(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text("Thank your for purchase! \n save your ticket below" , 
              style: TextStyle(
                fontSize: 12,
                fontStyle: FontStyle.italic,
              )
              ),
              TicketWidget(
                width:  250,
                height: 480,
                isCornerRounded: true,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.yellow,
                              radius: 60,
                              
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 55,
                                backgroundImage: AssetImage('assets/images/adam'),
                              ),
                            ),
                            Text("Black Adam",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                              
                            ),
                            ),
                            Center(
                              child: Row(
                                children: [
                                  Center(
                                    child: Icon(Icons.location_city,
                                    color: Colors.grey,size: 18,),
                                  ),
                                  Center(
                                    child: Text("cairo fistival city",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.yellow,
                                    ), 
                                    ),
                                  ),
                                ],
                              ),

                            ),
                              Column(children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ticketDetails('time','8.30 pm'),
                                    ticketDetails('price','100EL'),
                                   
                                      
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ticketDetails('section','c-12'),
                                    ticketDetails('row',' 23'),
                                   
                                      
                                  ],
                                )
                              ],
                              ),
                              // Container(
                              //   height: 40,
                              //   width: 200,
                              //   color: Colors.black,
                              //   child: Image.asset('assets/images/barcode-g589633075_1280.png',fit: BoxFit.cover,),
                                
                                
                              // )
                          ],
                        ),
                      )
                      )
                  ],
                ),
                ),
                SizedBox(
                  height: 40,
                  width: 140,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),  
                    child: Text('save'),
                   ),
                ),
                SizedBox(
                  height:0 ,
                ),
                SizedBox(
                  height: 40,
                  width: 140,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 249, 43, 43),
                    ),  
                    child: Text('cancel ticket'),
                   ),
                ),
                SizedBox(
                  height:30 ,
                )
        ],
        
        ),
        ),
        );
        }
                                    
          
        
    

    }
    Widget ticketDetails(String title, String details) => Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: Container(
            height: 30,
            width: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              details,
              style: TextStyle(
                fontSize: 11,
                fontStyle: FontStyle.italic,
                color: Colors.red,
                fontWeight: FontWeight.w800,
              ),
              ),
              ),
        ),
      ]
            );
    