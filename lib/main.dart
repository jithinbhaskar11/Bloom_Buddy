import 'package:bloom_buddy/model/plantmodel.dart';
import 'package:bloom_buddy/view/1_splash_screen/splash_screen.dart';
import 'package:bloom_buddy/view/8_plant_care_details_screen/plant_care_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

Future <void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(PlantModelAdapter());
  var box = await Hive.openBox('plantBox');




  runApp(BloomBuddy());
}
class BloomBuddy extends StatelessWidget {
  const BloomBuddy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_Page(),
      routes: {
        'details':(context)=>PlantCare_Details()
      },
    );
  }
}
