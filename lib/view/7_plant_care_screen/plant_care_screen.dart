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

        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              final selectedPlant = await showSearch(
                context: context,
                delegate: PlantSearchDelegate(dummyPlantData),
              );

              if (selectedPlant != null) {
                Navigator.of(context).pushNamed('details', arguments: selectedPlant['id']);
              }
            },
          ),
        ],
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
                borderRadius: BorderRadius.circular(30),
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

class PlantSearchDelegate extends SearchDelegate {
  final List<Map<String, dynamic>> plantData;

  PlantSearchDelegate(this.plantData);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            // If the search bar is empty, close the search bar
            close(context, null);
          } else {
            // If there is text in the search bar, clear the text
            query = '';
          }
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // to implement  search results page here
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? plantData
        : plantData.where((plant) => plant['name'].toLowerCase().contains(query.toLowerCase())).toList();

    final limitedSuggestions = suggestionList.take(6).toList();

    return limitedSuggestions.isEmpty
        ? Center(
      child: Text('No plant found'),
    )
        : ListView.builder(
      itemCount: limitedSuggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(limitedSuggestions[index]['name']),
          onTap: () {
            close(context, limitedSuggestions[index]);
          },
        );
      },
    );
  }
}

