import 'package:bloom_buddy/view/5_home_screen/home_screen.dart';
import 'package:flutter/material.dart';
void main(){runApp(MaterialApp(home: Account_Screen(),));}

class Account_Screen extends StatefulWidget {
  const Account_Screen({super.key});

  @override
  State<Account_Screen> createState() => _Account_ScreenState();
}

class _Account_ScreenState extends State<Account_Screen> {
  var titles=[
    'Account',
    'Help and feedback',
    'Log out'
  ];
  var leading=[
    Icons.account_circle_rounded,
    Icons.help,
    Icons.logout
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (ctx,index){
        return ListTile(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_Screen())),
          leading: Icon(leading[index]),
          title: Text(titles[index]),
        );
      }),
    );
  }
}
