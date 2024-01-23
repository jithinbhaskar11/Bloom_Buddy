import 'package:bloom_buddy/view/4_login_screen/login_screen.dart';
import 'package:bloom_buddy/view/5_home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register_Screen extends StatefulWidget {
  const Register_Screen({super.key});

  @override
  State<Register_Screen> createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {

  final _formKey = GlobalKey<FormState>();

  final emailController=TextEditingController();
  final passController=TextEditingController();
  final cpassController=TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/plant bg.jpeg'),fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
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

                  controller: emailController,
                  validator: (email){
                    if(email==null || email.isEmpty){
                      return 'Please enter your email';
                    }else if(!email.contains('@')||!email.contains('.com')){
                      return 'Invalid email format';
                    }
                    return null;
                  },

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
                  controller: passController,
                  validator: (pass){
                    if (pass==null || pass.isEmpty){
                      return 'Please enter your password';
                    }else if(pass.length<6){
                      return 'Password must contain atleast 6 characters';
                    }
                    return null;
                  },
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
                  controller: cpassController,
                  validator: (cpass){
                    if (cpass== null || cpass.isEmpty){
                      return 'Please re enter your password';
                    }else if(cpass != passController.text){
                      return 'Passwords do not match!';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  shape: StadiumBorder(),
                  height:50,
                  minWidth: 350,
                  color: Colors.green.withOpacity(0.7),
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_screen()));
                    }
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
      ),
    );
  }
  void storedata() async {
    String email = emailController.text;
    String password = passController.text;
    String cpassword = cpassController.text;

    preferences = await SharedPreferences.getInstance();
    preferences.setString('email', email);
    preferences.setString('pass', password);
    preferences.setString('cpass', cpassword);

    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_screen()));
  }
}



