import 'package:bloom_buddy/view/3_register_screen/register_screen.dart';
import 'package:bloom_buddy/view/4_login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login_Register extends StatelessWidget {
  const Login_Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/plant bg.jpeg'),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to BloomBuddy,  \n your personalized plant care companion!',
              style: GoogleFonts.nunito(color: Colors.white, fontSize: 20,shadows: [Shadow(color: Colors.black, offset: Offset(2, 2),blurRadius: 5)]),
                textAlign: TextAlign.center,),
              SizedBox(height: 50,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.5),
                  border: Border.all(color: Colors.white),
                  borderRadius:BorderRadius.circular(30)
                ),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Register_Screen()));
                  },
                  leading: Icon(Icons.app_registration,color: Colors.white),
                  title: Text('New here? Sign UP here!',style:GoogleFonts.nunito(color: Colors.white,fontWeight: FontWeight.bold),),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.5),
                    border: Border.all(color: Colors.white),
                    borderRadius:BorderRadius.circular(30)
                ),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_screen()));
                  },
                  leading: Icon(Icons.login,color: Colors.white,),
                  title: Text('Already a user? Sign In here!',style:GoogleFonts.nunito(fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
