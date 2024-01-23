import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Terms and Conditions', style: GoogleFonts.nunito(fontWeight: FontWeight.bold)),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1. Acceptance of Terms',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'By accessing or using the BloomBuddy mobile application, you agree to comply with and be bound by these terms and conditions. If you do not agree with any part of these terms, please do not use the App.',
                style: TextStyle(fontSize: 16),
              ),
              Divider(height: 30,),
              Text('2.Use of the app',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text('a. You must be at least 13 years old to use this App \n''b. You are responsible for maintaining the confidentiality of your account and password'),
              Divider(height: 30,),
              Text('3.User content',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text('a. Users may submit content, including but not limited to plant information, images, and comments \n'
               ' b. By submitting content, you grant BloomBuddy a non-exclusive, royalty-free, worldwide, perpetual, and irrevocable license to use, modify, publish, distribute, and sublicense the content.'),
              Divider(height: 30,),
              Text('4.Privacy',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text('a. BloomBuddy respects your privacy. Please refer to our Privacy Policy for information on how we collect, use, and disclose personal information.'),
              Divider(height: 30,),
              Text('5.Intellectual property',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text('a. The App and its original content, features, and functionality are owned by BloomBuddy and are protected by international copyright, trademark, patent, trade secret, and other intellectual property or proprietary rights laws.'),
              Divider(height: 30),
              Text('6.Disclaimer of warrenty',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text('a. The App is provided "as is" without warranties of any kind, either express or implied \n'
                'b. BloomBuddy does not warrant that the App will be error-free or uninterrupted, or that defects will be corrected.'),
              Divider(height: 30,),
              Text('7.Limitation of Liability',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text('a. In no event shall BloomBuddy be liable for any indirect, incidental, special, consequential, or punitive damages, or any loss of profits or revenues.'),
              Divider(height: 30,),
              Text('Changes to Terms',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text('a. BloomBuddy reserves the right to modify or replace these terms at any time. Your continued use of the App after any changes constitute acceptance of the new terms.'),
              Divider(height: 30,),
              Text('Governing Law',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text('a. These terms and conditions are governed by and construed in accordance with the laws of India.')
              


              ],
          ),
        ),
      ),
    );
  }
}
