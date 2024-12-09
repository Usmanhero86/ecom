import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            //   logo
             Padding(
               padding: const EdgeInsets.all(25.0),
               child: Image.asset("lib/images/whites.jpg",
               height: 150,
                 width: 120,
               ),
             ),
            const SizedBox(height: 40),
            //   title
              const Text("Just Do It",
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20,
              ),
              ),
            const SizedBox(height: 24,),
            //   sub title
              const Text("Brand New Sneakers and custom kicks with premuim quality",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24,),
            //   start now button
GestureDetector(
  onTap:()=> Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> const HomePage(),
      ),
  ),
  child: Container(
    decoration: BoxDecoration(
        color: Colors.black,
      borderRadius: BorderRadius.circular(20),
    ),
  
    child:const  Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Text("Shop Now",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        ),
      ),
    ),
  ),
)
            ],
          ),
        ),
      ),
    );
  }
}
