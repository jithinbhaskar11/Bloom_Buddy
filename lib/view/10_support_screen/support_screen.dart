import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Support_Screen extends StatelessWidget {
  const Support_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Support',style: GoogleFonts.nunito(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          height: 200,
          decoration: BoxDecoration(
            color: Colors.lime[50],
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mail,color: Colors.green,),
              SizedBox(height: 30,),
              Text('Contact Information',style: GoogleFonts.nunito(fontWeight:FontWeight.bold ),),
              Text('jithinbhskar11@gmail.com')
            ],
          ),
        ),
      ),
    );
  }
}
