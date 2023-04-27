import 'package:flutter/material.dart';
import 'package:mygrow_software_project/Map_Category/Goods_Mobility_Category/Truck/photo_of_truck.dart';
import 'package:mygrow_software_project/Map_Category/Goods_Mobility_Category/Truck/registration_certificate_truck.dart';
import 'package:mygrow_software_project/Map_Category/Goods_Mobility_Category/Truck/truck_number_plate_screen.dart';


import '../../../App_Manager/media_query_utils.dart';
import '../../../App_Manager/string_manager.dart';
import 'aadhaar_card_truck.dart';
import 'driving_license_truck.dart';

class TruckFullInfo extends StatefulWidget {
  const TruckFullInfo({Key? key}) : super(key: key);

  @override
  State<TruckFullInfo> createState() => _TruckFullInfoState();
}

class _TruckFullInfoState extends State<TruckFullInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Online Registration Truck Services"),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TruckNumberPlateScreen(),));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoOfTruck(),));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RcTruckScreen(),));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AadhaarCardScreenTruck(),));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DrivingLicenseTruck(),));
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
