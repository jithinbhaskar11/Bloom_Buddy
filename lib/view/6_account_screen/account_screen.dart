import 'package:bloom_buddy/view/10_support_screen/support_screen.dart';
import 'package:bloom_buddy/view/11_privacy_policy/privacy_policy.dart';
import 'package:bloom_buddy/view/5_home_screen/home_screen.dart';
import 'package:bloom_buddy/view/9_terms_and_conditions/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){runApp(MaterialApp(home: Account_Screen(),));}

class Account_Screen extends StatefulWidget {
  const Account_Screen({super.key});

  @override
  State<Account_Screen> createState() => _Account_ScreenState();
}

class _Account_ScreenState extends State<Account_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text('More',style: GoogleFonts.nunito(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsAndConditions()));
            },
            leading: Icon(Icons.info,color: Colors.green,),
            title: Text('Terms and Conditions',style:GoogleFonts.nunito(color: Colors.green),),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Support_Screen()));
            },
            leading: Icon(Icons.mail,color: Colors.green,),
            title: Text('Support',style:GoogleFonts.nunito(color: Colors.green),),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyPolicy()));
            },
            leading: Icon(Icons.privacy_tip,color: Colors.green,),
            title: Text('Privacy policy',style:GoogleFonts.nunito(color: Colors.green),),
          ),
        ],
      ),
    );
  }
}
