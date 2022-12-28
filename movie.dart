// ignore_for_file: unnecessary_string_escapes

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class movie extends StatelessWidget {
  const movie({Key? key}) : super(key: key);

  // get child => null;

  // get mainAxisAlignment => null;

  // get crossAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 251, 228, 60),
        title: const Text("Movies",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
                color: Color.fromARGB(255, 255, 255, 255))),
        centerTitle: true,
        leading: IconButton(
          iconSize: 30, icon: const Icon(Icons.arrow_back), onPressed: () {
            Navigator.pushNamed(context, "/Welcome");
          },
          // Navigator.pushNamed(context, "/welcome");

          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        actions: [
           IconButton(
              iconSize: 30,
              icon: const Icon(Icons.search),
              onPressed: () {
                // Navigator.pushNamed(context, "/moviedetails");
              },
              color: const Color.fromARGB(255, 255, 255, 255)),
          IconButton(
              iconSize: 25,
              icon: const Icon(Icons.payment),
              onPressed: () {
                Navigator.pushNamed(context, "/payment");
              },
              color: const Color.fromARGB(255, 255, 255, 255)),
        ],
        elevation: 70,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.favorite),

        // onPressed: () {},
        // child: const Icon(size: 30, color: Color.fromARGB(255, 160, 16, 16) ,Icons.search,),
      ),
      body: ListView(children: [
        CarouselSlider(
          items: [
            InkWell(
               onTap: () {
                Navigator.pushNamed(context, "/ph5");
              },
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/ph5.jpg"),
                    fit: BoxFit.cover,
                    
                  ),
                ),
                
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/adam");
              },
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/adam"),
                    fit: BoxFit.cover,
                    
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                
                Navigator.pushNamed(context, "/ph2");
              
              },
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/ph2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                
                Navigator.pushNamed(context, "/bed");
              
              },
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/bed"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                
                Navigator.pushNamed(context, "/avatar");
              
              },
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/avatar"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/ph9");
              },
              child: Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/ph9.jpg"),
                    fit: BoxFit.cover,
                  
                  ),
                  
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 500.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.7,
            
          ),
        ),
      ]),
      
    );
  }
}
