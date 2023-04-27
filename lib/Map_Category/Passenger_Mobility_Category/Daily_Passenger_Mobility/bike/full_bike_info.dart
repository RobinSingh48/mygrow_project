import 'package:flutter/material.dart';
import 'package:mygrow_software_project/App_Manager/string_manager.dart';
import 'package:mygrow_software_project/Map_Category/Passenger_Mobility_Category/Daily_Passenger_Mobility/bike/photo_of_vehicle.dart';
import 'package:mygrow_software_project/Map_Category/Passenger_Mobility_Category/Daily_Passenger_Mobility/bike/registration_certificate_bike.dart';

import '../../../../App_Manager/media_query_utils.dart';
import 'aadhaar_card.dart';
import 'bike_platenumber.dart';
import 'driving_license.dart';

class FullBikeInfo extends StatefulWidget {
  const FullBikeInfo({Key? key}) : super(key: key);

  @override
  State<FullBikeInfo> createState() => _FullBikeInfoState();
}

class _FullBikeInfoState extends State<FullBikeInfo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Online Registration"),
        centerTitle: true,
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Utils.getHeight(context)/30,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/50),
                child: Container(
                  height: Utils.getHeight(context)/2.19,
                  width: Utils.getWidth(context),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/45),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NumberPlateScreen(),));
                          },
                          child: Container(

                              height: Utils.getHeight(context)/14,
                              width: Utils.getWidth(context),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Center(child: Text("Number Plate",style: TextStyle(fontSize: AppFontSize.s18,fontWeight: FontWeight.bold),)),
                                  Center(child: Icon(Icons.keyboard_arrow_right,size: Utils.getHeight(context)/15,)),
                                ],
                              ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 0.9,
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoOfVehicle(),));
                          },
                          child: Container(

                            height: Utils.getHeight(context)/14,
                            width: Utils.getWidth(context),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(child: Text("Photo of Your Vehicle",style: TextStyle(fontSize: AppFontSize.s18,fontWeight: FontWeight.bold),)),
                                Center(child: Icon(Icons.keyboard_arrow_right,size: Utils.getHeight(context)/15,)),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 0.9,
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RcSCreen(),));
                          },
                          child: Container(

                            height: Utils.getHeight(context)/14,
                            width: Utils.getWidth(context),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(child: Text("Registration Certificate(RC)",style: TextStyle(fontSize: AppFontSize.s18,fontWeight: FontWeight.bold),)),
                                Center(child: Icon(Icons.keyboard_arrow_right,size: Utils.getHeight(context)/15,)),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 0.9,
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AadhaarCardScreen(),));
                          },
                          child: Container(

                            height: Utils.getHeight(context)/14,
                            width: Utils.getWidth(context),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(child: Text("Aadhar Number",style: TextStyle(fontSize: AppFontSize.s18,fontWeight: FontWeight.bold),)),
                                Center(child: Icon(Icons.keyboard_arrow_right,size: Utils.getHeight(context)/15,)),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 0.9,
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DrivingLicense(),));
                          },
                          child: Container(

                            height: Utils.getHeight(context)/14,
                            width: Utils.getWidth(context),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(child: Text("Driving Licence",style: TextStyle(fontSize: AppFontSize.s18,fontWeight: FontWeight.bold),)),
                                Center(child: Icon(Icons.keyboard_arrow_right,size: Utils.getHeight(context)/15,)),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
