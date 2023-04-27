import 'package:flutter/material.dart';
import 'package:mygrow_software_project/Map_Category/Crane_Service_Category/company_details_crane_services.dart';
import 'package:mygrow_software_project/Map_Category/Crane_Service_Category/crane_number_plate_screen.dart';
import 'package:mygrow_software_project/Map_Category/Crane_Service_Category/driving_license_crane.dart';
import 'package:mygrow_software_project/Map_Category/Crane_Service_Category/photo_of_crane.dart';
import 'package:mygrow_software_project/Map_Category/Crane_Service_Category/registration_certificate_crane.dart';

import '../../App_Manager/media_query_utils.dart';
import '../../App_Manager/string_manager.dart';
import 'aadhaar_card_crane.dart';

class FullCraneInfo extends StatefulWidget {
  const FullCraneInfo({Key? key}) : super(key: key);

  @override
  State<FullCraneInfo> createState() => _FullCraneInfoState();
}

class _FullCraneInfoState extends State<FullCraneInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Online Registration Crane Services"),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CraneNumberPlateScreen(),));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoOfCrane(),));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RcCraneScreen(),));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AadhaarCardScreenCrane(),));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DrivingLicenseCrane(),));
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
              ),
              ElevatedButton(onPressed: (){
                setState(() {

                });
                Navigator.push(context, MaterialPageRoute(builder: (context) => CompanyDetailsCraneService(),));
              }, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
