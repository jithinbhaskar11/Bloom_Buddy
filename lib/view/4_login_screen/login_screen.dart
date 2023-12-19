import 'package:bloom_buddy/view/3_register_screen/register_screen.dart';
import 'package:bloom_buddy/view/5_home_screen/bottom_nav_bar.dart';
import 'package:bloom_buddy/view/5_home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login_screen extends StatelessWidget {
  const Login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/plant bg.jpeg'),fit:BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Good to see you back! Get ready to dive into plant care with our vibrant features.",
                style: GoogleFonts.nunito(color: Colors.white,fontSize: 20,shadows: [Shadow(color: Colors.black,offset: Offset(2, 2),blurRadius: 5)]),textAlign: TextAlign.center,),
              SizedBox(height: 20,),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: 'Enter your email here',labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: 'Enter your password',labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                shape: StadiumBorder(),
                height:50,
                minWidth: 350,
                color: Colors.green.withOpacity(0.7),
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BnBar()));
                },
                child: Text('Log In',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Register_Screen()));
              }
                  , child: Text('New here? Click here to sign up',style: TextStyle(color: Colors.blue),))
            ],
          ),
        ),
      ),
    );
  }
}
