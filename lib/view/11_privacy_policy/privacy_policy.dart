import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Privacy Policy', style: GoogleFonts.nunito(fontWeight: FontWeight.bold)),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1. Information We Collect',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'BloomBuddy may collect the following types of information:\n\n'
                    '- Plant-related data, including names, locations, watering dates, and fertilizing dates.\n'
                    '- User-generated content, such as plant images and comments.\n'
                    '- Non-personal information related to app usage, including analytics and crash reports.',
                style: TextStyle(fontSize: 16),
              ),
              Divider(height: 30,),
              Text(
                '2. How We Use Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'The information collected is used for the following purposes:\n\n'
                    '- Managing and organizing plant-related data for users.\n'
                    '- Improving and optimizing the app\'s functionality and user experience.\n',
                style: TextStyle(fontSize: 16),
              ),
              Divider(height: 30,),
              Text(
                '3. Information Sharing and Disclosure',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'BloomBuddy does not share personal information with third parties. User-generated content may be publicly visible within the app.',
                style: TextStyle(fontSize: 16),
              ),
              Divider(height: 30,),
              Text(
                '4. Security',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'We prioritize the security of your information. However, no method of transmission over the internet or electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your personal information, we cannot guarantee its absolute security.',
                style: TextStyle(fontSize: 16),
              ),

              // Add more sections as needed...

              Text(
                'Last Updated: [16-01-2024]',
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


