import 'package:flutter/material.dart';
import 'package:mygrow_software_project/App_Manager/string_manager.dart';
import 'package:mygrow_software_project/Map_Category/Passenger_Mobility_Category/Daily_Passenger_Mobility/car/photo_of_car.dart';
import 'package:mygrow_software_project/Map_Category/Passenger_Mobility_Category/Daily_Passenger_Mobility/car/registration_certificate_car.dart';
import '../../../../App_Manager/media_query_utils.dart';
import 'aadhaar_card_car.dart';
import 'car_platenumber.dart';
import 'driving_license_car.dart';

class FullCarInfo extends StatefulWidget {
  const FullCarInfo({Key? key}) : super(key: key);

  @override
  State<FullCarInfo> createState() => _FullCarInfo();
}

class _FullCarInfo extends State<FullCarInfo> {
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CarNumberPlateScreen(),));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoOfCar(),));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RcCarScreen(),));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AadhaarCardScreenCar(),));
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DrivingLicenseCar(),));
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
