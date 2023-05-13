

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../App_Manager/media_query_utils.dart';
import '../App_Manager/string_manager.dart';
import '../widgets/category_widgets.dart';
import '../widgets/crane_bottom_custom_container.dart';
import '../widgets/passenger_screen_clickable_containers.dart';


class PassengerScreen extends StatefulWidget {
  const PassengerScreen({Key? key}) : super(key: key);

  @override
  State<PassengerScreen> createState() => _PassengerScreenState();
}

int selectedIcon = 0;
class _PassengerScreenState extends State<PassengerScreen> {






  TextEditingController pickupController  = TextEditingController();
  TextEditingController destinationController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController instruction = TextEditingController();


  String iconValue = "car";



  void onIconClicked(int iconIndex) {
    setState(() {
      selectedIcon = iconIndex;
    });


  }
  //String values  for When Clicked on OutStation
String? selectedCarValue;

  String? selectVehicleTypeValue;

  String rideShareValue = "Entire Cabin";

  TextEditingController numberOfPassengerController = TextEditingController();

  //String values if Clicked on Parcel Icon

  String selectParcelCabin = "Key";
 TextEditingController parcelDescriptionController = TextEditingController();

 //image pickup function for parcel
  File? _image;

  Future<void> _getPracelImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: (iconValue == "outstation" && rideShareValue == "Ride Share")?
                Utils.getHeight(context)/0.90 :
                (iconValue == "outstation" && rideShareValue == "Entire Cabin")?
                Utils.getHeight(context)/0.98 :
                (iconValue== "parcel"&& selectParcelCabin == "Key" || iconValue== "parcel"&& selectParcelCabin == "Letter")?
                Utils.getHeight(context)/1.45:
                (iconValue== "parcel"&& selectParcelCabin == "Box" || iconValue== "parcel"&& selectParcelCabin == "Other")?
                Utils.getHeight(context)/1.1 :
                Utils.getHeight(context)/1.7,
                child: Stack(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: Utils.getHeight(context)/16),
                      child: Container(
                        height: Utils.getHeight(context)/0.95,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                    ClickableContainersRow(),
                    Padding(
                      padding: EdgeInsets.only(top: Utils.getHeight(context)/12.80),
                      child: Container(
                        color: Colors.white,
                        height: (iconValue =="bike" || iconValue =="car" || iconValue =="auto")?Utils.getHeight(context)/7.0:(iconValue =="parcel")?Utils.getHeight(context)/7.0:Utils.getHeight(context)/7,
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: Utils.getHeight(context)/50,left: Utils.getHeight(context)/50,right: Utils.getHeight(context)/50),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        onIconClicked(0);
                                        iconValue = "car";
                                        print(iconValue);
                                        setState(() {


                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border:selectedIcon == 0 ? Border.all(color: Colors.black):null,

                                        ),
                                          height: Utils.getHeight(context)/10,
                                          child: Image.asset("Images/passenger_icons/car.png",fit: BoxFit.cover,)
                                      ),
                                    ),
                                    SizedBox(width: Utils.getHeight(context)/50,),
                                    InkWell(

                                      onTap: (){
                                        onIconClicked(1);
                                        iconValue = "auto";
                                        print(iconValue);
                                        setState(() {

                                        });
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border:selectedIcon == 1 ? Border.all(color: Colors.black):null,

                                          ),
                                          height: Utils.getHeight(context)/10,
                                          child: Image.asset("Images/passenger_icons/auto.png")
                                      ),
                                    ),
                                    SizedBox(width: Utils.getHeight(context)/50,),
                                    InkWell(
                                      onTap: (){
                                        onIconClicked(2);
                                        iconValue = "bike";
                                        print(iconValue);
                                        setState(() {


                                        });
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border:selectedIcon == 2 ? Border.all(color: Colors.black):null,

                                          ),
                                          height: Utils.getHeight(context)/10,
                                          child: Image.asset("Images/passenger_icons/bike.png")
                                      ),
                                    ),
                                    SizedBox(width: Utils.getHeight(context)/50,),
                                    InkWell(
                                      onTap: (){
                                        onIconClicked(3);
                                        iconValue = "outstation";
                                        print(iconValue);
                                        setState(() {

                                        });
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: selectedIcon == 3 ? Border.all(color: Colors.black):null,

                                          ),
                                          height: Utils.getHeight(context)/10,
                                          child: Image.asset("Images/passenger_icons/outstation.png")
                                      ),
                                    ),
                                    SizedBox(width: Utils.getHeight(context)/50,),
                                    InkWell(
                                      onTap: (){
                                        onIconClicked(4);
                                        iconValue = "parcel";
                                        setState(() {


                                        });
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border:selectedIcon == 4 ? Border.all(color: Colors.black):null,

                                          ),
                                          height: Utils.getHeight(context)/10,
                                          child: Image.asset("Images/passenger_icons/parcel.png")
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        )
                      ),
                    ),
                    if(iconValue == "outstation")
                    Padding(
                      padding:  EdgeInsets.only(top: Utils.getWidth(context)/2.62),
                      child: Container(

                          height: Utils.getHeight(context)/10,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: ClickableContainersRowPassenger()
                      ),
                    ),
                 if(iconValue == "outstation")
                  Padding(
                    padding:  EdgeInsets.only(top: Utils.getWidth(context)/1.76),
                    child: Container(
                        color: Colors.white,
                        height: 70,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Cabin :",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      selectedCarValue = "AC";
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: selectedCarValue == "AC"? Colors.amber:Colors.blue,
                                    radius: 8,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text("AC",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400))
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      selectedCarValue = "Non Ac";
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: selectedCarValue == "Non Ac"? Colors.amber:Colors.blue,
                                    radius: 8,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text("Non AC",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400))
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      selectedCarValue = "Any";
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: selectedCarValue == "Any"? Colors.amber:Colors.blue,
                                    radius: 8,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text("Any",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400))
                              ],
                            ),

                          ],
                        )
                    ),
                  ),
                    if(iconValue == "parcel"&& selectParcelCabin == "Key" || iconValue == "parcel"&& selectParcelCabin == "Letter" ||iconValue == "parcel"&& selectParcelCabin == "Box" || iconValue == "parcel"&& selectParcelCabin == "Other" )//when user click on parcel
                      Padding(
                        padding:  EdgeInsets.only(top: Utils.getWidth(context)/2.6),
                        child: Container(
                            color: Colors.white,
                            height: 70,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Cabin :",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                                Row(
                                  children: [
                                  GestureDetector(
                                    onTap: (){
                                      selectParcelCabin = "Key";
                                      setState(() {


                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: selectParcelCabin == "Key"? Colors.grey:Colors.white,
                                      ),
                                      height: Utils.getHeight(context)/15,
                                      width: Utils.getHeight(context)/11,
                                      child: Center(child: Text("Key",style: TextStyle(fontSize: AppFontSize.s18),)),
                                    ),
                                  )
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        selectParcelCabin = "Letter";
                                        setState(() {


                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: selectParcelCabin == "Letter"? Colors.grey:Colors.white,
                                        ),
                                        height: Utils.getHeight(context)/15,
                                        width: Utils.getHeight(context)/11,
                                        child: Center(child: Text("Letter",style: TextStyle(fontSize: AppFontSize.s18))),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        selectParcelCabin = "Box";
                                        setState(() {




                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: selectParcelCabin == "Box"? Colors.grey:Colors.white,
                                        ),
                                        height: Utils.getHeight(context)/15,
                                        width: Utils.getHeight(context)/11,
                                        child: Center(child: Text("Box",style: TextStyle(fontSize: AppFontSize.s18))),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        selectParcelCabin = "Other";
                                        setState(() {



                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: selectParcelCabin == "Other"? Colors.grey:Colors.white,
                                        ),
                                        height: Utils.getHeight(context)/15,
                                        width: Utils.getHeight(context)/11,
                                        child: Center(child: Text("Other",style: TextStyle(fontSize: AppFontSize.s18))),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                        ),
                      ),
                    if(iconValue == "outstation")
                    Padding(
                      padding:  EdgeInsets.only(top: Utils.getWidth(context)/1.32),
                      child: Container(
                          color: Colors.white,
                          height: 60,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("vehicle type :",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),

                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectVehicleTypeValue = "Any";
                                  });
                                },
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      selectVehicleTypeValue = "Any";
                                    });
                                  },
                                    child: Text("Any",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: selectVehicleTypeValue == "Any"?Colors.deepOrange:Colors.black),)),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectVehicleTypeValue = "Micro";
                                  });
                                },
                                  child: Text("Micro",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: selectVehicleTypeValue == "Micro"?Colors.deepOrange:Colors.black),)),
                              GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      selectVehicleTypeValue = "Sedan";
                                    });
                                  },
                                  child: Text("Sedan",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: selectVehicleTypeValue == "Sedan"?Colors.deepOrange:Colors.black))),
                              GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      selectVehicleTypeValue = "SUV";
                                    });
                                  },
                                  child: Text("SUV",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: selectVehicleTypeValue == "SUV"?Colors.deepOrange:Colors.black))),
                              GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      selectVehicleTypeValue = "Luxury";
                                    });
                                  },
                                  child: Text("Luxury",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: selectVehicleTypeValue == "Luxury"?Colors.deepOrange:Colors.black),))
                            ],
                          )
                      ),
                    ),
                    if(iconValue == "parcel" && selectParcelCabin == "Box" || iconValue == "parcel" && selectParcelCabin == "Other")
                      Padding(
                        padding:  EdgeInsets.only(top: Utils.getWidth(context)/1.75),
                        child: Container(
                            color: Colors.white,
                            height: Utils.getHeight(context)/4.2,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Description :",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),

                                    Expanded(
                                      child: TextField(
                                        controller: parcelDescriptionController,
                                        decoration: InputDecoration(
                                          hintText: "Description Please",
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 5
                                            )
                                          )
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(height: Utils.getHeight(context)/25,),
                                Text(_image==null?"No Image Selected":"Image ready"),
                                ElevatedButton(onPressed: (){
                                  _getPracelImage();
                                }, child: Text("Please Upload Image"))
                              ],
                            )
                        ),
                      ),
                    if(iconValue =="outstation")
                    Padding(
                      padding:  EdgeInsets.only(top: Utils.getWidth(context)/1.08),
                      child: Container(
                          color: Colors.white,
                          height: 70,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: (){

                                  setState(() {
                                    rideShareValue = "Ride Share";
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black),
                                    color: rideShareValue == "Ride Share"? Colors.grey:Colors.white
                                  ),
                                  margin: EdgeInsets.all(4.0),
                                  height: Utils.getHeight(context)/14,
                                  width: Utils.getHeight(context)/7,
                                  child: Center(child: Text("Ride Share",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    rideShareValue = "Entire Cabin";
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black),
                                      color: rideShareValue == "Entire Cabin"? Colors.grey:Colors.white
                                  ),
                                  margin: EdgeInsets.all(4.0),
                                  height: Utils.getHeight(context)/14,
                                  width: Utils.getHeight(context)/6,
                                  child: Center(child: Text("Entire Cabin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

                                ),
                              ),
                              Center(child: Text("For Car Option Only",style: TextStyle(color: Colors.red),),)
                            ],
                          )
                      ),
                    ),
                    if(iconValue == "outstation" && rideShareValue == "Ride Share")
                    Padding(
                      padding:  EdgeInsets.only(top: Utils.getWidth(context)/0.90),
                      child: Container(
                          color: Colors.white,
                          height: 70,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(

                                  height: 50.0,
                                  width: 200.0,
                                  child: Center(child: Text("Numbers of Passenger :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

                                ),
                              ),


                              Expanded(
                                child: Center(child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller: numberOfPassengerController,
                                  decoration: InputDecoration(
                                    hintText: "Passenger Number",
                                    hintStyle: TextStyle(color: Colors.red),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,width: 5),

                                      )
                                    )
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                    if(iconValue == "outstation" || iconValue == "bike" || iconValue == "car" || iconValue == "auto" || rideShareValue =="Entire Cabin" || iconValue == "parcel")
                    Padding(
                      padding: (iconValue =="outstation" && rideShareValue == "Entire Cabin")?
                      EdgeInsets.only(top: Utils.getHeight(context)/1.5,bottom: Utils.getHeight(context)/99):
                      (iconValue =="outstation" && rideShareValue == "Ride Share")?
                      EdgeInsets.only(top: Utils.getHeight(context)/1.28,bottom: Utils.getHeight(context)/99):
                      (iconValue =="parcel" && selectParcelCabin == "Key" || iconValue =="parcel" && selectParcelCabin == "Letter" )?
                      EdgeInsets.only(top: Utils.getHeight(context)/2.9,bottom: Utils.getHeight(context)/99):
                      (iconValue =="parcel" && selectParcelCabin == "Box" || iconValue =="parcel" && selectParcelCabin == "Other" )?
                      EdgeInsets.only(top: Utils.getHeight(context)/1.7,bottom: Utils.getHeight(context)/99):
                      EdgeInsets.only(top: Utils.getHeight(context)/4.2,bottom: Utils.getHeight(context)/99),
                      child: Container(
                        color: Colors.white,
                        height: Utils.getHeight(context)/1,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                               Row(
                                 children: [
                                   Text("Pick up",style: TextStyle(fontSize: AppFontSize.s18, fontWeight: FontWeight.bold),),
                                 Expanded(
                                   child: TextFormField(
                                     controller: pickupController,
                                     decoration: InputDecoration(
                                       hintText: "Your Location",
                                       border: UnderlineInputBorder(
                                         borderSide: BorderSide(color: Colors.black,width: 5),
                                       )
                                     ),
                               ),
                                 )
                                 ],
                               ),
                              Row(
                                children: [
                                  Text("Destination",style: TextStyle(fontSize: AppFontSize.s18, fontWeight: FontWeight.bold),),
                                  Expanded(
                                    child: TextFormField(
                                      controller: destinationController,
                                      decoration: InputDecoration(
                                          hintText: "Your Destination",
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black,width: 5),
                                          )
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Your Price",style: TextStyle(fontSize: AppFontSize.s18, fontWeight: FontWeight.bold),),
                                  Expanded(
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: pickupController,
                                      decoration: InputDecoration(
                                          hintText: "optional",
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black,width: 5),
                                          )
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Instruction if Any*",style: TextStyle(fontSize: AppFontSize.s18, fontWeight: FontWeight.bold),),
                                  Expanded(
                                    child: TextFormField(
                                      controller: pickupController,
                                      decoration: InputDecoration(
                                          hintText: "optional",
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black,width: 5),
                                          )
                                      ),
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: Utils.getHeight(context)/95,),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade100,
                  border: Border.all(color: Colors.black),
                ),
                child: Center(child: Text("Find Driver/Vehicle",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),),
              ),
              SizedBox(height: 4,),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                ),
                child: ContainerRow(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
