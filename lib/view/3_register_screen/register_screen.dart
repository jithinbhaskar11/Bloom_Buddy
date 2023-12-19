import 'package:bloom_buddy/view/4_login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Register_Screen extends StatelessWidget {
  const Register_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/plant bg.jpeg'),fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome BloomBuddy! Sign up for free and start nurturing your green buddies with us.",
                style: GoogleFonts.nunito(color: Colors.white,fontSize: 18,shadows: [Shadow(color: Colors.black,offset: Offset(2,2),blurRadius: 5)]),
                textAlign: TextAlign.center,
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
                    labelText: 'Confirm password',labelStyle: TextStyle(color: Colors.white)
                ),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                shape: StadiumBorder(),
                height:50,
                minWidth: 350,
                color: Colors.green.withOpacity(0.7),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_screen()));
                },
              child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_screen()));
              }
              , child: Text('Already have an account? Click here to Login',style: TextStyle(color: Colors.blue),))
            ],
          ),
        ),
      ),
    );
  }
}
