import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:bloom_buddy/model/plantmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {


  final searchController = TextEditingController();
  var currentIndex = 0;

  final nameController = TextEditingController();
  final locationController = TextEditingController();
  final wateringDateController=TextEditingController();
  final fertilizingDateController=TextEditingController();




  var box = Hive.box<PlantModel>('plantBox');
  var myKeysList=[];

  @override
  void initState() {
    myKeysList=box.keys.toList();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Row(
            children: [
              Expanded(
                child: AnimSearchBar(
                  width: 400,
                  textController: searchController,
                  onSuffixTap: () {
                    setState(() {
                      searchController.clear();
                    });
                  },
                  onSubmitted: (String) {},
                  searchIconColor: Colors.green,
                  textFieldIconColor: Colors.green,
                ),
              ),
              Text(
                'Bloom Buddy',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              )
            ],
          ),
        ),
        backgroundColor: Colors.green[50],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (ctx, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.lime[50],
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: Offset(0, 0),
                                      blurRadius: 5)
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,fontSize: 20),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Location'),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 10),
                                            decoration: BoxDecoration(
                                                color: Colors.blue[100],
                                                border: Border.all(
                                                    color: Colors.blue),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.water_drop,
                                                  color: Colors.blue,
                                                ),
                                                Text(
                                                 // box.get(myKeysList)?.WateringDate ?? '',
                                                 'in 3 days',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10),

                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 10),
                                            decoration: BoxDecoration(
                                                color: Colors.brown[100],
                                                border: Border.all(
                                                    color: Colors.green),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.spa,
                                                  color: Colors.green,
                                                ),
                                                Text(
                                                  'in 3 days',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),

                                      ///buttons**************
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                showModalBottomSheet(
                                                  context: context,
                                                  builder: (context) =>
                                                      Container(
                                                    padding: EdgeInsets.all(20),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: Column(
                                                      children: [
                                                        ///name
                                                        TextField(
                                                          decoration:
                                                              InputDecoration(
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30),
                                                                  ),
                                                                  focusedBorder: OutlineInputBorder(
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .green),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30)),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .black),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30)),
                                                                  hintText:
                                                                      'Plants name',
                                                                  helperText:
                                                                      'example: my red rose'),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),

                                                        ///location
                                                        TextField(
                                                          decoration:
                                                              InputDecoration(
                                                                  border:
                                                                      OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            30),
                                                                  ),
                                                                  focusedBorder: OutlineInputBorder(
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .green),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30)),
                                                                  enabledBorder: OutlineInputBorder(
                                                                      borderSide: BorderSide(
                                                                          color: Colors
                                                                              .black),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30)),
                                                                  hintText:
                                                                      'Plants location',
                                                                  helperText:
                                                                      'example: balcony'),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),

                                                        ///water date
                                                        TextField(
                                                          readOnly: true,
                                                          decoration:
                                                              InputDecoration(
                                                            border:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                            ),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .green),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30)),
                                                            enabledBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30)),
                                                            hintText:
                                                                'Select next date to water your palnt',
                                                            suffixIcon:
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      ///calender date picker
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .calendar_month,
                                                                      color: Colors
                                                                          .green,
                                                                    )),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        ),

                                                        ///fertilizing date
                                                        TextField(
                                                          readOnly: true,
                                                          decoration:
                                                              InputDecoration(
                                                            border:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                            ),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .green),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30)),
                                                            enabledBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .black),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30)),
                                                            hintText:
                                                                'Select next date to Fertilize your palnt',
                                                            suffixIcon:
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      ///calender date picker
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .calendar_month,
                                                                      color: Colors
                                                                          .green,
                                                                    )),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),

                                                        ///camera
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            MaterialButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              child: Text(
                                                                'Cancel',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                              shape:
                                                                  StadiumBorder(),
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                            SizedBox(
                                                              width: 30,
                                                            ),
                                                            MaterialButton(
                                                              onPressed: () {},
                                                              child: Text(
                                                                'Save',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                              shape:
                                                                  StadiumBorder(),
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                              icon: Icon(Icons.edit)),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.delete))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                padding: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ///name
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(30)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30)),
                          hintText: 'Plants name',
                          helperText: 'example: my red rose'),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    ///location
                    TextField(
                      controller: locationController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(30)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(30)),
                          hintText: 'Plants location',
                          helperText: 'example: balcony'),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    ///water date
                    TextField(
                      controller: wateringDateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.circular(30)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(30)),
                        hintText: 'Select a date to water your plant',
                        suffixIcon: GestureDetector(
                            onTap: () async{
                              DateTime ? wateringDate= await showDatePicker(context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2030));
                              final dateFormat=DateFormat('dd-MM-yyyy').format(wateringDate!);
                              setState(() {
                                wateringDateController.text=dateFormat.toString();
                              });
                            },

                            child: Icon(
                              Icons.calendar_month,
                              color: Colors.green,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    ///fertilizing date
                    TextField(
                      controller: fertilizingDateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.circular(30)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(30)),

                        hintText: 'Select a date to fertilize your plant',
                        suffixIcon: GestureDetector(
                            onTap: () async{
                         DateTime ? fertilizingDate= await showDatePicker(context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2030));
                         final dateFormat=DateFormat('dd-MM-yyyy').format(fertilizingDate!);

                         setState(() {
                           fertilizingDateController.text=dateFormat.toString();
                         });
                            },
                            child: Icon(
                              Icons.calendar_month,
                              color: Colors.green,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: StadiumBorder(),
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),


                        SizedBox(
                          width: 10,
                        ),

                        ///save
                        MaterialButton(
                          onPressed: () {
                            box.add(PlantModel(PlantName: nameController.text, PlantLocation: locationController.text, WateringDate: wateringDateController.text, FertilizingDate: fertilizingDateController.text));
                            // myKeysList=box.keys.toList();
                            // setState(() {});
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: StadiumBorder(),
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          child: Icon(FontAwesomeIcons.tree),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
