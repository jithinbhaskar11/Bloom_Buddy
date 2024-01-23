import 'package:bloom_buddy/db/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantCare_Details extends StatefulWidget {
  const PlantCare_Details({super.key});

  @override
  State<PlantCare_Details> createState() => _PlantCare_DetailsState();
}

class _PlantCare_DetailsState extends State<PlantCare_Details> {
  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)?.settings.arguments;
    var plantData =
        dummyPlantData.firstWhere((plantData) => plantData['id'] == id);
    return Scaffold(
        backgroundColor: Colors.green[50],
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                offset: Offset(2,2),
                color: Colors.black.withOpacity(0.4),
                blurRadius: 5
              )],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                image: DecorationImage(
                    image: AssetImage(plantData['img']), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                plantData['name'],
                style:
                    GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ],
          ),
          Text(plantData['type'], style: GoogleFonts.nunito(fontSize: 20)),
          SizedBox(
            height: 20,
          ),
          Text(
            'Care recommendations',
            style:
                GoogleFonts.nunito(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Card(

                color: Colors.blue[50],
                elevation: 5,
                child: Column(
                  children: [
                    Icon(Icons.water_drop, color: Colors.blue),
                    SizedBox(height: 10,),
                    Text('Watering',style: GoogleFonts.nunito(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text('In every ${plantData['waterFrequency']} days',style: GoogleFonts.nunito(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Card(
                color: Colors.amber[50],
                elevation: 5,
                child: Column(
                  children: [
                    Icon(Icons.sunny, color: Colors.orange),
                    SizedBox(height: 10,),
                    Text('Sunlight',style: GoogleFonts.nunito(fontWeight: FontWeight.bold,color: Colors.orange),),
                    SizedBox(height: 10,),
                    Text(plantData['sunlightExposure'],style: GoogleFonts.nunito(fontWeight: FontWeight.bold,color: Colors.orange),)
                  ],
                ),
              ),
              Card(
                color: Colors.pink[50],
                elevation: 5,
                child: Column(
                  children: [
                    Icon(Icons.spa, color: Colors.green),
                    SizedBox(height: 10,),
                    Text('Fertilizing',style: GoogleFonts.nunito(fontWeight: FontWeight.bold,color: Colors.green),),
                    SizedBox(height: 10,),
                    Text(plantData['fertilizerType'],style: GoogleFonts.nunito(fontWeight: FontWeight.bold,color: Colors.green),)
                  ],
                ),
              )
            ],
          ),
        ]));
  }
}
