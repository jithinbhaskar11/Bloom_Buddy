import 'package:bloom_buddy/db/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantCare_Screen extends StatefulWidget {
  const PlantCare_Screen({super.key});

  @override
  State<PlantCare_Screen> createState() => _PlantCare_ScreenState();
}

class _PlantCare_ScreenState extends State<PlantCare_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Library',style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20),),
      ),
      body: ListView.builder(
          itemCount: dummyPlantData.length,
          itemBuilder: (ctx,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed('details',arguments: dummyPlantData[index]['id']);
            },
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lime[50],
                      image: DecorationImage(image: AssetImage(dummyPlantData[index]['img']),fit: BoxFit.cover)
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(dummyPlantData[index]['name'],style: GoogleFonts.nunito(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text(dummyPlantData[index]['type'],style: GoogleFonts.nunito(fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              )
            ),
          ),
        );
      }),
    );
  }
}
